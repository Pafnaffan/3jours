enum BotState {
    CODING,
	PANIC,
	EATING,
	MOVINGTOPC,
	MOVING,
	CALLINGHELP
}

enum TargetAction {
	CODE,
	PIZZA,
	SCARED
}

target_action = TargetAction.CODE;
state = BotState.PANIC;
state_timer = 120;

pc_x_position = 0;
pc_y_position = 0;

pizza_x_position = 100;
pizza_y_position = 100;

target_x = x;
target_y = y;

path_id = -1;
has_path = false;
_path_index = 0;
path_length = 0;

spd = 1;
moving = false;

image_speed = 0;
bot_sprite_up = spr_test;
bot_sprite_down = spr_test;
bot_sprite_left = spr_test;
bot_sprite_right = spr_test;