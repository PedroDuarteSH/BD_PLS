do $$
declare
    -- Get the list of items
    c1 cursor for
    select *
    from cust,dist
    where cust.c_d_id=dist.d_id
    and cust.c_w_id=dist.d_w_id and dist.d_name = 'Coimbra';
begin
    for r in c1
    loop
        insert into temp values(r.c_id);

        -- Do other things with the
        -- customers associated to the
        -- district of Coimbra

        -- NOTE: the only additional field
        -- needed is C_ID
    end loop;
end;
$$;