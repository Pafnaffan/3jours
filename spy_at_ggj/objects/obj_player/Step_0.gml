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