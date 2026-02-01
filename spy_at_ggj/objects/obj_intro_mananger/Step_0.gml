timer--;

if (keyboard_check_pressed(vk_space) && timer <= 0) {
    video_stop();
    room_goto(Room1);
}
