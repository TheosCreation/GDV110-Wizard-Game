
if(global.CanMove or state = states.walking){
	scr_Input();
	if(state == states.walking) {
		t += 0.1;
	
		show_debug_message(t);
		 x = lerp(x, nextTileX* tile_width+32, t);
		 y = lerp(y, nextTileY* tile_height+32, t);
		
		//x = _x * tile_width + tile_width / 2;
		//y = _y * tile_height + tile_height / 2;
		global.CanMove = false; 
		//alarm_set(0, CanMoveCD);		
		if(t >= 1) {
			t = 0;
			state = states.idle;
			global.CanMove = true;;
		}
	
	}
}

	

/*	
if (right == 1 and global.CanMove == true) {
	GoalPosX = x+16;
}

if (left == 1 and global.CanMove == true) {
	GoalPosX = x-16;
	if(!collision_point(GoalPosX, y, obj_Wall, 0, 0)){
		move_towards_point(GoalPosX,y,MoveSpeed);
		turn += 1;
		alarm_set(0, CanMoveCD);
		global.CanMove = false;
	}
}
if (up == 1 and global.CanMove == true) {
	GoalPosY = y-16;
	if(!collision_point(x, GoalPosY, obj_Wall, 0, 0)){
		move_towards_point(x,GoalPosY,MoveSpeed);
		turn += 1; 
		alarm_set(0, CanMoveCD); 
		global.CanMove = false;
	}
}
if (down == 1 and global.CanMove == true)
{ 
	GoalPosY = y+16;
	if(!collision_point(x, GoalPosY, obj_Wall, 0, 0)){
		move_towards_point(x,GoalPosY,MoveSpeed);
		turn += 1;
		alarm_set(0, CanMoveCD);
		global.CanMove = false;
	}
}
*/

/*
if(y = GoalPosY){
	speed = 0;
	GoalPosY = 378276;
}
if(x = GoalPosX){
	speed = 0;
	GoalPosX = 378276;
}

if(global.CanMove == true and global.CanMove == 1 and shoot){
	global.CanMove = false;
	alarm_set(0, CanMoveCD);
	instance_create_layer(x,y,"Instances",obj_Fireball);
}
*/
//idle
//if (left == 0 and right == 0 and up == 0 and down == 0) { sprite_index = lastSprite; image_speed = 0;}