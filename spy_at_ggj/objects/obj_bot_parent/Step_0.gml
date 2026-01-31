if (keyboard_check_pressed(vk_f1)){
	state = BotState.MOVING;
}

if(state == BotState.MOVING){
	if(count <= 0){
		path = path_add();
		if(mp_grid_path(global.grid,path,x,y,target_x,target_y,false)){
			path_start(path,1,path_action_stop,true);
		}
		count = 60;
	}
}

count --;