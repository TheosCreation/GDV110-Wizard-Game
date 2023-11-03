

//drawing of the health
Health_index += (10/60)
if (floor(Health_index) >= 13) {
	Health_index = 0
}
if(global.CanMove or state = states.walking && !global.GameFroze){
	scr_Input();
	if(state == states.walking) {
		t += 0.1;
	
	
		 x = lerp(x, nextTileX* tile_width+32, t);
		 y = lerp(y, nextTileY* tile_height+32, t);
		
		//x = _x * tile_width + tile_width / 2;
		//y = _y * tile_height + tile_height / 2;
		global.CanMove = false; 
				
		if(t >= 1) {
			t = 0;
			state = states.idle;
			global.CanMove = true;;
		}
	}
	else if(state == states.attacking&&!Shot){
		var length =  obj_Wand.SpellCount;
		for(var i = 0; i < length; i++){
			var inst = instance_create_layer(x,y,"Instances",obj_Wand.EquippedSpells[i]);
			inst.ShootAngle += (i-length/2) * 10;
		}
		global.CanMove = false; 
		alarm_set(0, 10);
		Shot = true;
	}
}

//take damage code invul frames and stuff
if(OldHealth > Health && !Invulnerable){
	Health = OldHealth;
    Invulnerable = true;
    alarm[1] = 20;
    image_blend = c_aqua;
}

if(Health <= 0){
	room_goto(MainScreen);
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