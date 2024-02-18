select c_last,c_first
from cust
except
select c_last,c_first
from cust
where c_id in (select o_c_id from ordr);