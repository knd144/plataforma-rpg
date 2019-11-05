//argument0 => <int> cofre_id;
//argument1 => <int> id item

ini_open(global.archivoData);
ini_write_real(global.cofresData, argument0, global.cofreAbierto);
ini_close();

scr_agregar_item_inventario(pj,item_id);
scr_mostrar_mensaje_gui(scr_obtener_atributo_objeto(argument1,"nombre"));

return global.cofreAbierto;
