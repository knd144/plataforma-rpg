if (ladder=0) 
{
    if ((keyboard_check(vk_left)) or (keyboard_check(vk_right)))
    { 
        image_speed=0.2
    }
    else 
    {
        image_speed=0
    }
}
else 
{
    if (keyboard_check(vk_up)) or (keyboard_check(vk_down))
    {
        image_speed=0.2
    }
    else 
    {
        image_speed=0
    }
}

if place_meeting(x,y,stair) 
{
    gravity = 0;
    vspeed = 0; 
}
if (not position_meeting(x,y,stair))
{
    ladder=0
}
