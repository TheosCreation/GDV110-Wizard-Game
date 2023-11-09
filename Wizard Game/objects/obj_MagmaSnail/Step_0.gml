if(Health <= 0){
    scr_Die();
}
if(Knockback){
	path_end();
		if(FirstKnockback){
			oldFlyX = x;
			oldFlyY = y;
			xPos = (round((x)/tile_width)*tile_width);
			yPos = (round((y)/tile_height)*tile_height);
			FirstKnockback = false;
		}
		t += 0.2;
	
	
		 x = lerp(oldFlyX, xPos+(((xPos)-obj_Player.xPos)/10), t);
		 y = lerp(oldFlyY, yPos+(((yPos)-obj_Player.yPos)/10), t);
		
		//x = _x * tile_width + tile_width / 2;
		//y = _y * tile_height + tile_height / 2;
		
				
		if(t >= 1) {
			t = 0;
			Knockback = false;
			FirstKnockback = true;
		}
}
else{
	var x_cell = obj_Player.x;
	var y_cell = obj_Player.y;
	DistanceX = abs(abs(x+32)- abs(instance_find(obj_Player,0).x));
	DistanceY = abs(abs(y+32)- abs(instance_find(obj_Player,0).y));

	PlayerInRange = (DistanceX <= EnemyViewRange and DistanceY <= EnemyViewRange )? true : false; 
	PlayerInAttackRange = (DistanceX <= EnemyAttackRange and DistanceY <= EnemyAttackRange )? true : false; 

	// checks if player is in range
	if(global.CanMove){
		Attacked = false;
			Moved = false;
	}
	if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved) {
		Attacked = true
		mp_grid_path(global.grid, path, OldX+32, OldY+32, x_cell, y_cell, false);
	    Moved = true;
		instance_create_layer(x,y,"Instances",obj_FireFloor);
		path_start(path, MoveSpeed, path_action_stop, false);
	
	
	
	}
	else if(!global.CanMove &&!global.GameFroze && PlayerInAttackRange && !Moved && !Attacked) {
		path_end();
		y = (round((y)/tile_width)*tile_width);
		x = (round((x)/tile_width)*tile_width);
		OldX = x;
	    OldY = y;
		//attack player here

		var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
		slash.image_blend = EnemyColor;
		//determine attack side then attack

		Attacked = true;
	}
	else if(abs(x+y) >= abs(OldX+OldY+64)|| abs(x+y) <= abs(OldX+OldY-64)){
	    path_end();
		y = (round((y)/tile_width)*tile_width);
		x = (round((x)/tile_width)*tile_width);
	    OldX = x;
	    OldY = y;

	}
	else{
		y = (round((y)/tile_width)*tile_width);
		x = (round((x)/tile_width)*tile_width);
	
	}
	
	//take damage code invul frames and stuff
	if(OldHealth > Health){
	    OldHealth = Health
	    alarm[1] = InvulnerableTimer;
	    image_blend = c_aqua;
	}
}