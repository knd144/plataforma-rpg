//No recibe argumentos
if(instance_exists(pj))
{
    pj.nivel+=1;
    pj.slots=global.slots_base_personaje+pj.nivel;
    if(pj.slots>global.slots_totales_personaje)
    {
        pj.slots=global.slots_totales_personaje;
    }
}
