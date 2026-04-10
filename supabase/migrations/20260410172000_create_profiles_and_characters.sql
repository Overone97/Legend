create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  account_name text unique not null,
  created_at timestamptz not null default now()
);

create table if not exists public.characters (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(id) on delete cascade,
  name text not null,
  class text not null,
  level integer not null default 1,
  hp integer not null default 100,
  map_id text not null default 'training-ground',
  x integer not null default 0,
  y integer not null default 0,
  created_at timestamptz not null default now()
);

alter table public.profiles enable row level security;
alter table public.characters enable row level security;

create policy "Users can read their profile"
on public.profiles for select
using (auth.uid() = id);

create policy "Users can insert their profile"
on public.profiles for insert
with check (auth.uid() = id);

create policy "Users can update their profile"
on public.profiles for update
using (auth.uid() = id)
with check (auth.uid() = id);

create policy "Users can read their characters"
on public.characters for select
using (auth.uid() = user_id);

create policy "Users can insert their characters"
on public.characters for insert
with check (auth.uid() = user_id);

create policy "Users can update their characters"
on public.characters for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);
