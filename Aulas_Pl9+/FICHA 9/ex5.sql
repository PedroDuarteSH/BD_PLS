

create or replace procedure ex4(p_livro livros.id_livro%type) 
language plpgsql
as $$
declare 
	v_id_autor livros.id_autor%type;
begin
    select id_autor into v_id_autor
	from livros
	where livros.id_livro=p_livro;
    
    if preco < 25 and genero <> 'Aventura' then
        update livros set preco = preco * 1.1
        where id_livro=p_livro;
    end if;
    if preco >= 25 and genero <> 'Aventura' then
        update livros set preco = preco * 1.06
        where id_livro=p_livro;
    end if;
end;
$$;

