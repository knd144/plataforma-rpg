//argument0 Experiencia a ganar
if(instance_exists(pj))
{
    pj.experiencia += argument0;
    
    if(pj.experiencia >= global.niveles[pj.nivel+1])
    {
        scr_subir_nivel_personaje();
    }
}
