
direction = ShootAngle;
speed = BulletSpeed;
image_angle = direction+180;


if(place_meeting(x,y,obj_Player)&&!obj_Player.Invulnerable){
	obj_Player.Health -=10-obj_Player.Defense;
	obj_Player.Invulnerable = true;
}
