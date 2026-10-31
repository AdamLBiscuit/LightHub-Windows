# MobileSAM in LightHub Windows

## Provenance and redistribution

Official repository: https://github.com/ChaoningZhang/MobileSAM

Pinned revision: `f706ad9c4eb7f219c00d9050e46328518ffb65d2`.

The official `weights/mobile_sam.pt` file resides in the repository covered by its Apache-2.0
LICENSE. No separate weight license or restriction was present in the weight directory at this
revision. This permits commercial redistribution, subject to Apache-2.0 attribution and notice
requirements. We distribute the unchanged official checkpoint and its full license, not a
third-party conversion. Preserve upstream copyright notices. This is a record of the published
terms, not an independent warranty concerning the training data.

- Weights: https://raw.githubusercontent.com/ChaoningZhang/MobileSAM/f706ad9c4eb7f219c00d9050e46328518ffb65d2/weights/mobile_sam.pt
- License: https://raw.githubusercontent.com/ChaoningZhang/MobileSAM/f706ad9c4eb7f219c00d9050e46328518ffb65d2/LICENSE
- Size: 40,728,226 bytes
- SHA-256: `6dbb90523a35330fedd7f1d3dfc66f995213d81b29a5ca8108dbcdd4e37d6c2f`

## Build and distribution

Run `Prepare-MobileSAM.ps1` before building the installer. This developer-only step verifies the
pinned checkpoint and writes it under ignored `target/models/mobilesam`. The installer packages
it at `Models/MobileSAM/mobile_sam.pt`, with the license and this provenance notice in `Licences`.
The portable preview must contain the same model directory. End users never run this script.
The app verifies model length and SHA-256 before loading. Missing/corrupt files produce a repair
message; there is no account, downloader, Python runtime or remote inference dependency.

Native inference uses Candle 0.9.2 (MIT/Apache-2.0), CPU, on a background worker. Image embeddings
are reused for subsequent clicks. Aspect ratio is preserved and model padding is removed before
saving the existing 288-square normalized logit format, preserving rendering/export compatibility.

## Mask interface

Object selects from include/exclude points. Alt-click excludes, and Invert selects the background.
Brush, linear, radial, color and luminance remain available. MobileSAM does not accept text or
recognize semantic categories, so Describe/Subject/Sky/Background tiles are omitted on Windows.
Existing saved masks remain readable. This change does not modify the iOS implementation.

## Validation

The official checkpoint was loaded and evaluated natively on the supplied photos, independently
of any account or remote service. Targeted adapter tests cover landscape/portrait padding;
engine tests cover missing/corrupt models and download rejection. Installer validation checks
bundled files/hash, silent installation, reinstallation and uninstallation. Timing and screenshot
artifacts are retained in ignored `target/windows-qa` during local validation.
