-- Projetos novos do Supabase não liberam as tabelas para a API automaticamente.
-- A segurança continua nas regras de linha (RLS) de cada tabela.
grant usage on schema public to anon, authenticated;
grant select, insert, update, delete on all tables in schema public to authenticated;
grant usage, select on all sequences in schema public to authenticated;

-- A função criar-servidor usa a chave de serviço (service_role) e precisa ler os perfis.
grant usage on schema public to service_role;
grant all on all tables in schema public to service_role;
grant all on all sequences in schema public to service_role;
grant execute on all functions in schema public to service_role;
