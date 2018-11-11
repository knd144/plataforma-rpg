if (other.solid=true) 
{
    if (vspeed > 0 && not place_free(x,y+vspeed)) move_contact(270)
    vspeed=0
    salto=0
}
