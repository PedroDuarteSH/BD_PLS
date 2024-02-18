create or replace procedure ex3()
language plpgsql
as $$
declare
    livros_infor cursor for
    SELECT  autores.id_autor,  autores.nome 
    from autores;
    max_livros numeric;
    max_livros_genero numeric;
begin
    for a in livros_infor
    loop
        select count(*) into max_livros from livros where livros.id_autor =a.id_autor;
        Select max(count) into max_livros_genero 
        from (select count(*) from livros 
        where livros.id_autor = a.id_autor group by livros.genero) as a where count is not null;

        insert into temp(col1, col2, message)
        values(max_livros, max_livros_genero, split_part(a.nome,' ',  1));
    end loop;  
end;
$$;