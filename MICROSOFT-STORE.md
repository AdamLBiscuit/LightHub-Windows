# Installation silencieuse et préparation Microsoft Store (EXE)

## Paramètres Partner Center

Arguments d’installation silencieuse :

```text
/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /NORESTARTAPPLICATIONS
```

Code de succès : `0`. Installation par utilisateur (`PrivilegesRequired=lowest`), sans lancement automatique de LightHub ni de l’auto-update pendant le setup.

Désinstallation silencieuse depuis le dossier installé :

```text
unins000.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
```

Inno Setup enregistre les commandes `UninstallString` et `QuietUninstallString` dans l’entrée Windows de désinstallation. Ajouter `/LOG="chemin-absolu.log"` pour diagnostiquer une installation ou désinstallation.

## Installateur autonome

L’EXE embarque l’application, l’icône, les photos d’essai, le lanceur, le script de mise à jour et les licences. Le script Inno ne contient aucune étape de téléchargement ni lancement externe. L’auto-update ne s’exécute qu’au lancement du raccourci par l’utilisateur. Ce constat vient de l’inspection du package : le réseau n’a pas été coupé pendant le test.

## Vérification effectuée le 2026-10-31

Windows local, contenu applicatif 0.9.1.9, même script d’installation compilé avec `/DValidationBuild`. Cette option isole uniquement le nom du produit, son identifiant, son emplacement/groupe par défaut et le nom du fichier de sortie pour ne pas toucher à l’installation réelle.

Résultats :
- installation silencieuse : code 0 ; fichiers embarqués présents ;
- réinstallation silencieuse au même emplacement : code 0 ;
- commandes de désinstallation normale et silencieuse enregistrées ;
- désinstallation silencieuse : code 0 ; application, raccourci et entrée de registre retirés ;
- fichier utilisateur témoin préservé.

Les photos et catalogues de l’utilisateur ne font l’objet d’aucune suppression récursive. La procédure réutilisable est `packaging/lighthub/Test-Installer.ps1` dans le dépôt de développement. Elle refuse un installateur de production et conserve ses journaux sous `%TEMP%\LightHub-Installer-QA-*`.

## Avant soumission définitive

- Signer l’installateur, le désinstalleur et les fichiers PE embarqués avec un certificat de signature accepté par Microsoft. Les exécutables actuels sont **non signés** ; ce build n’est donc pas prêt pour la certification.
- Refaire la validation du binaire de production signé dans une machine Windows propre, y compris fonctionnement hors connexion, lancement et désinstallation.
- Fournir une URL HTTPS directe et versionnée. Ne jamais remplacer un fichier déjà soumis sous la même URL ; une nouvelle construction à distribuer reçoit une nouvelle version et une nouvelle URL.
- Le candidat local `LightHub-Store-Candidate-0.9.1.9.exe` est un artefact de préparation non publié. La release publique 0.9.1.9 n’est pas remplacée.

Sources :
- https://learn.microsoft.com/en-us/windows/apps/publish/publish-your-app/msi/app-package-requirements
- https://learn.microsoft.com/en-us/windows/apps/publish/publish-your-app/msi/manual-package-validation
- https://jrsoftware.org/ishelp/topic_setupcmdline.htm
- https://jrsoftware.org/ishelp/topic_uninstcmdline.htm
