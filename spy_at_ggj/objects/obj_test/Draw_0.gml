draw_self();

pc = instance_nearest(x, y, obj_pc_parent);

if (pc != noone) {
    if (point_distance(x, y, pc.x, pc.y) < 24) {
        draw_text(x - 20, y - 32, "E : Voler idée");
    }
}
