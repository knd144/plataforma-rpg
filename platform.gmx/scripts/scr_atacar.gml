//argument0 objetivo a dañar
//argument1 Cantidad de daño
//argument2 Tipo de daño
//argument3 Mostrar el daño
var danioFinal, reduccion;
switch(argument2)
{
    case global.ataque_tipo_fisico:
    {
        danioFinal = argument1-argument0.defensaFisica;
        if(danioFinal<10)
        {
            danioFinal=10;
        }
    }
    case global.ataque_tipo_fuego:
    {
        reduccion = argument0.defensaFuegoPorcentual;
        if(reduccion>global.porcentajeMaximoReduccionDanio)
        {
            reduccion=global.porcentajeMaximoReduccionDanio;
        }
        danioFinal = argument1-(argument1*reduccion);
    }
    case global.ataque_tipo_magia:
    {
        reduccion = argument0.defensaMagiaPorcentual;
        if(reduccion>global.porcentajeMaximoReduccionDanio)
        {
            reduccion=global.porcentajeMaximoReduccionDanio;
        }
        danioFinal = argument1-(argument1*reduccion);
    }
    default:
    {
        danioFinal = argument1;
        break;
    }
}
scr_hacer_danio(argument0,danioFinal,argument3);
