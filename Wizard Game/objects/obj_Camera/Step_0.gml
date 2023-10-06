

halfViewWidth = camera_get_view_width(view_camera[0] / 2);
halfViewHeight = camera_get_view_height(view_camera[0] / 2);

if (follow != noone) {
	camera_set_view_pos(view_camera[0], follow.x - halfViewWidth, follow.y - halfViewHeight);
}