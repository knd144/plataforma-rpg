gravity=0.5
gravity_direction=270
image_speed=0.2
dsalto=0
dano=0
run=0
water=0
ladder=0
maxvspeed=6
retroceso=0
lado=0

/*Movimiento*/
velocidadbase=3;
velocidadactual=velocidadbase;
velocidadencaida=2;
velocidadenagua=2;

/*stats*/
tiempoRecargaAtaque = room_speed*1;
tiempoRecargaAtaqueDistancia = room_speed*1.3;
nivel = 0;
experiencia = 0;

vidabase = 500; //Dependiente del nivel
vidamaxima = 500;
vida = vidamaxima;

fuerzaBase=100; //Daño cuerpo a cuerpo
fuerzaTotal=fuerzaBase; //Daño numérico
destrezaBase=50;
destrezaTotal=destrezaBase;
coldownHabilidades = 0; //porcentual; maximo 80%
proyectilesBase=1; //Numérico
proyectilesTotal = proyectilesBase;
proyectilesActuales = proyectilesTotal;
coldownProyectiles=0; //Porcentual; maximo 80%
regeneracionVida=0;
regeneracionVidaBatalla=0;
coldownAtaqueFisico=0;

slotsTotales = global.slots_totales_personaje;
slotsActivos = global.slots_base_personaje;
/*var i;
i=0;
repeat(slotsTotales)
{
    slots[i]=0;
    i++;
}/**/

//defensas
defensaFisica=0;
defensaFuegoPorcentual=0; 
defensaMagiaPorcentual=0; 

/* banderas */
banderaAtaqueFisico=true;
banderaDanioFisico = true; //PPara recibir daño del personaje

banderaAtaqueDistancia = true;
banderaDanioDistancia = true; //PPara recibir daño del personaje

/*sprites*/

sprite_izquierda_movimiento=false;
sprite_derecha_movimiento=false;

sprite_izquierda_quieto=false;
sprite_derecha_quieto=false;

sprite_izquierda_salto=false;
sprite_derecha_salto=false;

/*tiempos*/
segundos_regeneracion_vida=3;

//scripts
scr_crear_inventario();
scr_crear_slots_equipo();

//alarmas
alarm[1]=segundos_regeneracion_vida*room_speed;
