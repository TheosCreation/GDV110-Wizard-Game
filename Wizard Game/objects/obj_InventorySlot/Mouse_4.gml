if(obj_Wand.SpellCount<3 && !selected){
	selected = !selected;
}
else if(selected){
	selected = false;
	warning = false;
}
else{
	warning = true;
	alarm[0] = 30;
}
/* Slot = obj_Wand.SpellCount;
 if(selected){
	obj_Wand.EquippedSpells[Slot] = CurrentItemObj;
 }*/