draw_self();
draw_sprite(CurrentItem, -1, x+32,y+32);
if(selected){
	draw_sprite(spr_GridGreen,-1,x,y);	
}
if(warning){
	draw_text_colour(x, y, "you can only select 3 spells", c_white, c_white, c_white, c_white, 1);
}