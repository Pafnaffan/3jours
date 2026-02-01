if(global.powered == power.NONE && !moving && plante_time_restoration == regen_plante){
	switch(sprite_index){
			case spr_player_down:
				sprite_index = spr_player_plante_down;
				break;
			case spr_player_up:
				sprite_index = spr_player_plante_up;
				break;
			case spr_player_left:
				sprite_index = spr_player_plante_left;
				break;
			default:
				sprite_index = spr_player_plante_right;
	}
	global.powered = power.PLANTE;
	obj_plante.griser();
	plante_time_restoration--;
}