//argument0 id del item
//argument1 probabilidad del drop (0 - 100)
if(argument0 <1)
{
    return false;
}
if(argument1<=0)
{
    return false;
}
randomize();
var tirada = random(100);
if(tirada>argument1)
{
    return false;
}
var drop = instance_create(x,y,obj_item_drop);
drop.item_id = argument0;
