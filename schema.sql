-- Kerfi liðsins. Taflan tekur bara við nýjum kerfum: engar breytingar og engum eytt.
create table if not exists public.kerfi (
  id          uuid primary key default gen_random_uuid(),
  name        text not null check (char_length(name) between 1 and 80),
  descr       text not null default '' check (char_length(descr) <= 200),
  players     jsonb not null check (jsonb_typeof(players) = 'array'),
  frames      jsonb not null check (jsonb_typeof(frames) = 'array' and jsonb_array_length(frames) between 1 and 40),
  based_on    text,
  created_at  timestamptz not null default now(),
  constraint kerfi_size check (octet_length(players::text) + octet_length(frames::text) < 200000)
);

alter table public.kerfi enable row level security;

create policy "Allir geta lesid kerfi" on public.kerfi
  for select to anon, authenticated using (true);

create policy "Allir geta baett vid kerfi" on public.kerfi
  for insert to anon, authenticated with check (true);

revoke update, delete, truncate on public.kerfi from anon, authenticated;

create index if not exists kerfi_created_at_idx on public.kerfi (created_at desc);
