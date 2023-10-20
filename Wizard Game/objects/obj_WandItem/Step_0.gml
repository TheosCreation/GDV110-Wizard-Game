

if(place_meeting(x,y,obj_Player)){
	global.GameFroze = true;
	var txt = instance_create_layer(x,y,"Instances",obj_TextBox)
	txt.WandItem = self;
}