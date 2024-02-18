create or replace procedure ex8(gen livros.genero%type)
language plpgsql
as $$
declare
    genero_livros cursor for
    select * from livros
    where genero = gen order by preco for update;
    soma livros.preco%type;
begin
    for r in genero_livros loop
        select sum(preco) into soma
        from livros where genero = gen;
        if soma < 150 then
            update livros set preco=preco*1.1 where current of genero_livros;
        else
            exit;
        end if;
    end loop;
end;
$$;