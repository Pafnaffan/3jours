timer--;

if (keyboard_check_pressed(vk_space) && timer <= 0) {
	skipped = true;
    video_close();
    room_goto(Room1);
}

if (video_get_status() != video_status_playing && !skipped) {
	game_end();	
}