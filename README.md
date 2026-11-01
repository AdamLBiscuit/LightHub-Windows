# LightHub pour Windows

[Site officiel](https://getlighthub.com/) · [Discord](https://discord.gg/KhTMd2XsTe) · [Instagram](https://www.instagram.com/getlighthub/) · [YouTube](https://www.youtube.com/@GetLightHub)

Atelier de retouche photo non destructive, avec une interface anthracite et champagne, en anglais par défaut avec français disponible et le moteur Rust LightCraft.

Ce dépôt public distribue uniquement les versions Windows. Les sources de développement et la version iOS sont conservées dans un dépôt privé distinct.

## Télécharger

Consultez les [versions Windows](https://github.com/AdamLBiscuit/LightHub-Windows/releases).

La préversion actuelle est **0.9.1.14**, pour Windows x64. Téléchargez `LightHub-Setup-0.9.1.14.exe`, puis suivez l’assistant en français. L’installation se fait pour votre compte utilisateur ; un raccourci Bureau est facultatif.

## Utilisation

- Consultez les dernières actualités du [feed officiel](https://getlighthub.com/feed) directement sur l’accueil.

- Choisissez une des quatre photos d’essai intégrées ou importez une photo depuis le nouvel accueil.
- Retrouvez les mêmes photos d’essai dans le panneau des presets.
- Gérez vos catalogues depuis le menu Catalogue et classez vos photos dans les albums et dossiers de la bibliothèque.
- Double-cliquez sur une image pour ouvrir les réglages.
- Dans Masques, utilisez Objet pour sélectionner par clic, sans compte ni téléchargement de modèle. Alt-clic exclut une zone.
- Utilisez Avant/Après pour comparer et Exporter pour produire une copie.

Les données de cette préversion sont conservées dans `%LOCALAPPDATA%\LightHub\Preview`, séparément des fichiers du programme. La désinstallation ne supprime pas ce dossier.

## État de la préversion

Installation, réinstallation silencieuses et désinstallation ont été validées sur un package de contrôle isolé utilisant les mêmes fichiers du programme. Le build reste non signé. Le binaire signé définitif devra être vérifié dans un environnement Windows propre avant soumission au Microsoft Store. Consultez le [guide de validation Microsoft Store](MICROSOFT-STORE.md). L’import, le rendu et l’export ont fait l’objet de vérifications ciblées ; cette préversion n’est pas une version stable.

Le lanceur utilise OpenGL. Depuis 0.9.1.12, les mises à jour sont proposées dans LightHub, préversions comprises, avec progression du téléchargement sans console et vérification SHA-256. LightHub se ferme après téléchargement ; les opérations en cours bloquent la fermeture. L’installateur propose de relancer l’application. La première mise à niveau depuis une ancienne version utilise encore son ancien système. La notification NVIDIA reste non résolue.

## Communauté

Retrouvez LightHub sur ses canaux officiels :

- [Site web](https://getlighthub.com/) — présentation de LightHub.
- [Discord](https://discord.gg/KhTMd2XsTe) — communauté, échanges et retours.
- [Instagram](https://www.instagram.com/getlighthub/) — actualités et publications.
- [YouTube](https://www.youtube.com/@GetLightHub) — vidéos LightHub.

## Retours

Utilisez les [issues](https://github.com/AdamLBiscuit/LightHub-Windows/issues) pour décrire un problème, en précisant Windows, la carte graphique et la version de LightHub. Évitez de joindre des photos personnelles ou des journaux contenant des informations privées.

## Crédits et licences

LightHub utilise le moteur [LightCraft](https://github.com/storytold/lightcraft). Les licences et avis des composants distribués figurent dans `licences/` et dans l’installateur. Le nom et le logo LightHub ne sont pas couverts par les licences générales du code. Ce dépôt de distribution ne publie pas les sources privées.
