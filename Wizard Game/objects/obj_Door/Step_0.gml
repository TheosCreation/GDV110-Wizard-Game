
if(obj_Player.xPos = TileX && obj_Player.yPos = TileY && !layer_has_instance("Instances", obj_MagmaSnail)) {

	switch(room){
		case Game:
			room = Level2;
			break;
		case Level2:
			room = Level3;
			break;
		case Level3:
			room = Level4;
			break;
		case Level4:
			room = Level5;
			break;
		case Level5:
			room = Win;
			break;
	}
	obj_Player.SwitchLevels = true;
}