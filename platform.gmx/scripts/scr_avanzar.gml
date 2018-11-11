//argument0 velocidad base
//argument1 velocidad al caer
//argument2 velocidad en el agua
//argument3 direccion (-1 izquierda, 1 derecha)
    if (vspeed=0) 
    {
        d=argument0; 
    }
    else 
    {
        d=argument1;
    }
    //lado=1
    if (water=1) 
    {
        d=argument2
    }
    //d-=enacido
    for (i=0; i<= (argument0+1); i +=1) 
    {
        if place_free(x+(d*argument3),y-i) 
        { 
            x += (d*argument3); 
            y -= i; 
            exit; 
        }
    }
