//argument0 instancia/ser al cual se quiere equipar
var slotsOcupados;
slotsOcupados = ds_list_size(argument0.slots);
return (slotsOcupados<argument0.slotsActivos);
