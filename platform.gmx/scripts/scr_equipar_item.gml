//argument0 instancia/ser a equipar
//argument1 id del item
var indice;
indice = ds_list_find_index(argument0.inventario, argument1);
//Valido si existe el item en el inventario
if(indice==-1)
{
    return false;
}
//Valido si es posible equiparlo
if(!scr_hay_espacio_de_equipo(argument0))
{
    return false;
}

ds_list_delete(argument0.inventario, indice);
ds_list_add(argument0.slots, argument1);
scr_ordenar_inventario(argument0);
scr_ordenar_equipo(argument0);
scr_calcular_stats(argument0);
