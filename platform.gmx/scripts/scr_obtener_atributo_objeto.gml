//Aportación de BssString
//scr_get_data(objeto, valor)
/*
    argument0: identificador del objeto
    argument1: atributo a obtener
*/

//Primero se reciben los argumentos del script
var _obj = argument0;
var _val = argument1;

//Estas son las variables que genera como retorno, acá asigna los valores por defecto (En caso de fallar o no encontrar el item)
var vidaFija, vidaPorcentual, fuerza, destreza, regeneracionVida, regeneracionVidaPorcentual;
var regeneracionVidaBatalla, regeneracionVidaPorcentualBatalla, coldownHabilidades, proyectiles, coldownProyectiles;
var nombre, descripcion, sprite, defensaFisica,defensaFuegoPorcentual, defensaMagiaPorcentual;
var coldownAtaqueFisico;
nombre="";
descripcion="";
sprite=0;
vidaFija=0;
vidaPorcentual=0;
fuerza=0;
destreza=0;
regeneracionVida=0;
regeneracionVidaPorcentual=0;
regeneracionVidaBatalla=0;
regeneracionVidaPorcentualBatalla=0;
coldownHabilidades=0;
proyectiles=0;
coldownProyectiles=0;
coldownAtaqueFisico=0;

defensaFisica=0;
defensaFuegoPorcentual= 0;
defensaMagiaPorcentual= 0;

//Ahora traeremos la información de cada uno de los objetos del juego, si no colocas info, queda la de defecto
switch (_obj) {
    case 1:
    {
        nombre="";
        descripcion="";
        sprite=spr_runa_del_valor;
        defensaFuegoPorcentual=50;
        break
    }
    case 2:
    {
        nombre="";
        descripcion="";
        sprite=spr_runa_del_valor;
        regeneracionVidaBatalla=20;
        break;
    }
    case 3:
    {
        nombre="Item de prueba";
        descripcion="Item que no tiene#utilidad alguna.##Fue creado solo para la versión de#pruebas.";
        sprite=spr_runa_del_valor;
        regeneracionVida=10;
        break;
    }
    case 4:
    {
        nombre="";
        descripcion="";
        sprite=spr_runa_del_valor;
        fuerza=10;
        break;
    }
}

//Después que el script tiene el valor, debes retornarlo con la función "return".
if _val = "vidaFija" return  vidaFija;
if _val = "vidaPorcentual" return  vidaPorcentual;
if _val = "fuerza" return  fuerza;
if _val = "destreza" return  destreza;
if _val = "regeneracionVida" return  regeneracionVida;
if _val = "regeneracionVidaPorcentual" return  regeneracionVidaPorcentual;
if _val = "regeneracionVidaBatalla" return regeneracionVidaBatalla;
if _val = "regeneracionVidaPorcentualBatalla" return  regeneracionVidaPorcentualBatalla;
if _val = "coldownHabilidades" return  coldownHabilidades;
if _val = "proyectiles" return  proyectiles;
if _val = "coldownProyectiles" return  coldownProyectiles;
if _val = "nombre" return nombre;
if _val = "descripcion" return  descripcion;
if _val = "sprite" return  sprite;
if _val = "defensaFisica" return  defensaFisica;
if _val = "defensaFuegoPorcentual" return defensaFuegoPorcentual;
if _val = "defensaMagiaPorcentual" return  defensaMagiaPorcentual;
if _val = "coldownAtaqueFisico" return coldownAtaqueFisico;
