
if(count<obj_Wand.SpellCount){
	if(obj_Wand.EquippedSpells[count] != noone){
		instance_create_layer(x,y,"Instances",obj_Wand.EquippedSpells[count]);
	}
	alarm[2] = 3;
	count++;
}
else{
	count = 0;
}