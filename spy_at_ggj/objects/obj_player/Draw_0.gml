draw_self();
draw_set_font(fnt_text);
pc = instance_nearest(x, y, obj_pc_parent);

if (pc != noone && !pc.stolen) {
    if (point_distance(x, y, pc.x, pc.y) < 24) {
        draw_text(x - 20, y - 32, "E : Voler idee");
    }
}
