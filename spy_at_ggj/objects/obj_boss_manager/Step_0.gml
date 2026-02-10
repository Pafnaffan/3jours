

if (video_get_status() == video_status_playing) {
    video_timer++;
}


if (!qte_active && qte_index < array_length(qte_list)) {
	q = qte_list[qte_index];

    if (video_timer >= q.frame) {
        word = q.word;
        qte_input = "";
        qte_active = true;
		video_pause();
    }
}


if (qte_active) {

	k = keyboard_lastchar;
	word = qte_list[qte_index].word;
	
	if (add_letter && string_length(k) == 1) {
		typed = string_lower(k);
		expected = string_char_at(word, letter_index);
		if (typed == expected) {
			input += typed;	
			letter_index++;
		} else {
			wrong_flash = 10;	
		}
		add_letter = false;
	}
	
	if (input == string_lower(word)) {
		input = "";
		qte_index++;
		letter_index = 1;
		qte_active = false;
		word = "";
	    video_resume();
	}
	
	if (wrong_flash > 0) {
		wrong_flash--;	
	}

}

video_position = video_get_position();

// change that to check if video_timer > (durée vidéo en seconde) * 60 + 60
if (video_position >= video_get_duration())
{
	audio_stop_all();
    video_close();
	room_goto(rm_victory); 
} 