#macro inventory_slots 20
RowLength = 5;
inventory = array_create(inventory_slots, -1);
itemArray = array_create(inventory_slots,-1);
itemArrayObj = array_create(inventory_slots,-1);
InventoryOn = false;

InvSummoned = false;
CurrentInventorySlot = 0;
for(var i = 0; i < inventory_slots; i++){
	itemArray[i] = spr_Empty;
	itemArrayObj[i] = obj_Fireball;
}
for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
		//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
		var inst = instance_create_layer( x+(j*64)-(RowLength*32),y+(i*64)-96, "Buttons", obj_InventorySlot);
		inventory[(i*RowLength)+j] = inst;
		inst.CurrentItem = itemArray[(i*RowLength)+j];
	//	inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
	//		inst.Slot = (i*RowLength)+j;
				
	}
}

AddSpell =  false;
ActiveSlot = 0;
SpellToAdd = noone;
UpdateSelection = false;
SelectedInventoryList = array_create(inventory_slots+1,noone);
PlaceInSelectedList = 0;