draw_self()

if(obj_Door.DoorOpen) {
	if(Direction > 270 || Direction < 90) {
		draw_sprite_ext(spr_DoorIndicator, 0, x, y,1,1, Direction,c_white,1)
	}
	else {
		draw_sprite_ext(spr_DoorIndicator, 0, x, y,1,-1, Direction,c_white,1)
	}
}