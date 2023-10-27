

if(obj_Player.xPos = TileX && obj_Player.yPos = TileY){
	global.GameFroze = true;
	var txt = instance_create_layer(x,y,"Buttons",obj_TextBox)
	txt.WandItem = self;
	txt.WandText = true;
}