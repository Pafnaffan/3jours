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

function calculate_path(_x, _y) {

    if (has_path) {
        path_delete(path_id);
    }

    path_id = path_add();

    var found = mp_potential_path(path_id, _x, _y, 16, 4, 0);

    if (found) {
        path_length = path_get_number(path_id);
        _path_index = 0;
        has_path = true;
    } else {
        path_delete(path_id);
        has_path = false;
    }
}

function bot_move_next_tile() {
	show_debug_message(target_action)
	if (has_path && target_action == TargetAction.SCARED) {
		show_debug_message("scarrryyyy")
		update_timer();
		if (state_timer <= 0) {
			reached_target();	
		}
	}

    if (!has_path) return;
    if (moving) return;

    if (_path_index >= path_length) {
        path_delete(path_id);
        has_path = false;
        reached_target();
        return;
    }

    var px = path_get_point_x(path_id, _path_index);
    var py = path_get_point_y(path_id, _path_index);

    target_x = round(px / 16) * 16;
    target_y = round(py / 16) * 16;

    moving = true;

    _path_index++;
}





function go_eat_pizza() {
	target_x = pizza_x_position;
	target_y = pizza_y_position;
	target_action = TargetAction.PIZZA;
	set_state(BotState.MOVING);
}

function go_back_to_pc() {
	target_x = pc_x_position;
	target_y = pc_y_position;
	calculate_path(target_x, target_y);
	target_action = TargetAction.CODE;
	set_state(BotState.MOVING);
}

function reached_target() {
	if (state == BotState.MOVING) {
		if (target_action == TargetAction.CODE) {
			set_state(BotState.CODING);
		} else if (target_action == TargetAction.PIZZA) {
			set_state(BotState.EATING);
		} else if (target_action == TargetAction.SCARED) {
			show_debug_message("now coding");
			set_state(BotState.CODING);	
		}
    }
}

function coding_at_pc() {
    if (point_distance(x,y,pc_x_position,pc_y_position) > 4) {
        go_back_to_pc();	
    }
}

function hufflen_is_here() {
	if (target_action != TargetAction.SCARED) {
		target_action = TargetAction.SCARED;
		set_state(BotState.PANIC, 120);
	}
}

function scared_of_hufflen() {
    if (has_path && target_action == TargetAction.SCARED) {
		update_timer();
		if (state_timer <= 0) {
			reached_target();	
		}
	}

    escape_x = x + (x - obj_player.x) * 4;
    escape_y = y + (y - obj_player.y) * 4;

    calculate_path(escape_x, escape_y);

    if (has_path) {
        target_action = TargetAction.SCARED;
        set_state(BotState.MOVING);
    }
}



if (state == BotState.MOVING) {
	if (x < target_x) x++;
	if (x > target_x) x--;
	if (y < target_y) y++;
	if (y > target_y) y--;
}

if (x == target_x && y == target_y) {
    moving = false;
}


switch(state) {
	case BotState.CODING:
		coding_at_pc();
		break;
	case BotState.MOVING:
		bot_move_next_tile();
		break;
	case BotState.PANIC:
		scared_of_hufflen();
}

//show_debug_message(string(state));