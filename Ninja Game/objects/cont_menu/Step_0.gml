input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_ = menu_pages[page], ds_height = ds_grid_height(ds_);

if (inputting) {
	switch(ds_[# 1, menu_option[page]]){
		case menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) - keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				ds_[# 3, menu_option[page]] += hinput;
			}
			
		break;
		case menu_element_type.slider:
		case menu_element_type.toggle:
		case menu_element_type.input:
			break;
	}
} else {
	var ochange = input_down_p - input_up_p;
if(ochange != 0){
	audio_play_sound(snd_menu_switch,1,false);
	menu_option[page] += ochange;
	if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
	if(menu_option[page] < 0) { menu_option[page] = ds_height -1; }
}
}

if(input_enter_p){
	switch(ds_[# 1, menu_option[page]]){
		case menu_element_type.page_transfer: page = ds_[# 2,menu_option[page]]; break;
		case menu_element_type.script_runner: break;
		case menu_element_type.shift:
		case menu_element_type.slider:
		case menu_element_type.toggle:
		case menu_element_type.input:
			inputting = !inputting;
			break;
	}
	
	//Audio
	audio_play_sound(snd_menu_switch,1,false);
}