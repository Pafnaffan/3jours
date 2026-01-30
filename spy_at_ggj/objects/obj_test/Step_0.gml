if(!moving){
	if(keyboard_check(vk_up)){
		moving = true;
		target_y -= 16
		sprite_index = spr_test; //A CHANGER
		image_speed=1;
	}
	if(keyboard_check(vk_down)){
		moving = true;
		target_y += 16
		sprite_index = spr_test; //A CHANGER
		image_speed=1;
	}
	if(keyboard_check(vk_left)){
		moving = true;
		target_x -= 16
		sprite_index = spr_test; //A CHANGER
		image_speed=1;
	}
	if(keyboard_check(vk_right)){
		moving = true;
		target_x += 16
		sprite_index = spr_test; //A CHANGER
		image_speed=1;
	}
}

if(x < target_x){
	x++;
}
if(x > target_x){
	x--;
}
if(y < target_y){
	y++;
}
if(y > target_y){
	y--;
}
if(x == target_x && y == target_y){
	moving = false;
	image_speed=1;
}