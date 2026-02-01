if(global.powered == power.NONE && !moving && raccoon_time_restoration == regen_raccoon){
	//Changer le skin du personnage
	global.powered = power.RACCOON;
	raccoon_time_restoration--;
}