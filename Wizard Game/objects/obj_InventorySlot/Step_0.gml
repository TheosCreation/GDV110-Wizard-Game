/// @description Insert description here
// You can write your code in this editor

if(selected&&UpdateSelection){
	Slot = obj_Inventory.PlaceInSelectedList;
	obj_Inventory.SelectedInventoryList[Slot] = self;
	
	obj_Inventory.PlaceInSelectedList++;
	UpdateSelection = false;
	obj_Inventory.UpdateSelection = true;
	
}
else if(!selected&&!UpdateSelection){
	obj_Inventory.SelectedInventoryList[Slot] = noone;
	obj_Inventory.PlaceInSelectedList--;
	UpdateSelection = true;
	obj_Inventory.UpdateSelection = true;
}

x = _x ;
y = _y ;