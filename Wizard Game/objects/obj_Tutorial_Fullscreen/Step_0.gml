if distance_to_object(obj_Player) < 30{
	if keyboard_check_pressed(ord("W")or ord("A")or ord("S") or ord("D")){
		if !instance_exists(obj_dialogue){
			var _dbox = instance_create_layer(x-100,y-sprite_height/2,"Instances",obj_dialogue)
			_dbox.textInput = text[currentDialogueIndex];
			_dbox.dx = 3;
			_dbox.dy = 1;
			_dbox.dGrowRate = 0.25;
			
			if currentDialogueIndex < array_length(text)-1{
				currentDialogueIndex += 1 //Goes next text
			}else{
				currentDialogueIndex = 0; //Reset dialogue
			}
		}else{
			instance_destroy(obj_dialogue);
		}
	}
}