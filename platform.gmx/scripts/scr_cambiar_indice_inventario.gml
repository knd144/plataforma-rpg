//argument0: 1 para avanzar, -1 para retroceder
if(instance_exists(obj_contenedor_inventario_equipo) && instance_exists(pj))
{
    var indice_actual;
    indice_actual = obj_contenedor_inventario_equipo.indice;
    if(argument0 ==1)
    {
        if(ds_list_size(pj.inventario)>(indice_actual+1)*25)
        {
            obj_contenedor_inventario_equipo.indice+=1;
            scr_refrescar_menu_inventario();
        }
    }
    else if(argument0 == -1)
    {
        if(indice_actual>0)
        {
            obj_contenedor_inventario_equipo.indice-=1;
            scr_refrescar_menu_inventario();
        }
    }
    
}
