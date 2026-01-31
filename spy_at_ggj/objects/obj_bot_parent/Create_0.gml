enum BotState {
    STUN,
	PANIC,
	MOVING,
	CALLINGHELP
}

state = BotState.STUN;

count = 60;

pc_x_position = 0;
pc_y_position = 0;

target_x = 0;
target_y = 0;

spd = 1;
moving = false;

image_speed = 0;
bot_sprite_up = spr_test;
bot_sprite_down = spr_test;
bot_sprite_left = spr_test;
bot_sprite_right = spr_test;