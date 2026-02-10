draw_set_font(fnt_dialog);

if (global.dialog_active) {

	var box_y = display_get_gui_height() - 180;

	draw_set_alpha(0.7);
	draw_rectangle(20, box_y, display_get_gui_width() - 20, display_get_gui_height() - 20, false);
	draw_set_alpha(1);

	draw_set_font(fnt_ui);
	draw_set_color(c_white);

	if (global.dialog_step == 0) {
		draw_text(40, box_y + 20, "Vous avez vole une idee !");
		draw_text(40, box_y + 60, "[ESPACE]");
	}

	if (global.dialog_step == 1) {
		draw_text(40, box_y + 20, global.current_idea);
		draw_text(40, box_y + 80, "[ESPACE]");
	}
}

