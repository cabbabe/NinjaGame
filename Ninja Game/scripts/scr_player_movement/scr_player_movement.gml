//Checks if pause is on         use if you want something to pause
if (global.pause) exit;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0 {
	hspeed_	+= hinput*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

//Jump
if (keyboard_check_pressed(vk_space) && canJump) { canJump = false; vspeed_ = jumpheight_; }

scr_player_collisions();