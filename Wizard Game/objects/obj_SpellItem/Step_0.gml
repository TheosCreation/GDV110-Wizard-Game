

if(place_meeting(x,y,obj_Player)&&!CreatedText){
	global.GameFroze = true;
	var txt = instance_create_layer(x,y,"Buttons",obj_TextBox)
	txt.WandText = false;
	txt.WandItem = self;
	CreatedText = true;
}