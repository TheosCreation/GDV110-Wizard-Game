/// @description Insert description here
// You can write your code in this editor

image_angle+=10;
i+=10;

if(place_meeting(x,y,obj_Player)){
	obj_Player.Health -=1;

}

if(i >= 180){
	instance_destroy();
}
