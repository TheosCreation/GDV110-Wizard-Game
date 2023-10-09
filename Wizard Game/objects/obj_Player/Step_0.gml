
if(global.CanMove){
	scr_Input();
	if(state == states.walking) {
		walk_anim_time += delta_time/1000000;
		
		var t = walk_anim_time / walk_anim_length;
		
		if(t >= 1) {
			walk_anim_time = 0;
			t = 1;
			state = states.idle;
		}
		var _x = lerp(xPos, nextTileX, t);
		var _y = lerp(yPos, nextTileY, t);
		
		x = _x * tile_width;
		y = _y * tile_height;
		alarm_set(0, CanMoveCD);
		global.CanMove = false; 
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