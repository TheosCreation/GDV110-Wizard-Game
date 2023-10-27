
if(!layer_has_instance("Instances", obj_MagmaSnail)) {
	draw_sprite(spr_DoorOpen, 0, x, y)
}else
{
	draw_sprite(spr_DoorClosed, 0, x, y)	
}