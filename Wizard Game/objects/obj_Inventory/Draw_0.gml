if(InventoryOn){
	draw_self();
	draw_sprite_ext(obj_Wand.CurrentWandSprite, -1, x-64,y-160,2,2,0,c_white,255);
	draw_sprite(spr_Player, -1, x-200, y+64);
}