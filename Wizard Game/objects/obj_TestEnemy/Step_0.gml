

if(!global.CanMove && !Moved){
	DistanceX = x- instance_find(obj_Player,0).x;
	DistanceY = y-instance_find(obj_Player,0).y;
	

	if(abs(DistanceY) > abs(DistanceX)){
		
		if(sign(DistanceY) = 0){
			scr_EnemyMoveList("MoveDown")	
		}
		else{
		scr_EnemyMoveList("MoveUp")	
		}

	}
	else{	
		if(sign(DistanceX) = 0){
			scr_EnemyMoveList("MoveRight")	
		}
		else{
			scr_EnemyMoveList("MoveLeft")	
		}


	}
		
	Moved = true;
	alarm[0] = MoveCountdown;
}



	