path = path_add();
if(mp_grid_path(global.grid,path,x,y,final_x_position,final_y_position,false)){
	path_start(path,1,path_action_stop,true);
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