
var i = 0;
if (global.pause) {
	repeat (buttons_p) {
	
		draw_set_font(font_main);
		draw_set_halign(fa_center);
		draw_set_color(c_ltgray);
	
		if (pause_index == i) draw_set_color(c_red);
	
		draw_text(pause_x,pause_y+pause_h*i,button_p[i]);
		i++;	
	}
}