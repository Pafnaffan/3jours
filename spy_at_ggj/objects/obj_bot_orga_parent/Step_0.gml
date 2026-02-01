if (hspeed > 0) last_dir = 0;
if (hspeed < 0) last_dir = 180;
if (vspeed < 0) last_dir = 90;
if (vspeed > 0) last_dir = 270;


target_x = obj_player.x;
target_y = obj_player.y;

if (state == OrgaState.PATROL) {
    if (count <= 0) {
        path = path_add();
        if (mp_grid_path(global.grid, path, x, y, target_x, target_y, false)) {
            path_start(path, 1, path_action_stop, true);
        }
        count = 60;
    }
}


if(state == OrgaState.CHASING){
	if(count <= 0){
		path = path_add();
		if(mp_grid_path(global.grid,path,x,y,target_x,target_y,false)){
			path_start(path,1,path_action_stop,true);
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
