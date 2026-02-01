if(global.powered == power.NONE && !moving && plante_time_restoration == regen_plante){
	//Changer le skin du personnage
	global.powered = power.PLANTE;
	plante_time_restoration--;
}