if(global.powered == power.NONE && !moving && rapidite_time_restoration == regen_rapidite){
	//Changer le skin du personnage
	global.powered = power.RAPIDITE
	spd = spd*2;
	obj_rapidite.griser();
	rapidite_time_restoration--;
}