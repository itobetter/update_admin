select 
replace(imd.name, 'model','access') id,
replace(imd.name, 'model','access') "name",
imd.name "model_id:id",
'' "group_id:id",
1 "perm_read",
1 "perm_write",
1 "perm_create",
1 "perm_unlink"
from ir_model as im
join ir_model_data imd on imd.res_id=im.id
where module ilike 'insurance'
and imd.name ilike 'model%'
