if(Confirm){
	obj_Wand.AttackSlots = WandItem.AttackSlots;
	obj_Wand.DefenceSlots = WandItem.DefenceSlots;
	obj_Wand.UtilitySlots = WandItem.UtilitySlots
	obj_Wand.CurrentWandSprite = WandItem.CurrentWandSprite;
	instance_destroy(WandItem.id);
	instance_destroy(DenyButton);
	instance_destroy(ConfirmButton);
	global.GameFroze = false;
	instance_destroy();
	
}
if(Deny){
	instance_destroy(WandItem.id);
	instance_destroy(DenyButton);
	instance_destroy(ConfirmButton);
	global.GameFroze = false;
	instance_destroy();
}