if(keyboard_check(vk_space)||keyboard_check(vk_enter)){
	audio_stop_all();
	room_goto(rm_intro);
}

if(count <= 0 && y > 0){
	if(!audio_is_playing(snd_rock)&& !rock){
		rock = true;
		audio_play_sound(snd_rock,1,false);
	}
	y-=1.5;
}
if(y <= 0){
	image_speed = 1;
}
count--;