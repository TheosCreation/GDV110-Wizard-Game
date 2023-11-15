

draw_sprite_ext(spr_TextBox, 0, WandItem.x-64,WandItem.y+32, 2.5, 2.5, 0, c_white, 1);
//draw_text(WandItem.x-TextXOffset,WandItem.y+TextYOffset, text);
draw_text_transformed(WandItem.x+TextXOffset,WandItem.y+TextYOffset, text, 2, 2, 0)