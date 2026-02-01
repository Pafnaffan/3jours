if(global.powered == power.NONE && !moving && raccoon_time_restoration == regen_raccoon){
	switch(sprite_index){
			case spr_player_down:
				sprite_index = spr_player_raccoon_down;
				break;
			case spr_player_up:
				sprite_index = spr_player_raccoon_up;
				break;
			case spr_player_left:
				sprite_index = spr_player_raccoon_left;
				break;
			default:
				sprite_index = spr_player_raccoon_right;
	}
	global.powered = power.RACCOON;
	global.steal_speed = global.steal_speed*2;
	raccoon_time_restoration--;
	obj_raton_laveur.griser();
}