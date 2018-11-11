if (instance_exists(waterlevel)) 
{
    if (y>waterlevel.y) 
    {
        if (water=0) vspeed=0
        {
            water=1
        }
    } 
    else
    {
        water=0
    }
}
else if (place_meeting(x,y,agua)) 
{
    if (water=0)
    { 
        vspeed=0
    }
    water=1;
}
else 
{
    water=0
}

if (water=1) 
{
    if (vspeed>0) 
    {
        vspeed=0;
    }
    gravity=0
    dsalto=0
    if (place_free(x,y+1)) 
    {
        y+=1;
    }
    y=round(y)
}
