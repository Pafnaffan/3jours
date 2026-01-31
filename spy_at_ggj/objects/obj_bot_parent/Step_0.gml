if (keyboard_check_pressed(vk_f1))
{
    final_x_position = mouse_x;
    final_y_position = mouse_y;
    go_to_path();
}


/*
if((x == final_x_position && y == final_y_position)){
	moving = false;
	image_speed = 0;
	image_index = 0;
} else {
	
}

if (x == target_x && y == target_y) {
    moving = false;
	image_speed = 0;
}

if (x < target_x) x+= spd;
else if (x > target_x) x-= spd;
else if (y < target_y) y+= spd;
else if (y > target_y) y-= spd;
*/