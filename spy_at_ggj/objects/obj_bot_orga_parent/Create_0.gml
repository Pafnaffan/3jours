enum OrgaState {
	PATROL,
	CHASING
}

state = OrgaState.PATROL;

count = 60;

target_x = 0;
target_y = 0;

spd = 1;

bot_sprite_up = spr_bot1_up;
bot_sprite_down = spr_bot1_down;
bot_sprite_left = spr_bot1_left;
bot_sprite_right = spr_bot1_right;


view_distance = 50;
view_guard_angle = 60;
// 0 = droite, 90 = haut, 180 = gauche, 270 = bas
last_direction = 270;

patrol_points = [
    [128, 128],
    [512, 128],
    [512, 384],
    [128, 384]
];

patrol_index = 0;

wait_time = 60;
wait_counter = 0;

path_id = -1;

prev_x = x;
prev_y = y;

played_repere_audio = false;