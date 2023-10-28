x = obj_Player.x;
y = obj_Player.y;





InventoryOn = (keyboard_check_pressed(ord("E"))&& !(global.GameFroze) ? !InventoryOn : InventoryOn);
if(InventoryOn && !InvSummoned ){
	global.GameFroze = true;
	for(var i = 0; i < inventory_slots/RowLength; i++){
		for(var j = 0; j < RowLength; j++){
			draw_sprite(spr_InventorySlot, -1, x+(j*64)-(RowLength*32),y+(i*64)-96);
			//inventory[(i*5)+j] = instance_create_layer( x+(j*64)-(RowLength*32),y+(i*64)-96, "Buttons", obj_InventorySlot);
		}
	}
	InvSummoned = true;

}
/*
if(AddSpell){
	if(SpellToAdd!=noone){
		inventory[ActiveSlot].objInInventory = SpellToAdd;
	}
	AddSpell = false;
	SpellToAdd = noone;
}
