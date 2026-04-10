# Architecture initiale — Legend

## But

Garder un MVP ultra simple, mais préparer une vraie montée en gamme.

## Structure actuelle

- `index.html`
  - HTML de base
  - styles CSS
  - logique JavaScript
  - rendu canvas

## Découpage logique actuel

Même si tout vit dans un seul fichier, le code est déjà séparé conceptuellement en :

- `Skill`
- `Entity`
- `Grid`
- `Game`

## Découpage cible à moyen terme

Quand le prototype grossira, on pourra découper vers :

- `src/core/`
  - game loop
  - turn manager
  - rules
- `src/entities/`
  - player
  - enemy
  - classes
- `src/combat/`
  - skills
  - effects
  - AI
- `src/rendering/`
  - canvas renderer
  - UI overlay
- `src/data/`
  - classes
  - maps
  - enemies
- `src/net/`
  - auth
  - sync
  - multiplayer

## Principe

On ne sur-architecture pas trop tôt.

Le prototype doit rester :
- lisible,
- modifiable vite,
- testable manuellement,
- assez propre pour évoluer sans repartir de zéro.
