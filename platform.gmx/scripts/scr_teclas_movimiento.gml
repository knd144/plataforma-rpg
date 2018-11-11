if(keyboard_check(global.tecla_izquierda))
{
    lado=1;
    scr_avanzar(velocidadactual,velocidadencaida,velocidadenagua,-1);
}
if(keyboard_check(global.tecla_derecha))
{
    lado=0;
    scr_avanzar(velocidadactual,velocidadencaida,velocidadenagua,1);
}
if(keyboard_check(global.tecla_arriba))
{
    if (retroceso=0) 
    {
        if place_meeting(x,y,stair) 
        {
            if place_free(x,y-3) 
            {
                y -= 3; 
                y=round(y);
            }
        }
        if (water=1 && place_free(x,y-2)) 
        {
            y -= 2; y=round(y); exit; 
        }
    }
}
if(keyboard_check(global.tecla_abajo))
{
    if (retroceso=0) 
    {
        if place_meeting(x,y,stair) 
        {
            if place_free(x,y+3)
            {
                y+=3; 
                y=round(y);
            }
        }
        if (water=1 && place_free(x,y+1)) 
        {
            y += 1; 
            y=round(y); 
            exit; 
        }
    }
}
