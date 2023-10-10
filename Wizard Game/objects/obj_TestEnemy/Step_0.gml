if(Health <= 0){
	scr_Die();
}
state = states.idle;
show_debug_message(Health);

if((!global.CanMove) && !Moved && MoveCount == 0){
	
	DistanceX = x- instance_find(obj_Player,0).x;
	DistanceY = y-instance_find(obj_Player,0).y;

	if(abs(DistanceY) > abs(DistanceX)){
		
		if(sign(DistanceY) != 1){
			scr_EnemyMoveList("MoveDown")
		}
		else{
		scr_EnemyMoveList("MoveUp")	
		}

	}
	else{	
		if(sign(DistanceX) != 1){
			scr_EnemyMoveList("MoveRight")	
		}
		else{
			scr_EnemyMoveList("MoveLeft")	
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

	