enum BotState {
    STUN,
	PANIC,
	MOVING,
	CALLINGHELP
}

state = BotState.STUN;
state_timer = 120;

pc_x_position = 0;
pc_y_position = 0;
final_x_position = 0;
final_y_position = 0;
target_x = x;
target_y = y;

spd = 1;
moving = false;

image_speed = 0;
bot_sprite_up = spr_test;
bot_sprite_down = spr_test;
bot_sprite_left = spr_test;
bot_sprite_right = spr_test;

function go_to_path (){
	show_debug_message("coucou")
	path = path_add();
	if(mp_grid_path(global.grid,path,x,y,final_x_position,final_y_position,false)){
		path_start(path,1,path_action_stop,true);
		show_debug_message("coucou2")
	}
}