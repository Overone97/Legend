# Supabase setup — Legend

## Objectif

Brancher une vraie persistance comptes + personnages pour Legend.

## Tables

- `profiles`
  - `id`
  - `account_name`
  - `created_at`

- `characters`
  - `id`
  - `user_id`
  - `name`
  - `class`
  - `level`
  - `hp`
  - `map_id`
  - `x`
  - `y`
  - `created_at`

## Étapes

1. créer un projet Supabase
2. lier le projet avec le CLI
3. appliquer la migration :

```bash
supabase db push
```

4. activer Auth (email/password)
5. configurer les variables côté front quand on branchera la PR suivante

## Note

Cette PR pose la base SQL. La PR suivante branchera le menu compte/personnages sur Supabase pour remplacer le store local simulé.
