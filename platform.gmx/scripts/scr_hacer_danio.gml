//argument0 objetivo a dañar
//argument1 Cantidad de daño
//argument2 Mostrar el daño
argument0.vida-=argument1;
if(argument2)
{
    var instancia;
    instancia = instance_create(x,y,obj_danio);
    instancia.valor=argument1;
}
