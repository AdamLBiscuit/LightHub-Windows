# LightHub pour Windows

Atelier de retouche photo non destructive, avec une interface française anthracite et champagne et le moteur Rust LightCraft.

Ce dépôt public distribue uniquement les versions Windows. Les sources de développement et la version iOS sont conservées dans un dépôt privé distinct.

## Télécharger

Consultez les [versions Windows](https://github.com/AdamLBiscuit/LightHub-Windows/releases).

La préversion actuelle est **0.9.1.2**, pour Windows x64. Téléchargez `LightHub-Setup-0.9.1.2.exe`, puis suivez l’assistant en français. L’installation se fait pour votre compte utilisateur ; un raccourci Bureau est facultatif.

## Utilisation

- Importez une photo depuis l’accueil.
- Double-cliquez sur une image pour ouvrir les réglages.
- Utilisez Avant/Après pour comparer et Exporter pour produire une copie.

Les données de cette préversion sont conservées dans `%LOCALAPPDATA%\LightHub\Preview`, séparément des fichiers du programme. La désinstallation ne supprime pas ce dossier.

## État de la préversion

L’installateur a été compilé, mais son installation complète n’a pas encore été validée. Il n’est pas signé numériquement. L’import, le rendu et l’export ont fait l’objet de vérifications ciblées ; cette préversion n’est pas une version stable.

Le lanceur utilise OpenGL. L’overlay NVIDIA peut encore afficher sa notification : ce point n’est pas résolu. La mise à jour automatique n’est pas encore activée ; les mises à jour se téléchargent manuellement depuis les Releases.

## Retours

Utilisez les [issues](https://github.com/AdamLBiscuit/LightHub-Windows/issues) pour décrire un problème, en précisant Windows, la carte graphique et la version de LightHub. Évitez de joindre des photos personnelles ou des journaux contenant des informations privées.

## Crédits et licences

LightHub utilise le moteur [LightCraft](https://github.com/storytold/lightcraft). Les licences et avis des composants distribués figurent dans `licences/` et dans l’installateur. Le nom et le logo LightHub ne sont pas couverts par les licences générales du code. Ce dépôt de distribution ne publie pas les sources privées.
