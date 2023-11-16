if(obj_Wand.SpellCount<3 && !selected){
	selected = true;
}
else if(selected){
		selected = false;
		warning = false;
}
else{
	warning = true;
}
/* Slot = obj_Wand.SpellCount;
 if(selected){
	obj_Wand.EquippedSpells[Slot] = CurrentItemObj;
 }*/