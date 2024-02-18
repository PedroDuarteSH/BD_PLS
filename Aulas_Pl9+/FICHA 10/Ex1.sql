create or replace procedure ex1()
language plpgsql
as $$
declare
    livros_infor cursor for
    SELECT * from livros
    where genero = 'Informatica';
    count_pag500 livros.paginas%type;
    count_preco25 numeric;
    soma_preco livros.preco%type;
begin
    count_pag500 := 0;
    count_preco25 := 0;
    soma_preco := 0;
    for l in livros_infor
        loop
        if(l.paginas > 500) then
            count_pag500 := count_pag500 + 1;
        end if;
        if(l.preco > 25) then
            count_preco25 := count_preco25 + 1;
        end if;
        soma_preco := soma_preco + l.preco;
    end loop;
    insert into temp(col1, col2, message)
    values(count_preco25, count_pag500, 'Preço Total dos Livros de Informática=' || soma_preco);
    end;
$$;
