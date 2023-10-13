// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function scr_Move(_MoveDirection,_initX,_initY){

	//up will go up, down will go down, left with go left, right will go right
	switch(_MoveDirection){
		case "up":
			move_towards_point( x, _initY-16, 1 );
			break;
		case "down":
			move_towards_point( x, _initY+16, 1 );
			break;
		case "left":
			move_towards_point( _initX-16, y , 1 );
			break;
		case "right":

			break;
		default:
			show_debug_message("wrong move input")		;
			break;
	}
	//check if the certain alarm is true, player will start alarm, alarm will recurse untill finished 
}
*/
function scr_Move(dir){
	var components = global.components[dir];
	//grabs components from tiles script
	var dx = components[0];
	var dy = components[1];
	//sets the future change to them 
	if(state == states.idle) {
		if!(tilemap_get(tile_map, xPos + dx, yPos + dy)) {
			previousTileX = xPos;
			previousTileY = yPos;
			//might need to know prev tile in future
			
			nextTileX = xPos + dx;
			nextTileY = yPos + dy;
			
			
			xPos = nextTileX;
			yPos = nextTileY;
			//this is the xpos will be set instantly 
			
			state = states.walking;
			//changes state for animation and checking
		}
	}
}