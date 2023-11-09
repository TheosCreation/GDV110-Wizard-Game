x += move_dir*move_spd;
if (bbox_left <= 0 || bbox_right >= room_width) {
    move_dir = -move_dir;
}

if xprevious < x{
	image_xscale = -1;
}else if xprevious > x{
	image_xscale = 1;
}