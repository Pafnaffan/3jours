dx = x - prev_x;
dy = y - prev_y;

if (abs(dx) > 0.1 || abs(dy) > 0.1) {
    last_direction = point_direction(0, 0, dx, dy);
}

prev_x = x;
prev_y = y;


if (hspeed > 0) last_dir = 0;
if (hspeed < 0) last_dir = 180;
if (vspeed < 0) last_dir = 90;
if (vspeed > 0) last_dir = 270;


target_x = obj_player.x;
target_y = obj_player.y;


if(state == OrgaState.CHASING){
	if(count <= 0){
		path = path_add();
		if(mp_grid_path(global.grid,path,x,y,target_x,target_y,false)){
			path_start(path,0.7,path_action_stop,true);
		}
		count = 60;
	}
}

count --;

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist < view_distance) {
    if (!collision_line(x, y, obj_player.x, obj_player.y, obj_block, true, true)) {

        var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y);
        var angle_diff = angle_difference(last_direction, dir_to_player);

        if (abs(angle_diff) < view_guard_angle / 2) {
			if (state != OrgaState.CHASING) {
			    path_end();
			}
            state = OrgaState.CHASING;
        }
    }
}

if (state == OrgaState.CHASING) {
    if (dist > view_distance + 40) {
        state = OrgaState.PATROL;
        path_end();
    }
}

if (state == OrgaState.PATROL) {
    if (!path_exists(path_id) || path_position >= 1) {

        if (wait_counter <= 0) {

            tx = patrol_points[patrol_index][0];
            ty = patrol_points[patrol_index][1];

            path_id = path_add();

            if (mp_grid_path(global.grid, path_id, x, y, tx, ty, false)) {
                path_start(path_id, 0.5, path_action_stop, false);
            }

            patrol_index++;
            if (patrol_index >= array_length(patrol_points)) {
                patrol_index = 0;
            }

            wait_counter = wait_time;
        }
        else {
            wait_counter--;
        }
    }
}


if (state == OrgaState.CHASING && !global.game_over) {

    if (point_distance(x, y, obj_player.x, obj_player.y) < 12) {

        global.game_over = true;

        obj_player.player_caught();
    }
}
