if(global.powered == power.NONE && !moving && rapidite_time_restoration == regen_rapidite){
	switch(sprite_index){
			case spr_player_down:
				sprite_index = spr_player_speed_down;
				break;
			case spr_player_up:
				sprite_index = spr_player_speed_up;
				break;
			case spr_player_left:
				sprite_index = spr_player_speed_left;
				break;
			default:
				sprite_index = spr_player_speed_right;
	}
	global.powered = power.RAPIDITE
	spd = spd*2;
	obj_rapidite.griser();
	rapidite_time_restoration--;
}