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
//	itemArrayObj[i] = obj_Fireball;
}
