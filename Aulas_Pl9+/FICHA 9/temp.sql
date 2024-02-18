CREATE TABLE temp(
    col1 numeric(10),
    col2 numeric(20),
    message varchar(60)
);


do $$
declare
    v varchar(10);
begin
    v = 'impar';
    For i in 1..10 loop
        insert into temp(col1, col2, message)
        values (i, i*100, 'col1 + ' || v);
        if(v = 'impar') then
            v = 'par';
        else
            v = 'impar';
        end if;
    end loop;
end;
$$;