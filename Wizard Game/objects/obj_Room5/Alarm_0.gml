/// @description Insert description here
// You can write your code in this editor


scr_Rooms()

if(CollisionCheck){
	if(place_empty(x,y)){
		CollisionCheck = false;
	}
	else{
		instance_destroy();
	}
}