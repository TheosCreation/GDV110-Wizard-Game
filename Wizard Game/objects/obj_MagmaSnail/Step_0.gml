if(Health <= 0){
    scr_Die();
}
state = states.idle;
NextMoveWall = tilemap_get(tile_map, floor(GoalX / tile_height), floor(GoalY / tile_width));

DistanceX = x- instance_find(obj_Player,0).x;
DistanceY = y-instance_find(obj_Player,0).y;

PlayerInRange = (abs(DistanceX) <= EnemyViewRange and abs(DistanceY) <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (abs(DistanceX) <= EnemyAttackRange and abs(DistanceY) <= EnemyAttackRange )? true : false; 
// checks if player is in range
//current issue is with moved
if!(NextMoveWall) {
	scr_EnemyMoveList(NextMove);
}
else{
	
}

// if enemy hasnt used move and player is in range game is not frozen
if((!global.CanMove) && !Moved && MoveCount == 0 && PlayerInRange && !global.GameFroze){
    // decides to move vertical
	// calculate astar then move enemy
	if(abs(DistanceY) > abs(DistanceX)){
        
		// if player is above enemy move up
        if(sign(DistanceY) != 1){
			//if player in enemys attack range then attack player
			if(PlayerInAttackRange){
				NextMove = "AttackDown";
				GoalY = y+tile_height;
				GoalX = x;

			}
			else{
				NextMove = "MoveDown";
				GoalY = y+tile_height;
				GoalX = x;
				OldY =  y;
				instance_create_layer(x,y,"Instances",obj_FireFloor);
			}
        }
		// if player is below enemy move down
        else{
			if(PlayerInAttackRange){
				NextMove = "AttackUp";
				GoalY = y-tile_height;
				GoalX = x;
			}
			else{
				NextMove = "MoveUp";
				GoalY = y-tile_height;
				GoalX = x;
				OldY =  y;
								instance_create_layer(x,y,"Instances",obj_FireFloor);
			}
        }
    }
	// decides to move horizontal
    else{    
        if(sign(DistanceX) != 1){
			if(PlayerInAttackRange){
				NextMove = "AttackRight";
				GoalX = x+tile_height;
				GoalY = y;
			}
			else{
				NextMove = "MoveRight";
				GoalX = x+tile_height;
				GoalY = y;
				OldX = x;
				instance_create_layer(x,y,"Instances",obj_FireFloor);
			}
        }
        else{
			if(PlayerInAttackRange){
				NextMove = "AttackLeft";
				GoalX = x-tile_height;
				GoalY = y;
			}
			else{
				NextMove = "MoveLeft";
				GoalX = x-tile_height;
				GoalY = y;
				OldX = x;
				instance_create_layer(x,y,"Instances",obj_FireFloor);
			}
        }
    }
    Moved = true;
    alarm[0] = MoveCountdown;
    MoveCount = MoveSpeed;
}
else if((!global.CanMove) && !Moved && MoveCount != 0){
    MoveCount -= 1;
    Moved = true;
    alarm[0] = MoveCountdown;
    
}


//take damage code invul frames and stuff
if(OldHealth > Health && !Invulnerable){
    Invulnerable = true;
    alarm[1] = 20;
    image_blend = c_aqua;
}

    