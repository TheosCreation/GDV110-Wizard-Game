// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Move(_MoveDirection){
	//up will go up, down will go down, left with go left, right will go right
	switch(_MoveDirection){
		case "up":
			y-=16;
			break;
		case "down":
			y+=16;
			break;
		case "left":
			x-=16;
			break;
		case "right":
			x+=16;
			break;
		default:
			show_debug_message("wrong move input")		;
			break;
	}
}