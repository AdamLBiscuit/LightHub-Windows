# LightHub Windows 1.0.3 — RAW et débruitage local

- Correction du rendu trop sombre de certains DNG / Apple ProRAW : le rendu tonal intégré est activé par défaut pour les nouvelles importations DNG.
- Option de rendu tonal clarifiée dans Développement. Pour un DNG déjà importé, activez « Camera tonal rendering (recommended) » ; les réglages existants sont conservés.
- Débruitage IA PMRID intégré et sélectionné automatiquement, entièrement local, sans compte ni téléchargement supplémentaire.
- Modèle et poids officiels Apache-2.0 inclus avec leur licence et leurs crédits.

Le débruitage IA prend en charge les RAW Bayer. Les JPEG, X-Trans et DNG déjà dématricés / Apple ProRAW ne sont pas pris en charge par ce modèle. Traitement sur processeur : environ trois minutes sur le RAW Sony testé, selon la machine et la résolution. Le résultat est mis en cache.

Validation : comparaison avec le modèle officiel, tests de bruit et de luminosité, export d’un RAW Sony et contrôle du rendu d’un DNG réel. La qualité reste à évaluer sur davantage de boîtiers.

Windows x64. Version technique 1.0.3.0, compatible avec la mise à jour intégrée. Installateur non signé.

# LightHub Windows 1.0.2 — Optiques et signature

- Vignette simplifiée : suppression des trois modes de la barre, réglages existants conservés.
- Section Signature et filigrane dans l’export : texte ou logo, placement, taille et opacité.
- Base de calibration Lensfun intégrée pour les RAW compatibles, utilisable hors ligne.
- Recherche de profil accessible pour les RAW déjà présents dans le catalogue.
- Correction automatique désactivée lorsqu’aucun profil compatible n’est disponible ; corrections manuelles toujours accessibles.
- Message plus clair lorsque le modèle de débruitage IA est absent. Le débruitage IA intégré reste indisponible sans modèle compatible ; cette version ne prétend pas le réparer.

Les profils ne couvrent pas tous les objectifs et ne sont pas appliqués automatiquement aux JPEG. Données Lensfun CC BY-SA 3.0, licence et crédits inclus. Aucun code Lensfun ajouté.

Windows x64. Version technique 1.0.2.0. Installateur non signé ; autres limites de la 1.0.1 inchangées.

# LightHub Windows 1.0.1 — Noir et champagne

- Palette plus profonde et plus chaude, contours champagne et curseurs légèrement en relief.
- Accueil personnalisé avec les quatre dernières photos retouchées du catalogue.
- Aperçus des retouches et accès direct pour reprendre une édition.
- Les quatre photos d’essai restent disponibles en l’absence de retouches récentes.
- Tri et exclusions vérifiés ; rendu de l’accueil contrôlé dans l’application.

Windows x64. Version technique 1.0.1.0, compatible avec l’auto-update. Les limites connues de la 1.0.0 restent applicables.


# LightHub Windows 1.0.0 — Un accueil plus soigné

- Feed repensé avec visuels des publications, cartes arrondies et accents champagne.
- Titres plus lisibles, date discrète et résumé mieux hiérarchisé.
- Cartes entièrement cliquables pour ouvrir les articles.
- Largeur des cartes adaptée au nombre de publications, avec défilement sur les espaces étroits.
- Chargement des images en arrière-plan ; les articles restent accessibles sans image.
- Interface disponible en anglais et en français.

Cette publication porte le numéro 1.0.0. Le tag et l’installateur utilisent **1.0.0.0** pour rester compatibles avec l’auto-update des versions précédentes.

Windows x64. Installateur non signé ; les limites connues restent documentées dans le README, notamment la notification NVIDIA. Le numéro 1.0.0 ne modifie pas ces limites.

Téléchargez **LightHub-Setup-1.0.0.0.exe** ou utilisez la recherche de mises à jour dans LightHub.

# LightHub Windows 0.9.1.14 — Actualités dans l’application

- Intégration du feed officiel getlighthub.com à la page d’accueil.
- Affichage des trois dernières publications : date, titre et résumé.
- Ouverture des articles complets et du feed dans le navigateur.
- Chargement en arrière-plan et actualisation périodique sans bloquer l’interface.
- Interface adaptée à la langue choisie, anglais ou français.
- Message de disponibilité lorsque le site est inaccessible.

Chargement réel et rendu visuel vérifiés dans LightHub. Préversion Windows x64 ; les autres fonctionnalités et limites de la version 0.9.1.13 restent inchangées.

Téléchargez **LightHub-Setup-0.9.1.14.exe** ou utilisez la recherche de mises à jour dans LightHub.

# LightHub Windows 0.9.1.13 — English by default

- English is now the default language for new installations.
- Existing language preferences are preserved. French remains available in Settings → General → Language.
- LightHub’s home screen, catalog menus, settings, editing toolbar and update dialogs now follow the selected language.
- Language switching and preference persistence verified, with visual checks in English and French.

Préversion Windows x64. Les fonctionnalités et limites de la version 0.9.1.12 restent inchangées.

Téléchargez **LightHub-Setup-0.9.1.13.exe** ou utilisez la recherche de mises à jour dans LightHub.

# LightHub Windows 0.9.1.12 — Mise à jour intégrée

- Recherche automatique des mises à jour au démarrage, avec proposition directement dans LightHub.
- Recherche manuelle depuis le menu ⋯ ou le raccourci du menu Démarrer.
- Téléchargement natif avec progression et annulation, sans fenêtre CMD.
- Vérification de la provenance, de la taille et du SHA-256 avant installation.
- Après téléchargement, fermeture propre de LightHub ; l’installateur attend la fin du processus. Les opérations en cours ou les problèmes d’enregistrement bloquent cette fermeture.
- Option « Lancer LightHub » sur la dernière page de l’installateur ; aucun lancement lors d’une installation silencieuse.
- Raccourcis utilisant un lanceur sans console.

Cette version introduit le nouveau parcours : la mise à niveau depuis une ancienne version utilise encore son ancien système. Les suivantes seront proposées dans l’application.

Préversion Windows x64. Les autres fonctionnalités et limites de la 0.9.1.11 restent inchangées.

# LightHub Windows 0.9.1.11 — Nouveau logo

- Nouveau logo officiel LightHub dans l’interface et l’icône de l’application.
- Icônes Windows actualisées pour la barre des tâches, les raccourcis et l’installateur, avec plusieurs résolutions pour les différents écrans.
- Les fichiers PNG et SVG fournis sont conservés sans modification ; l’icône Windows est dérivée du PNG.
- MobileSAM reste inclus et fonctionne hors ligne, sans compte ni téléchargement de modèle.

Préversion Windows x64. Les fonctionnalités et limites de la version 0.9.1.10 restent inchangées. Windows peut conserver temporairement une ancienne icône en cache sur un raccourci épinglé.

Téléchargez **LightHub-Setup-0.9.1.11.exe** ou utilisez « Rechercher les mises à jour » dans le menu Démarrer.


# LightHub Windows 0.9.1.10 — Masques locaux avec MobileSAM

## Nouveautés

- Sélection d’objet native avec MobileSAM, entièrement locale : aucun compte, téléchargement de modèle ou service IA à installer.
- Modèle officiel inclus dans l’installateur, vérifié par SHA-256. Licence Apache 2.0 et provenance fournies avec l’application.
- Panneau Masques harmonisé : six outils dans une grille régulière, icônes et espacements revus.
- Cliquez pour inclure une zone, utilisez Alt-clic pour exclure et Inverser pour sélectionner l’arrière-plan.
- Conservation du pinceau, des dégradés linéaire/radial et des plages de couleur/luminance.
- Retrait des mentions et du parcours d’installation SAM 3 de l’interface Windows.
- Retrait des options Décrire/Sujet/Ciel/Arrière-plan automatiques, que ce modèle ne prend pas en charge. Les masques déjà enregistrés restent utilisables.

## Vérifications et limites

Tests ciblés du moteur et de l’interface réussis. Inférence réelle vérifiée sur les quatre photos d’essai, avec inclusion, exclusion, inversion et ajustements. Analyse initiale mesurée à environ 3 à 5 secondes sur le PC de test ; les clics suivants réutilisent l’analyse. La qualité dépend du sujet et peut nécessiter plusieurs points.

Installation silencieuse, réinstallation et désinstallation validées sur un package isolé, avec contrôle du modèle inclus et préservation des données utilisateur. Préversion Windows x64 non signée. Les limites déjà documentées, dont la notification NVIDIA, restent inchangées.

## Installation

Téléchargez **LightHub-Setup-0.9.1.10.exe**, ou lancez « Rechercher les mises à jour » depuis le menu Démarrer. Le raccourci LightHub détecte aussi cette préversion via l’auto-update.


# LightHub Windows 0.9.1.9

## Communauté Discord

- Ajout de « Rejoindre le Discord LightHub » dans le menu ⋯, disponible depuis l’accueil et l’éditeur.
- Ajout du lien dans Réglages → À propos.
- Les liens Discord de l’application ouvrent désormais la communauté LightHub : https://discord.gg/KhTMd2XsTe.

## Installation

Lancez LightHub via son raccourci ou utilisez « Rechercher les mises à jour » dans le menu Démarrer. L’installateur **LightHub-Setup-0.9.1.9.exe** est également disponible ci-dessous.

Préversion Windows x64, basée sur LightCraft 0.16.0. Les limites de la version 0.9.1.8 restent inchangées, notamment le test de taille TIFF ZIP et la notification NVIDIA.


# LightHub Windows 0.9.1.8

## Nouvelle base LightCraft 0.16.0

- Mise à jour du moteur depuis LightCraft 0.15.0 vers 0.16.0 (révision c4fd54e0).
- Corrections d’import RAW/JPEG, notamment pour certains panoramas Samsung et fichiers endommagés.
- Améliorations de la gestion des catalogues et des imports en attente.
- Les dimensions d’export saisies sont conservées au pixel près.
- Histogramme repliable fixé au-dessus des réglages pendant le défilement et accès HDR dans l’éditeur.
- Conservation de l’interface LightHub, de la bibliothèque modernisée, du logo, des photos d’essai et des réglages.
- Conservation de la saisie numérique corrigée et de la sélection champagne des photos.

## Validation et limites

Compilation Windows et contrôles ciblés des catalogues, albums, quatre photos d’essai, presets et interface réussis. Les 13 tests de saisie numérique passent.

La suite du moteur compte 1 442 tests réussis et un échec documenté : sur une image bruitée de test, un TIFF ZIP peut être légèrement plus volumineux que le même TIFF non compressé (+2,9 %). Le test et l’encodeur concernés sont identiques à ceux de l’amont. La validation globale n’est donc pas entièrement verte.

Préversion Windows x64. Le cycle complet d’installation par auto-update reste à valider. La notification NVIDIA reste non résolue.

## Installation

Lancez LightHub via son raccourci ou utilisez « Rechercher les mises à jour » dans le menu Démarrer. Vous pouvez aussi télécharger **LightHub-Setup-0.9.1.8.exe** ci-dessous.


# LightHub Windows 0.9.1.7

## Bibliothèque modernisée

- Navigation plus aérée, avec des lignes plus hautes et des sélections arrondies aux accents champagne.
- Nom du catalogue mieux mis en valeur, titres de sections plus discrets et séparations allégées.
- Dossiers, emplacement sur l’ordinateur, dates et mots-clés repliés lors de la première ouverture de la bibliothèque après la mise à jour. Vos choix d’ouverture sont ensuite mémorisés.
- Sélection des photos soulignée par un contour champagne fin, en remplacement du cadre blanc épais.

Vos photos, albums et catalogues sont conservés.

## Installation

Lancez LightHub via son raccourci ou utilisez « Rechercher les mises à jour » dans le menu Démarrer. Vous pouvez aussi télécharger **LightHub-Setup-0.9.1.7.exe** ci-dessous.

Préversion Windows x64. Le cycle complet d’installation par auto-update reste à valider. La notification NVIDIA reste non résolue.


# LightHub Windows 0.9.1.6

- Réglages réorganisés en huit rubriques, avec navigation fixe et menus déroulants.
- Menu Catalogue : création, ouverture, gestion des catalogues et création d’albums.
- Bibliothèque sur l’accueil : albums, dossiers et accès aux photos récentes.
- Le catalogue choisi est désormais conservé au lancement ; le choix du catalogue au démarrage est respecté.
- L’ouverture refuse les dossiers qui ne contiennent pas de catalogue, sans remplacer la session courante.
- Préréglages masqués sur l’accueil, y compris après restauration d’une disposition flottante.
- Logo LH et identité Windows harmonisés pour l’application et les raccourcis.
- Dossier d’export par défaut renommé LightHub Exports ; les destinations personnalisées sont conservées.
- Champs numériques des curseurs contenus dans leur ligne, sans chevaucher la piste.
- Liens vers getlighthub.com et l’assistance officielle.

Les sauvegardes de catalogues restent manuelles. Cette version ne déplace pas les photos ni les anciens exports.

## Installation

Depuis LightHub 0.9.1.3 ou ultérieur, utilisez le raccourci LightHub ou « Rechercher les mises à jour » dans le menu Démarrer. Vous pouvez aussi installer **LightHub-Setup-0.9.1.6.exe** directement.

Préversion Windows x64. Compilation et tests ciblés des catalogues, photos d’essai et champs numériques réussis (13 tests de saisie). L’installation complète via auto-update reste à valider. La notification NVIDIA reste non résolue.


## LightHub Windows 0.9.1.5

### Panneaux plus sobres
- Suppression de la petite barre supplémentaire au-dessus des panneaux et des titres répétés.
- Le panneau de réglages affiche directement « Développement » ou « Recadrer » selon l’outil actif.
- Espacements et séparations harmonisés, commandes de recadrage plus aérées.
- Un glisser-déposer raté sur une zone vide ne détache plus accidentellement le panneau. Le détachement volontaire reste accessible via le menu du panneau ou Ctrl au moment du dépôt.
- Ajout de « Réorganiser les panneaux » dans le menu ⋯ pour rétablir leur disposition.

### Accueil corrigé
- Les préréglages et les outils se ferment au retour à l’accueil, y compris lorsqu’ils étaient flottants.
- Suppression de l’accès aux préréglages sur l’accueil ; ils restent disponibles dans l’éditeur.
- La grille des photos retrouve toute la largeur de l’accueil.

### Vérifications
Compilation Windows et contrôles ciblés de détachement, regroupement, fermeture, réouverture, remise en place et retour à l’accueil sans panneau flottant.

### Installation
Depuis une version disposant de l’auto-update (0.9.1.3 ou ultérieure), lancez LightHub via son raccourci ou utilisez « Rechercher les mises à jour » dans le menu Démarrer. Sinon, téléchargez **LightHub-Setup-0.9.1.5.exe** ci-dessous.

Préversion Windows x64. Installateur non signé. Le cycle complet de mise à niveau reste à valider sur une installation existante. La notification NVIDIA reste non résolue.


