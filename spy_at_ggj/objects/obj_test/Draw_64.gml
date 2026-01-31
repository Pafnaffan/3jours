if (global.steal_in_progress) {

    bar_width = 200;
    bar_height = 20;
    bar_x = display_get_gui_width()/2 - bar_width/2;
    bar_y = (display_get_gui_height() - 60) -50;

    draw_set_color(c_black);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

    progress = (global.steal_timer / global.steal_duration) * bar_width;
    draw_set_color(c_fuchsia);
    draw_rectangle(bar_x, bar_y, bar_x + progress, bar_y + bar_height, false);

    draw_set_color(c_white);
    draw_text(bar_x, bar_y - 20, "Vol de l'idee...");
}
