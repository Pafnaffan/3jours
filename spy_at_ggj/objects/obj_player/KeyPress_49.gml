if(global.powered == power.NONE && !moving && hufflen_time_restoration == regen_hufflen){
	//Changer le skin du personnage
	global.powered = power.HUFFLEN;
	hufflen_time_restoration--;
}