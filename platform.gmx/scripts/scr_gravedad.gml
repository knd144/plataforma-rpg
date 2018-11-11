gravity_direction = 270;
if place_free(x,y+1) 
{
    gravity=0.5;
}
if not place_free(x,y+1) 
{
    gravity=0; 
    dsalto=0;
}
if (vspeed>maxvspeed)
{
    vspeed=maxvspeed;
}
