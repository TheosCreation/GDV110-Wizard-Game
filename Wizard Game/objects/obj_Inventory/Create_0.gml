#macro inventory_slots 20
RowLength = 5;
inventory = array_create(inventory_slots, -1);

InventoryOn = false;

InvSummoned = false;

AddSpell =  false;
ActiveSlot = 0;
SpellToAdd = noone;