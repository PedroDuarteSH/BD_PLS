select distinct c_id,c_last,c_first
from cust where exists (Select * from ordr);

