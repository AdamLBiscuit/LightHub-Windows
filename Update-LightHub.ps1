param([switch]$Manual)
$ErrorActionPreference = 'Stop'
$mutex = [Threading.Mutex]::new($false, 'Local\LightHubUpdateCheck')
$locked = $false
try {
    $locked = $mutex.WaitOne(0)
    if (-not $locked) { return }
    Add-Type -AssemblyName System.Windows.Forms
    $installed = [version](Get-Content -LiteralPath (Join-Path $PSScriptRoot 'version.txt') -Raw).Trim()
    $headers = @{ 'User-Agent' = 'LightHub-Windows-Updater'; Accept = 'application/vnd.github+json' }
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $releases = Invoke-RestMethod -Uri 'https://api.github.com/repos/AdamLBiscuit/LightHub-Windows/releases?per_page=100' -Headers $headers -TimeoutSec 20
    $candidates = @($releases | Where-Object { -not $_.draft -and $_.tag_name -match '^v\d+\.\d+\.\d+\.\d+$' } | Sort-Object { [version]$_.tag_name.Substring(1) } -Descending)
    if ($candidates.Count -eq 0) { throw 'Aucune version Windows disponible.' }
    $release = $candidates[0]
    $version = [version]$release.tag_name.Substring(1)
    if ($version -le $installed) {
        if ($Manual) { [Windows.Forms.MessageBox]::Show('LightHub est à jour.', 'LightHub') | Out-Null }
        return
    }
    $name = "LightHub-Setup-$version.exe"
    $asset = @($release.assets | Where-Object name -eq $name)
    if ($asset.Count -ne 1) { throw 'Installateur manquant ou ambigu.' }
    $url = "https://github.com/AdamLBiscuit/LightHub-Windows/releases/download/v$version/$name"
    if ($asset[0].browser_download_url -cne $url) { throw 'Adresse de téléchargement non autorisée.' }
    $digest = [string]$asset[0].digest
    if ($digest -notmatch '^sha256:([a-fA-F0-9]{64})$') { throw 'Empreinte GitHub SHA-256 manquante.' }
    $expected = $Matches[1]
    $answer = [Windows.Forms.MessageBox]::Show("LightHub $version est disponible.`n`nTélécharger et lancer l installation ? Fermez LightHub normalement avant de poursuivre dans l installateur. Vos photos et réglages seront conservés.", 'Mise à jour LightHub', 'YesNo', 'Information')
    if ($answer -ne 'Yes') { return }
    $cache = Join-Path $env:LOCALAPPDATA ('LightHub\Updates\' + [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $cache -Force | Out-Null
    $target = Join-Path $cache $name
    Invoke-WebRequest -Uri $url -Headers $headers -OutFile $target -UseBasicParsing -TimeoutSec 300
    if ((Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash -ine $expected) { throw 'Le contrôle d intégrité a échoué. Installation annulée.' }
    if ((Get-Item -LiteralPath $target).Length -ne $asset[0].size) { throw 'Taille du téléchargement incorrecte.' }
    Start-Process -FilePath $target
} catch {
    $logFolder = Join-Path $env:LOCALAPPDATA 'LightHub\Updates'
    New-Item -ItemType Directory -Force -Path $logFolder | Out-Null
    Add-Content -LiteralPath (Join-Path $logFolder 'update.log') -Value "$(Get-Date -Format o) $($_.Exception.Message)"
    if ($Manual) { [Windows.Forms.MessageBox]::Show("Impossible de vérifier la mise à jour : $($_.Exception.Message)", 'LightHub') | Out-Null }
} finally {
    if ($locked) { $mutex.ReleaseMutex() }
    $mutex.Dispose()
}
