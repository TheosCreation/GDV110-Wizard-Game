if(Health <= 0){
    scr_Die();
}
state = states.idle;


DistanceX = x- instance_find(obj_Player,0).x;
DistanceY = y-instance_find(obj_Player,0).y;

PlayerInRange = (abs(DistanceX) <= EnemyViewRange and abs(DistanceY) <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (abs(DistanceX) <= EnemyAttackRange and abs(DistanceY) <= EnemyAttackRange )? true : false; 
// checks if player is in range
scr_EnemyMoveList(NextMove);

//current issue is with moved
show_debug_message(NextMove);
if((!global.CanMove) && !Moved && MoveCount == 0 && PlayerInRange && !global.GameFroze){
    if(abs(DistanceY) > abs(DistanceX)){
        
        if(sign(DistanceY) != 1){
			if(PlayerInAttackRange){
				NextMove = "AttackDown";
				GoalY = y+tile_height;
			}
			else{
				NextMove = "MoveDown";
				GoalY = y+tile_height;
				OldY =  y;
			}
        }
        else{
			if(PlayerInAttackRange){
				NextMove = "AttackUp";
				GoalY = y-tile_height;
			}
			else{
				NextMove = "MoveUp";
				GoalY = y-tile_height;
				OldY =  y;
			}
        }
    }
    else{    
        if(sign(DistanceX) != 1){
			if(PlayerInAttackRange){
				NextMove = "AttackRight";
				GoalX = x+tile_height;
			}
			else{
				NextMove = "MoveRight";
				GoalX = x+tile_height;
				OldX = x;
			}
        }
        else{
			if(PlayerInAttackRange){
				NextMove = "AttackLeft";
				GoalX = x-tile_height;
			}
			else{
				NextMove = "MoveLeft";
				GoalX = x-tile_height;
				OldX = x;
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

    