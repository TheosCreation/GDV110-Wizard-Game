x = obj_Player.x;
y = obj_Player.y;

if(keyboard_check_pressed(ord("E"))){
	if(InventoryOn){
		global.GameFroze = false;
		InventoryOn = false;
	}
	else{
		global.GameFroze = true;
		InventoryOn = true;
	}
}
if(UpdateSelection){
	obj_Wand.EquippedSpells = array_create(inventory_slots,-1);
	obj_Wand.SpellCount = 0;
	for(var s = 0; s<inventory_slots;s++){
		if(SelectedInventoryList[s]!=-4){
			obj_Wand.EquippedSpells[obj_Wand.SpellCount] = SelectedInventoryList[s].CurrentItemObj;
			obj_Wand.SpellCount++;
		}
		else{
			obj_Wand.EquippedSpells[obj_Wand.SpellCount] = obj_Empty;
		}
	}
	UpdateSelection = false;
}

//InventoryOn = (&& !(global.GameFroze) ? !InventoryOn : InventoryOn);
if(InventoryOn && !InvSummoned ){
	//global.GameFroze = true;
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
		//	draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			//inventory[(i*5)+j] = instance_create_layer( x+(j*64)-(RowLength*32),y+(i*64)-96, "Buttons", obj_InventorySlot);
			//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			var inst = inventory[(i*RowLength)+j];

			inventory[(i*RowLength)+j]._x = x+(j*64)-(RowLength*32);
			inventory[(i*RowLength)+j]._y = y+(i*64)-96;
			
			inst.CurrentItem = itemArray[(i*RowLength)+j];
			inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
		//		inst.Slot = (i*RowLength)+j;
				
		}
	}
	InvSummoned = true;

}
else if (!InventoryOn){
		
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
			//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			//var inst = inventory[(i*RowLength)+j];

			inventory[(i*RowLength)+j]._x = 155667;
			inventory[(i*RowLength)+j]._y = 345678;
			
		//	inst.CurrentItem = itemArray[(i*RowLength)+j];
		//	inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
		//		inst.Slot = (i*RowLength)+j;
				
		}
	}
	
		InvSummoned = false
}
else if (InventoryOn){

		//const inv code here
		//always check if inv is on before running inv code
	
}

/*
if(AddSpell){
	if(SpellToAdd!=noone){
		inventory[ActiveSlot].objInInventory = SpellToAdd;
	}
	AddSpell = false;
	SpellToAdd = noone;
}
else if (!InventoryOn){
		
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
			//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			//var inst = inventory[(i*RowLength)+j];

			inventory[(i*RowLength)+j]._x = 155667;
			inventory[(i*RowLength)+j]._y = 345678;
			
		//	inst.CurrentItem = itemArray[(i*RowLength)+j];
		//	inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
		//		inst.Slot = (i*RowLength)+j;
				
		}
	}
		InvSummoned = false
}
else if (InventoryOn){
		//const inv code here
		//always check if inv is on before running inv code
	
}

x = obj_Player.x;
y = obj_Player.y;

InventoryOn = (keyboard_check_pressed(ord("E"))&& !(global.GameFroze) ? !InventoryOn : InventoryOn);
if(InventoryOn && !InvSummoned ){
	global.GameFroze = true;
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
			//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			var inst = inventory[(i*RowLength)+j];

			inventory[(i*RowLength)+j]._x = x+(j*64)-(RowLength*32);
			inventory[(i*RowLength)+j]._y = y+(i*64)-96;
			
			inst.CurrentItem = itemArray[(i*RowLength)+j];
		//	inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
		//		inst.Slot = (i*RowLength)+j;
				
		}
	}
	InvSummoned = true;
	
}
else if (!InventoryOn){
		
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
			//draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			//var inst = inventory[(i*RowLength)+j];

			inventory[(i*RowLength)+j]._x = 155667;
			inventory[(i*RowLength)+j]._y = 345678;
			
		//	inst.CurrentItem = itemArray[(i*RowLength)+j];
		//	inst.CurrentItemObj = itemArrayObj[(i*RowLength)+j];
		//		inst.Slot = (i*RowLength)+j;
				
		}
	}
		InvSummoned = false
}
else if (InventoryOn){
		//const inv code here
		//always check if inv is on before running inv code
	
}
