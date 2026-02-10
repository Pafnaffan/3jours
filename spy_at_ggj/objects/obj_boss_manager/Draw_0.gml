res = video_draw();

if (res[0] == 0) {
	draw_surface(res[1], 0, 0);
}

draw_set_font(fnt_boss);
draw_set_colour(c_fuchsia);



if (qte_active) {	
	word_x = display_get_width()*0.45;
	word_y = display_get_height()*0.9;
	//draw_text(display_get_width()*0.45, display_get_gui_height()*0.9, word)
	 draw_set_colour(c_lime);
	 draw_text(word_x, word_y, string_copy(word, 1, string_length(input)));
	 draw_set_colour(c_fuchsia);
	 
	 var rest = string_delete(word, 1, string_length(input));
    draw_text(word_x + string_width(string_copy(word, 1, string_length(input))), word_y, rest);

    if (wrong_flash > 0) {
        draw_set_colour(c_red);
        draw_text(word_x, word_y - 40, "ERREUR");
    }
}
