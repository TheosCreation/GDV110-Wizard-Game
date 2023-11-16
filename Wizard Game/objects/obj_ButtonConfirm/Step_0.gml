
_mouseX = device_mouse_x_to_gui(0);
_mouseY = device_mouse_y_to_gui(0);

if(point_in_rectangle(_mouseX, _mouseY, x, y, x+ width, y+height)) {
	if(mouse_check_button_pressed(mb_left)) {
		obj_TextBox.WandItem.Confirm = true;
		instance_destroy();
	}
}