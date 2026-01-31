if(!moving){
	if(keyboard_check(vk_up)){
		moving = true;
		target_y -= 16
		sprite_index = spr_player_up;
		image_speed=1;
	}
	else if(keyboard_check(vk_down)){
		moving = true;
		target_y += 16
		sprite_index = spr_player_down;
		image_speed=1;
	}
	else if(keyboard_check(vk_left)){
		moving = true;
		target_x -= 16
		sprite_index = spr_player_left;
		image_speed=1;
	}
	else if(keyboard_check(vk_right)){
		moving = true;
		target_x += 16
		sprite_index = spr_player_right;
		image_speed=1;
	}
}

if(x < target_x){
	x++;
}
else if(x > target_x){
	x--;
}
else if(y < target_y){
	y++;
}
else if(y > target_y){
	y--;
}
else if(x == target_x && y == target_y){
	moving = false;
	image_speed=0;
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

    global.steal_timer++;

    if (global.steal_timer >= global.steal_duration) {
        global.steal_target.get_idea_stolen();
        global.steal_in_progress = false;
        global.steal_target = noone;
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

