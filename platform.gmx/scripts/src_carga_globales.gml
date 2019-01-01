global.test = true;

global.tenerdsalto=0
global.tenerbotas=1
global.warpto=1

//Teclas
global.tecla_derecha=vk_right;
global.tecla_izquierda=vk_left;
global.tecla_arriba=vk_up;
global.tecla_abajo=vk_down;
global.tecla_salto=vk_space;
global.tecla_ataque_fisico=ord("A");
global.tecla_ataque_distancia=ord("S");
global.tecla_accion=ord("D");
global.tecla_menu = vk_enter;
global.tecla_cancelar = vk_escape;

global.danio_lava=100;

//tiempos
global.duracion_ataque_fisico_personaje = 0.1;
global.tiempo_danio_ataque_distancia = 0.4;
global.tiempo_mensaje_gui = room_speed*2;

//Tipos de daños
global.ataque_tipo_fisico = "fisico";
global.ataque_tipo_fuego = "fuego";
global.ataque_tipo_magia = "magia";

global.porcentajeMaximoReduccionDanio=95;
global.distancia_minima_enemigos_regeneracion=50;
global.distancia_maxima_enemigos_regeneracion=20;

//enumerados
global.item_equipado = 1;
global.item_en_inventario = 2;

//medidas
global.altura_gui_estadisticas = 100;
global.escala_vista = 1/2;

//Constantes personaje
global.slots_base_personaje = 8;
global.slots_totales_personaje = 20;

//niveles
global.niveles[0] = 0;
global.niveles[1] = 50;
global.niveles[2] = 100;
global.niveles[3] = 200;
global.niveles[4] = 300;
global.niveles[5] = 500;
global.niveles[6] = 800;
global.niveles[7] = 1300;
global.niveles[8] = 2100;
global.niveles[9] = 3400;
global.niveles[10] = 5500;
global.niveles[11] = 8900;
global.niveles[12] = 14400;


//Cadenas

//Estadísticas
global.estadisticas[0,0] = "nombre";
global.estadisticas[0,1] = "Nombre";

global.estadisticas[1,0] = "vidaFija";
global.estadisticas[1,1] = "Vida";

global.estadisticas[2,0] = "vidaPorcentual";
global.estadisticas[2,1] = "Vida %";

global.estadisticas[3,0] = "fuerza";
global.estadisticas[3,1] = "Fuerza";

global.estadisticas[4,0] = "destreza";
global.estadisticas[4,1] = "Destreza";

global.estadisticas[5,0] = "regeneracionVida";
global.estadisticas[5,1] = "Regeneración vida";

global.estadisticas[6,0] = "regeneracionVidaPorcentual";
global.estadisticas[6,1] = "Regeneración vida %";

global.estadisticas[7,0] = "regeneracionVidaBatalla";
global.estadisticas[7,1] = "Regeneración vida en bat.";

global.estadisticas[8,0] = "regeneracionVidaPorcentualBatalla";
global.estadisticas[8,1] = "Regeneración vida en bat. %";

global.estadisticas[9,0] = "coldownHabilidades";
global.estadisticas[9,1] = "Coldown habilidad.";

global.estadisticas[10,0] = "proyectiles";
global.estadisticas[10,1] = "Proyectiles.";

global.estadisticas[11,0] = "coldownProyectiles";
global.estadisticas[11,1] = "Coldown proyectil.";

global.estadisticas[12,0] = "defensaFisica";
global.estadisticas[12,1] = "Def. Fisica";

global.estadisticas[13,0] = "defensaFuegoPorcentual";
global.estadisticas[13,1] = "Def. Fuego %.";

global.estadisticas[14,0] = "defensaMagiaPorcentual";
global.estadisticas[14,1] = "Def. magia. %";

global.estadisticas[15,0] = "coldownAtaqueFisico";
global.estadisticas[15,1] = "Coldown ataque.";

global.estadisticas[16,0] = "sprite";
global.estadisticas[16,1] = "Imagen";

global.estadisticas[17,0] = "descripcion";
global.estadisticas[17,1] = "Descripción";

global.totalEstadisticas = 17;
