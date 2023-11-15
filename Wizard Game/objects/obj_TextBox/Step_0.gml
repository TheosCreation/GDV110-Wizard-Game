
if(WandText){
	switch(WandItem.CurrentWandSprite){
		case spr_WaterWand:
		text = "Gain health on hit";
		break;
		case spr_AirWand:
		text = "Randomly summon a gust of wind on hit";
		break;
		case spr_FireWand:
		text = "Do damage over time on hit";
		break;
		case spr_EarthWand:
		text = "Double your max health";
		break;
	}
	
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
		if(obj_Wand.CurrentWandSprite == spr_EarthWand){
			obj_Player.Health = 100;
			obj_Player.MaxHealth = obj_Player.Health;
		}
		else{
			obj_Player.MaxHealth = 50;
		}
	
	}
	if(WandItem.Deny){
		instance_destroy(WandItem);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		//WandItem.Deny = false;
		WandItem.Confirmed = false;
		WandText = false;
		global.GameFroze = false;
	}
}
else{
text = "Would you like this spell?";
	if(WandItem.Confirm){
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
		instance_destroy(WandItem);
		instance_destroy(DenyButton);
		instance_destroy(ConfirmButton);
		global.GameFroze = false;
		WandItem.Confirmed = false;
		instance_destroy();
	}
}