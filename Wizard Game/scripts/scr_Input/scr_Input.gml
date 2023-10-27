
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
MouseDown = mouse_check_button_pressed(mb_left);

if(up) {
	scr_Move(directions.up);
}
if(down) {
	scr_Move(directions.down);
}
if(left) {
	scr_Move(directions.left);
}
if(right) {
	scr_Move(directions.right);
}
if(MouseDown){
	if (state == states.idle){
		if(obj_Pointer.CanAttack) {
			state = states.attacking;
		}
	}
}