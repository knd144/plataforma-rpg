//argument0 instancia/ser a desequipar
//argument1 id del item a desequipar
var indice;
indice = ds_list_find_index(argument0.slots, argument1)
//Valido si el item está equipado
if(indice==-1)
{
    return false;
}
ds_list_delete(argument0.slots,indice)
ds_list_add(argument0.inventario,argument1);
scr_ordenar_inventario(argument0);
scr_ordenar_equipo(argument0);
scr_calcular_stats(argument0);
