function set_state(newState, timer = -1) {
	state = newState;
	if (timer > 0) {
		state_timer = timer;
	}
}

function update_timer() {
	if (state_timer	> 0) {
		state_timer--;	
	}
}

function move_to_target(_x, _y) {
	distance = point_distance(x, y, _x, _y);
	//move_towards_point(_x, _y, 2);
	path = path_add();
	mp_potential_path(path, _x, _y, 3, 4, 0);
	path_start(path, 2, 0, 0);
	if (distance <= 5) {
		//TODO : change that
		speed = 0;
		set_state(BotState.PANIC)
	}
}

function go_eat_pizza() {
	target_x = pizza_x_position;
	target_y = pizza_y_position;
	set_state(BotState.MOVING);
}

function go_back_to_pc() {
	target_x = pc_x_position;
	target_y = pc_y_position;
	set_state(BotState.MOVING);
}

function reached_target() {
	
}

function coding_at_pc() {
	if (x != obj_desk.x && y != obj_desk.y) {
		go_back_to_pc();
	} else {
		set_state(BotState.CODING);	
	}
}

function scared_of_hufflen() {
	set_state(BotState.PANIC, 300);
	// TODO : run away from hufflen
}

switch(state) {
	case BotState.CODING:
		coding_at_pc();
		break;
	case BotState.MOVING:
		move_to_target(target_x, target_y);
		break;
}