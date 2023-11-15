if(Health <= 0){
    scr_Die();
}
	DistanceX =abs( x- instance_find(obj_Player,0).x);
	DistanceY = abs(y-instance_find(obj_Player,0).y);

	PlayerInRange = (DistanceX <= EnemyViewRange and DistanceY <= EnemyViewRange )? true : false; 
	PlayerInAttackRange = (DistanceX <= EnemyAttackRange and DistanceY <= EnemyAttackRange )? true : false; 
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
		var FlownToPosX = xPos+sign(DistanceX)*(tile_width*1);
		var FlownToPosY = yPos+sign(DistanceY)*(tile_height*1);
		
		if!(tilemap_get(global.tile_map, FlownToPosX/tile_width, FlownToPosY/tile_width)){		
			x = lerp(oldFlyX,FlownToPosX , t);
			y = lerp(oldFlyY,FlownToPosY, t);
		}
		else{
			//lil shake
			x+=(t-0.6)*32;
			//y+=(t-0.5)*32;
		}
		
		if(t >= 1) {
			t = 0;
			Knockback = false;
			FirstKnockback = true;
		}
}
else{
	var x_cell = obj_Player.x;
	var y_cell = obj_Player.y;

	// checks if player is in range
	if(global.CanMove){
		Moved = false;
		Attacked = false;
	}
	 if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved && MoveCooldown > 0){
		MoveCooldown--;
		Moved = true;
		if(DOT){
			Health-=10;
		}
	}
	 if(!global.CanMove && PlayerInRange && !global.GameFroze && PlayerInAttackRange && !Attacked && AttackCooldown > 0){
		AttackCooldown--;
		Attacked = true;
			if(DOT){
			Health-=10;
		}
		
	}
	
	if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved && MoveCooldown <= 0) {
	
		mp_grid_path(global.grid, path, OldX+32, OldY+32, x_cell, y_cell, false);
	    Moved = true;
			if(DOT){
			Health-=10;
		}
	//	instance_create_layer(x,y,"Instances",obj_FireFloor);
		path_start(path, MoveSpeed, path_action_stop, false);

		MoveCooldown = 2;
	}
	
	else if(!global.CanMove &&!global.GameFroze && PlayerInAttackRange && !Moved&&!Attacked&& AttackCooldown <= 0) {
		path_end();
		y = (round((y)/tile_width)*tile_width);
		x = (round((x)/tile_width)*tile_width);
		OldX = x;
	    OldY = y;
		AttackCooldown = 2;
		//attack player here
		for(var a = 0; a <18; a++){
			var spe = instance_create_layer(x+32,y+32,"Instances",obj_WaterAttack);	
			spe.ShootAngle=(a*20)
		}
		//determine attack side then attack
		Attacked = true;
		//slash.image_angle = 90;
	
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
}
//take damage code invul frames and stuff
if(OldHealth > Health){
    OldHealth = Health
    alarm[1] = InvulnerableTimer;
    image_blend = c_aqua;
}