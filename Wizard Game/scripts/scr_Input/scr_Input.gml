
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

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