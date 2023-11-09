/// @description Insert description here
// You can write your code in this editor

//image_angle+=5;
i+=2;


if(place_meeting(x,y,obj_Player)&&!obj_Player.Invulnerable){
	obj_Player.Health -=10-obj_Player.Defense;
	obj_Player.Invulnerable = true;
}

if(i >= 45){
	instance_destroy();
}
