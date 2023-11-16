if(!dead){
DistanceX = abs(x+32)- abs(obj_Player.x);
DistanceY = abs(y+32)- abs(obj_Player.y);

PlayerInRange = (abs(DistanceX) <= EnemyViewRange and abs(DistanceY) <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (abs(DistanceX) <= EnemyAttackRange and abs(DistanceY) <= EnemyAttackRange )? true : false; 

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
		var FlownToPosX = xPos+(sign(DistanceX)*tile_width);
		var FlownToPosY = yPos+(sign(DistanceY)*tile_height);
		
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
		Attacked = false;
			Moved = false;
			
	}
	if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved) {
		Attacked = true
		mp_grid_path(global.grid, path, OldX+32, OldY+32, x_cell, y_cell, false);
	    Moved = true;
		instance_create_layer(x,y,"Instances",obj_FireFloor);
		path_start(path, MoveSpeed, path_action_stop, false);
			if(DOT){
			Health-=5;
			DOT = (random_range(0,100)>20)
		}
	
	
	}
	else if(!global.CanMove &&!global.GameFroze && PlayerInAttackRange && !Moved && !Attacked) {
		path_end();
		y = (round((y)/tile_width)*tile_width);
		x = (round((x)/tile_width)*tile_width);
		OldX = x;
	    OldY = y;
		//attack player here
	if(DOT){
			Health-=5;
			DOT = (random_range(0,100)>20)
		}
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
}}
else if(!died){

	died = true;
path_end();
sprite_index = spr_DeathSnail_strip;
	image_index = 0;
}