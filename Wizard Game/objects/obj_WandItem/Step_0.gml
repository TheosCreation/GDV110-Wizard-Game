

if(place_meeting(x,y,obj_Player)){
	global.GameFroze = true;
	instance_create_layer(x,y,"Instances",obj_TextBox)
}