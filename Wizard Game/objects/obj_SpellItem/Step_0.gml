
if(obj_Player.xPos = TileX && obj_Player.yPos = TileY&&!CreatedText){
	global.GameFroze = true;
	var txt = instance_create_layer(obj_Player.x,obj_Player.y,"Buttons",obj_TextBox)
	txt.WandText = false;
	txt.WandItem = self;
	CreatedText = true;
	
	
}