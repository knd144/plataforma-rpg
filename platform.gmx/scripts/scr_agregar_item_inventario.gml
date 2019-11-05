//argument0 instancia
//argument1 id item
if(scr_obtener_atributo_objeto(argument1,"tipo") == global.tipoEquipo)
{
    ds_list_add(argument0.inventario, argument1);
    scr_ordenar_inventario(argument0);
}
else
{
    ds_list_add(argument0.inventarioItems,argument1);
    scr_ordenar_inventario(argument0);
}
