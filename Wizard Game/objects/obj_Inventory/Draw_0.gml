if(InventoryOn){
	draw_self();
	draw_sprite_ext(obj_Wand.CurrentWandSprite, -1, x-90,y-160,2,2,0,c_white,255);
	draw_sprite(spr_Player, -1, x-250, y+64);
}