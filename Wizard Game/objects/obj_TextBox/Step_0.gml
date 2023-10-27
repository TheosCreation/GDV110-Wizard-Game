
if(WandText){
	text = 
	string("Attack slots: {0}\nDefence slots: {1}\nUtility slots: {2}",
	string(WandItem.AttackSlots), string(WandItem.DefenceSlots) , 
	string(WandItem.UtilitySlots));
	if(WandItem.Confirm){
		obj_Wand.AttackSlots = WandItem.AttackSlots;
		obj_Wand.DefenceSlots = WandItem.DefenceSlots;
		obj_Wand.UtilitySlots = WandItem.UtilitySlots;
		obj_Wand.CurrentWandSprite = WandItem.CurrentWandSprite;
		instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		instance_destroy();
	
	}
	if(WandItem.Deny){
		instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		instance_destroy();
	}
}
else{
text = "FIREBALL OR WATER IDK";
//	string("Attack slots: {0}\nDefence slots: {1}\nUtility slots: {2}",
//	string(WandItem.AttackSlots), string(WandItem.DefenceSlots) , 
//string(WandItem.UtilitySlots));
	if(WandItem.Confirm && !Confirmed){
		obj_Wand.EquippedSpells[obj_Wand.SpellCount] = WandItem.SelectedSpell;
		instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		obj_Wand.SpellCount+=1;
		Confirmed = true;
		instance_destroy();
	
	}
	if(WandItem.Deny){
		instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		instance_destroy();
	}
}