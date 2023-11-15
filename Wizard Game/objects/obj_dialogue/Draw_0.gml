//draw the dialogue box
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

if image_xscale < dx{
	image_xscale += dGrowRate;
}
if image_yscale < dy{
	image_yscale += dGrowRate;
}

//sets dialogue
if textInput != noone
{
	var _text = textInput;
	var _textLength = string_length(_text);
	var _textOffset = 5;
	var _dialogue = string_copy(_text,1,currentString)
	
	if currentString < _textLength{
		dCharacterTimer -= 1
	
	if dCharacterTimer <= 0{
			currentString += 1;
			dCharacterTimer = 1;
		}
		
	}

}

draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_color(c_black);
draw_text_ext(x-sprite_width/2 +_textOffset,y-sprite_height+_textOffset,string(_dialogue),6,sprite_width-_textOffset);