
if(obj_Player.xPos = TileX && obj_Player.yPos = TileY && !layer_has_instance("Instances", obj_MagmaSnail)) {
	if(CurrentLevel = 1){
		room_goto(Level2);
	}
	else{
		room_goto(Win);
	}
}