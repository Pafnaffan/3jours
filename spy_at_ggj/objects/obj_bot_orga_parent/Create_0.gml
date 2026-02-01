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