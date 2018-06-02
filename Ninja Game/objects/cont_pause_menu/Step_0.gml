menu_move_p = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

pause_index += menu_move_p;
if (pause_index < 0) pause_index = buttons_p - 1;
if (pause_index > buttons_p -1) pause_index = 0;

if (pause_index != last_selected_p) audio_play_sound(snd_menu_switch,1,false);

last_selected_p = pause_index;