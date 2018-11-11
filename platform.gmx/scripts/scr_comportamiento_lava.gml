if (place_meeting(x,y,obj_lava)) 
{
    /*var danio_final;
    var reduccion_de_danio;
    reduccion_de_danio = defensaFuegoPorcentual;
    if(reduccion_de_danio>90)
    {
        reduccion_de_danio = 90;
    }
    danio_final = global.danio_lava - (global.danio_lava*(reduccion_de_danio/100));/**/
    //scr_hacer_danio(self,(danio_final/room_speed), false);
    scr_atacar(self,(global.danio_lava/room_speed),global.ataque_tipo_fuego,false );
}
