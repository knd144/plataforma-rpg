//argument0 instancia/ser a la cual calcular

var vida, fuerzaTotal, destrezaTotal, proyectilesTotal, regeneracionVida;
var regeneracionVidaBatalla, coldownHabilidades, coldownProyectiles, coldownAtaqueFisico;
var defensaFisica, defensaFuegoPorcentual, defensaMagiaPorcentual;
vida=argument0.vidabase;
fuerzaTotal=argument0.fuerzaBase; 
destrezaTotal=argument0.destrezaBase; 
proyectilesTotal=argument0.proyectilesBase; 
regeneracionVida=0;
regeneracionVidaBatalla=0; 
coldownHabilidades=0; 
coldownProyectiles=0; 
coldownAtaqueFisico=0;

defensaFisica = 0;
defensaFuegoPorcentual = 0;
defensaMagiaPorcentual = 0;

var longitudSlots, indice, temporalPorcentajeVida,temporalPorcentajeRegeneracionVidaBatalla;
var temporalPorcentajeRegeneracionVida;
longitudSlots = ds_list_size(argument0.slots);
indice = 0;
temporalPorcentajeVida = 0;
temporalPorcentajeRegeneracionVida = 0;
temporalPorcentajeRegeneracionVidaBatalla = 0;
repeat(longitudSlots)
{
    var item;
    item = ds_list_find_value(argument0.slots, indice);
    /*vida*/
    vida += scr_obtener_atributo_objeto(item,"vidaFija");
    temporalPorcentajeVida = scr_obtener_atributo_objeto(item,"vidaPorcentual");
    /*fin vida*/
    /*fuerza*/
    fuerzaTotal += scr_obtener_atributo_objeto(item,"fuerza");
    /*fin fuerza*/
    /*Coldown hablidades*/
    coldownHabilidades += scr_obtener_atributo_objeto(item,"coldownHabilidades");
    /*Fin coldown habilidades*/
    /*proyectiles*/
    proyectilesTotal += scr_obtener_atributo_objeto(item,"proyectiles");
    /*Fin proyetiles*/
    /*coldown proyectiles*/
    coldownProyectiles += scr_obtener_atributo_objeto(item,"coldownProyectiles");
    /*fin coldown proyectiles*/
    /*regeneracion vida*/
    regeneracionVida += scr_obtener_atributo_objeto(item,"regeneracionVida");
    temporalPorcentajeRegeneracionVida +=scr_obtener_atributo_objeto(item,"regeneracionVidaPorcentual");
    /*fin regeneracion vida*/
    /*regeneracion vida batalla*/
    regeneracionVidaBatalla +=scr_obtener_atributo_objeto(item,"regeneracionVidaBatalla");
    temporalPorcentajeRegeneracionVidaBatalla += scr_obtener_atributo_objeto(item,"regeneracionVidaPorcentualBatalla");
    /*fin regeneracion vida batalla*/
    /*coldown ataque fisico*/
    coldownAtaqueFisico += scr_obtener_atributo_objeto(item,"coldownAtaqueFisico");
    /*Fin coldown ataque físico*/
    /*destreza*/
    destrezaTotal += scr_obtener_atributo_objeto(item,"destrezaTotal");
    /*fin destreza*/
    
    /*Defensas*/
    defensaFisica += scr_obtener_atributo_objeto(item,"defensaFisica");
    defensaFuegoPorcentual += scr_obtener_atributo_objeto(item,"defensaFuegoPorcentual");
    defensaMagiaPorcentual += scr_obtener_atributo_objeto(item,"defensaMagiaPorcentual");
    /*termina defensas*/
    indice++;
}
vida +=(vida*temporalPorcentajeVida/100);
regeneracionVida += (vida*temporalPorcentajeRegeneracionVida/100);
regeneracionVidaBatalla += (vida*temporalPorcentajeRegeneracionVidaBatalla/100);

if(defensaFuegoPorcentual>global.porcentajeMaximoReduccionDanio)
{
    defensaFuegoPorcentual = global.porcentajeMaximoReduccionDanio;
}
if(defensaMagiaPorcentual>global.porcentajeMaximoReduccionDanio)
{
    defensaMagiaPorcentual = global.defensaMagiaPorcentual;
}

argument0.defensaMagiaPorcentual = defensaMagiaPorcentual;
argument0.defensaFuegoPorcentual = defensaFuegoPorcentual
argument0.defensaFisica = defensaFisica;
argument0.regeneracionVidaBatalla = regeneracionVidaBatalla;
argument0.coldownAtaqueFisico = coldownAtaqueFisico;
argument0.regeneracionVida = regeneracionVida;
argument0.coldownProyectiles = coldownProyectiles;
argument0.proyectilesTotal = proyectilesTotal;
argument0.coldownHabilidades = coldownHabilidades;
argument0.destrezaTotal = destrezaTotal;
argument0.vidamaxima = vida;
argument0.fuerzaTotal = fuerzaTotal;
