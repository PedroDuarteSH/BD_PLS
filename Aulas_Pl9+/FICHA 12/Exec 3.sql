do $$
declare
 v_name cust.c_last%type;
begin
    for i in 1..3
    loop
        for j in 1..3000
        loop
        execute
        select c_last from cust
        where c_w_id=1
        and c_d_id=i and c_id=j
        into v_name;

        end loop;
    end loop;
end;
$$;

