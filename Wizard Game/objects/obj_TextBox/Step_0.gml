
if(WandText){
	
	TextXOffset = 16;
	TextYOffset = 64;

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
		//instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		WandItem.Deny = false;
		WandItem.Confirmed = false;
		WandText = false;
		global.GameFroze = false;
	}
}
else{
text = "Would you like this spell?";
	TextXOffset = 52;
	TextYOffset = 64;
//	string("Attack slots: {0}\nDefence slots: {1}\nUtility slots: {2}",
//	string(WandItem.AttackSlots), string(WandItem.DefenceSlots) , 
//string(WandItem.UtilitySlots));
	if(WandItem.Confirm){
		//obj_Wand.EquippedSpells[obj_Wand.SpellCount] = WandItem.SelectedSpell;
		obj_Inventory.itemArray[obj_Inventory.CurrentInventorySlot] = WandItem.CurrentSpellSprite;
		obj_Inventory.itemArrayObj[obj_Inventory.CurrentInventorySlot] = WandItem.SelectedSpell;
		obj_Inventory.CurrentInventorySlot++;
		obj_Inventory.SpellToAdd =  WandItem.SelectedSpell;
		obj_Inventory.AddSpell = true;
		instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		Confirmed = true;
		instance_destroy();
	
	}
	if(WandItem.Deny){
		//instance_destroy(WandItem.id);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		WandItem.Deny = false;
		WandItem.Confirmed = false;
		instance_destroy();
	}
}