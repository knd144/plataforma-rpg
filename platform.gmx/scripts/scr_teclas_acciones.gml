if(keyboard_check_pressed(global.tecla_salto))
{
        if (water=0) 
        {
            if not place_free(x,y+1) /*or not place_free(x-1,y+1) or not place_free(x+1,y+1)*/ 
            {
                vspeed = -6/*+3*enacido*/ ; 
                exit;
            }
            else if (dsalto=0 && global.tenerdsalto=1) 
            {
                dsalto=1; 
                vspeed = -6/*+2*enacido*/ ; 
                exit;
            }
        }
        else 
        {
            vspeed = -3
            if instance_exists(waterlevel) 
            {
                if (abs(y-waterlevel.y)<16)
                {
                    vspeed = -6
                }
            }
            else if (instance_exists(aguasurface) )
            {
                if (abs(y-instance_nearest(x,y,aguasurface).y)<16)
                {
                    vspeed = -6
                }
            }
            alarm[6]=14
        }
}
if(keyboard_check_released(global.tecla_salto))
{
    if (vspeed<0) 
    {
        vspeed=0;
    }
}
if(keyboard_check_pressed(global.tecla_ataque_fisico) && banderaAtaqueFisico)
{
    var direccion, xx, yy;
    direccion = 1;
    if(lado==1)
    {
        direccion = -1;
    }
    xx=x;
    yy=y;
    xx+=((sprite_get_width(mask_index) * image_xscale)/2) * direccion;
    yy+=(sprite_get_width(mask_index) * image_xscale)/3; 
    
    var ataqueFisico = instance_create(xx,yy,obj_ataque_fisico_personaje);
    var temporalTiempoRecargaAtaque = tiempoRecargaAtaque-(tiempoRecargaAtaque*(coldownAtaqueFisico/100));
    ataqueFisico.danio = fuerzaTotal;
    ataqueFisico.lado= lado;
    banderaAtaqueFisico = false;
    alarm[0]=temporalTiempoRecargaAtaque;
    if(instance_exists(obj_gui_estadisticas))
    {
        var gui_estadisticas = obj_gui_estadisticas;
        gui_estadisticas.tiempo_ataque = temporalTiempoRecargaAtaque;
        gui_estadisticas.tiempo_recorrido = 0;
    }
}
if(keyboard_check_pressed(global.tecla_ataque_distancia) && banderaAtaqueDistancia && proyectilesActuales>0)
{
    var direccin, xx,yy;
    direccion=1;
    if(lado==1)
    {
        direccion = -1;
    }
    xx=x;
    yy=y;
    xx+=((sprite_get_width(mask_index) * image_xscale)/2) * direccion;
    yy+=(sprite_get_width(mask_index) * image_xscale)/3; 
    var ataqueDistancia = instance_create(xx+(sprite_get_width(mask_index)*direccion),yy,obj_ataque_distancia_personaje);
    ataqueDistancia.danio = destrezaTotal;
    ataqueDistancia.direccion = direccion;
    
    proyectilesActuales-=1;
    banderaAtaqueDistancia = false;
    var temporalTiempoRecargaAtaqueDistancia = tiempoRecargaAtaqueDistancia-(tiempoRecargaAtaqueDistancia*(coldownProyectiles/100));
    alarm[2] =temporalTiempoRecargaAtaqueDistancia;
    if(instance_exists(obj_gui_estadisticas))
    {
        var gui_estadisticas = obj_gui_estadisticas;
        gui_estadisticas.tiempo_ataque_distancia = temporalTiempoRecargaAtaqueDistancia;
        gui_estadisticas.tiempo_recorrido_ataque_distancia = 0;    
    }
}
