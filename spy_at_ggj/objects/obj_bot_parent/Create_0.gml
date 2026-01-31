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

pc_x_position = x;
pc_y_position = y;

pizza_x_position = x+5;
pizza_y_position = y+5;

target_x = x;
target_y = y;

can_move = true;

path_id = -1;
has_path = false;
_path_index = 0;
path_length = 0;

spd = 1;
moving = false;
image_speed = 0;
