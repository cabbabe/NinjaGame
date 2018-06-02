/// @description State set up

//Health
if global.pHealth < 0 {
	global.pHealth = 0;
}
if global.pHealth > 6 {
	global.pHealth = 6;
}

if (global.pHealth = 0) {
	room_restart();	
}

switch (state)
{
	case states.movement: scr_player_movement(); break;
}
