if(global.powered == power.NONE && !moving && hufflen_time_restoration == regen_hufflen){
	switch(sprite_index){
			case spr_player_down:
				sprite_index = spr_player_hufflen_down;
				break;
			case spr_player_up:
				sprite_index = spr_player_hufflen_up;
				break;
			case spr_player_left:
				sprite_index = spr_player_hufflen_left;
				break;
			default:
				sprite_index = spr_player_hufflen_right;
	}
	global.powered = power.HUFFLEN;
	obj_hufflen.griser();
	//Activer le pouvoir
	hufflen_time_restoration--;
}