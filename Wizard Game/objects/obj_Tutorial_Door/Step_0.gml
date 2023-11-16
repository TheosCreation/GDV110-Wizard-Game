
if distance_to_object(obj_Player) < 30{
	if !instance_exists(obj_dialogue){
		var _dbox = instance_create_layer(x+80,y-(sprite_height/2 + 10),"Instances",obj_dialogue)
		_dbox.textInput = text[currentDialogueIndex];
		_dbox.dx = 3;
		_dbox.dy = 1;
		_dbox.dGrowRate = 0.8;
		
		if currentDialogueIndex < array_length(text)-1{
			currentDialogueIndex += 1 //Goes next text
		}else{
			currentDialogueIndex = 0; //Reset dialogue
		}
	}
}
else{
	if( distance_to_object(instance_nearest(x,y,obj_dialogue)) < 60){
		instance_destroy(instance_nearest(x,y,obj_dialogue));
	}
}