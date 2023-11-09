
if(place_meeting(x,y,obj_Player) && 
!layer_has_instance("Instances", obj_VineRose)
&&!layer_has_instance("Instances", obj_MagmaSnail)) {

	switch(room){
		case Tutorial:
			room = Game;
			break;
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
		instance_destroy(obj_Wand);
			instance_destroy(obj_Inventory);
			instance_destroy(obj_InventorySlot);
			instance_destroy(obj_Player);
			room = Win;
			break;
	}
	obj_Player.SwitchLevels = true;
}