if(CollisionCheck){
	if(place_empty(x,y)){
		CollisionCheck = false;
	}
	else{
		instance_destroy();
	}
}