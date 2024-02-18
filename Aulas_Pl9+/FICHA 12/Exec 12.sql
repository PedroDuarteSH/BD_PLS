select s_i_id
from stok
where NOT EXISTS
 (select ol_i_id from ordl);