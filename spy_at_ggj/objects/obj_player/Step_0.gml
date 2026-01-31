if(!moving){
	if(keyboard_check(vk_up)){
		if(mp_grid_get_cell(global.grid,x/16,(y-16)/16) == 0){
			moving = true;
			target_y -= 16;
			sprite_index = spr_player_up;
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_down)){
		if(mp_grid_get_cell(global.grid,x/16,(y+16)/16) == 0){
			moving = true;
			target_y += 16;
			sprite_index = spr_player_down;
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_left)){
		if(mp_grid_get_cell(global.grid,(x-16)/16,y/16) == 0){
			moving = true;
			target_x -= 16;
			sprite_index = spr_player_left;
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_right)){
		if(mp_grid_get_cell(global.grid,(x+16)/16,y/16) == 0){
			moving = true;
			target_x += 16;
			sprite_index = spr_player_right;
			image_speed=1;
		}
	}
}

if(x < target_x){
	x+=spd;
}
else if(x > target_x){
	x-=spd;
}
else if(y < target_y){
	y+=spd;
}
else if(y > target_y){
	y-=spd;
}
else if(x == target_x && y == target_y){
	moving = false;
	image_speed=0;
}

switch(global.powered){
	case power.HUFFLEN:
		hufflen_time_use--;
		if(hufflen_time_use == 0){
			hufflen_time_use = 5*60;
			global.powered = power.NONE;
			//On change le skin et on lui enlève le pouvoir
		}
		break;
	case power.PLANTE:
		plante_time_use--;
		if(plante_time_use == 0){
			plante_time_use = 5*60;
			global.powered = power.NONE;
			//On change le skin et on lui enlève le pouvoir
		}
		break;
	case power.RAPIDITE:
		rapidite_time_use--;
		if(rapidite_time_use == 0){
			rapidite_time_use = 5*60;
			global.powered = power.NONE;
			spd = spd/2
			//On change le skin 
		}
		break;
	case power.RACCOON:
		raccoon_time_use--;
		if(raccoon_time_use == 0){
			raccoon_time_use = 5*60;
			global.powered = power.NONE;
			//On change le skin et on lui enlève le pouvoir
		}
		break;
}

if(hufflen_time_restoration < regen_hufflen){
	hufflen_time_restoration--;
	if(hufflen_time_restoration == 0){
		hufflen_time_restoration = regen_hufflen;
		obj_hufflen.degriser();
	}
}

if(plante_time_restoration < regen_plante){
	plante_time_restoration--;
	if(plante_time_restoration == 0){
		plante_time_restoration = regen_plante;
		obj_plante.degriser();
	}
}

if(rapidite_time_restoration < regen_rapidite){
	rapidite_time_restoration--;
	if(rapidite_time_restoration == 0){
		rapidite_time_restoration = regen_rapidite;
		obj_rapidite.degriser();
	}
}

if(raccoon_time_restoration < regen_raccoon){
	raccoon_time_restoration--;
	if(raccoon_time_restoration == 0){
		raccoon_time_restoration = regen_raccoon;
		obj_raton_laveur.degriser();
	}
}