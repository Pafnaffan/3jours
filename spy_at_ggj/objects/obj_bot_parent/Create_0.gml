enum BotState {
    CODING,
	PANIC,
	EATING,
	MOVINGTOPC,
	MOVING,
	CALLINGHELP
}

state = BotState.CODING
state_timer = 0;

pc_x_position = x;
pc_y_position = y;

pizza_x_position = x+5;
pizza_y_position = y+5;

target_x = x;
target_y = y;

can_move = true;