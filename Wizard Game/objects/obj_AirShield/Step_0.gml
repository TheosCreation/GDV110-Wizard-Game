x=obj_Player.x;
y = obj_Player.y-32;

if(!global.CanMove){
	if(countdown){
	 count--;
	 countdown = false;
	}
}
else{
 countdown = true;
}
if(count<=0){
	obj_Player.Defense--;
	instance_destroy();
}