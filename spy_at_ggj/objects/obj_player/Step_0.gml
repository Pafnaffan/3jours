if (global.game_over) exit;

if(!moving){
	if(keyboard_check(vk_up)){
		if(mp_grid_get_cell(global.grid,x/16,(y-16)/16) == 0){
			moving = true;
			target_y -= 16;
			switch(global.powered){
				case power.HUFFLEN:
					break;
				case power.PLANTE:
					break;
				case power.RAPIDITE:
					sprite_index = spr_player_speed_up;
					break;
				case power.RACCOON:
					sprite_index = spr_player_raccoon_up;
					break;
				default:
					sprite_index = spr_player_up;
			}
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_down)){
		if(mp_grid_get_cell(global.grid,x/16,(y+16)/16) == 0){
			moving = true;
			target_y += 16;
			switch(global.powered){
				case power.HUFFLEN:
					break;
				case power.PLANTE:
					break;
				case power.RAPIDITE:
					sprite_index = spr_player_speed_down;
					break;
				case power.RACCOON:
					sprite_index = spr_player_raccoon_down;
					break;
				default:
					sprite_index = spr_player_down;
			}
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_left)){
		if(mp_grid_get_cell(global.grid,(x-16)/16,y/16) == 0){
			moving = true;
			target_x -= 16;
			switch(global.powered){
				case power.HUFFLEN:
					break;
				case power.PLANTE:
					break;
				case power.RAPIDITE:
					sprite_index = spr_player_speed_left;
					break;
				case power.RACCOON:
					sprite_index = spr_player_raccoon_left;
					break;
				default:
					sprite_index = spr_player_left;
			}
			image_speed=1;
		}
	}
	else if(keyboard_check(vk_right)){
		if(mp_grid_get_cell(global.grid,(x+16)/16,y/16) == 0){
			moving = true;
			target_x += 16;
			switch(global.powered){
				case power.HUFFLEN:
					break;
				case power.PLANTE:
					break;
				case power.RAPIDITE:
					sprite_index = spr_player_speed_right;
					break;
				case power.RACCOON:
					sprite_index = spr_player_raccoon_right;
					break;
				default:
					sprite_index = spr_player_right;
			}
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
			global.steal_speed = global.steal_speed/2;
			//On change le skin
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



if (keyboard_check_pressed(ord("E"))) {

    pc = instance_nearest(x, y, obj_pc_parent);
	show_debug_message(pc)
	
    if (pc != noone) {
		show_debug_message("close")
        if (point_distance(x, y, pc.x, pc.y) < 24) {
            global.steal_in_progress = true;
            global.steal_timer = 0;
            global.steal_target = pc;
        }
    }
}

if (global.steal_in_progress) {

    global.steal_timer += global.steal_speed;

    if (global.steal_timer >= global.steal_duration) {
        global.steal_target.get_idea_stolen();
        global.steal_in_progress = false;
        global.steal_target = noone;
    }
	
	if (moving) {
		global.steal_in_progress = false;
		global.steal_timer = 0;
	}
}

if (global.dialog_active) {
	if (keyboard_check_pressed(vk_space)) {

		global.dialog_step++;

		if (global.dialog_step > 1) {
			global.dialog_active = false;
			global.dialog_step = 0;
		}
	}
}


function player_caught() {

    can_move = false;
    image_speed = 0;

    show_debug_message("GAME OVER");

    alarm[0] = 60;
}
