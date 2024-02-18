create or replace procedure ex2()
language plpgsql
as $$
declare
    livros_infor cursor for
    SELECT livros.id_autor, nome, Count(livros) from livros, autores
    where livros.genero = 'Informatica' and livros.id_autor = autores.id_autor group by livros.id_autor, autores.nome;
begin
    for a in livros_infor
    loop
    insert into temp (col1, col2, message)
    values(a.id_autor, a.count, reverse(a.nome));
    end loop;
end;
$$;
