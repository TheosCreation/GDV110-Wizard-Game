
if(!layer_has_instance("Instances", obj_MagmaSnail)&&!layer_has_instance("Instances", obj_VineRose)) {
	draw_self();
}
else
{
	draw_sprite(spr_DoorClosed, 0, x, y)	
}