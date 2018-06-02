//Collisions
if !place_meeting(x, y+1, obj_wall) {
	vspeed_ += gravity_;	
}

if (vspeed_ < 2) {
	if place_meeting(x+16,y,obj_wall) && keyboard_check(ord("A")) canJump = true;
	if place_meeting(x-16,y,obj_wall) && keyboard_check(ord("D")) canJump = true;	
}

//Collisions again
if place_meeting(x+hspeed_, y, obj_wall) {
	while !place_meeting(x+sign(hspeed_), y, obj_wall) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}

x += hspeed_;

if place_meeting(x, y+vspeed_, obj_wall) {
	while !place_meeting(x, y+sign(vspeed_), obj_wall) {
		y += sign(vspeed_);
	}
	canJump = true;
	vspeed_ = 0;
}
y += vspeed_;