

create or replace procedure ex3(p_livro livros.id_livro%type) 
language plpgsql
as $$
declare 
	v_id_autor livros.id_autor%type;
begin
	select id_autor into v_id_autor
	from autores where id_autor = 80;
	if not found then
		insert into autores (id_autor, nome, morada, sexo, nacionalidade, genero)
		values (80, 'Luís Moreno Campos', 'Lisboa', 'M', 'Portuguesa', 'Informática');
	end if;

	select id_autor into v_id_autor
	from livros
	where livros.id_livro=p_livro;
	if (v_id_autor=17) then
		update livros set id_autor=80
		where id_livro=p_livro;
	end if;
end;
$$;