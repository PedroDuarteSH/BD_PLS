/*Create Table Erros*/
CREATE TABLE erros(
    sql_state varchar(20),
    message text,
    data timestamp
);


/*Create procedure*/
create or replace procedure f10_ex6(p_livro livros.id_livro%type)
language plpgsql
as $$
declare
    v_id_livro livros.id_livro%type;
    v_id_autor livros.id_autor%type;
begin
    select id_livro,id_autor
    into strict v_id_livro,v_id_autor
    from livros
    where id_livro=p_livro;
    if v_id_autor=17 then
        insert into autores (id_autor,nome,morada,sexo,nacionalidade,genero)
        values(80,'Luís Moreno Campos','Lisboa','M','Portuguesa', 'Informática'); 
        update livros set id_autor=80 where id_livro=v_id_livro;
    end if;

exception
    when unique_violation then
        insert into erros(sql_state, message, data)
        values(sqlstate,sqlerrm,current_date);
        update livros set id_autor=80 where id_livro=v_id_livro;
    when no_data_found then
        insert into erros(sql_state, message, data)
        values(sqlstate,sqlerrm,current_date);
    when others then
        insert into erros(sql_state, message, data)
        values(sqlstate,sqlerrm,current_date);
end;
$$;

