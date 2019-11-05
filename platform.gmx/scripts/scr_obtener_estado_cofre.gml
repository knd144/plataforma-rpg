//argument 0: <int> id del cofre
var estadoCofre;

ini_open(global.archivoData);
estadoCofre = ini_read_real(global.cofresData, argument0, global.cofreCerrado);
ini_close();

return estadoCofre;
