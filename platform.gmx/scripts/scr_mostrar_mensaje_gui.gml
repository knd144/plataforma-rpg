//argument0 mensaje a mostrar
if(instance_exists(obj_gui_estadisticas))
{
    obj_gui_estadisticas.mensaje = argument0;
    obj_gui_estadisticas.mostrar_mensaje = true;
    obj_gui_estadisticas.alarm[0] = global.tiempo_mensaje_gui;
}
