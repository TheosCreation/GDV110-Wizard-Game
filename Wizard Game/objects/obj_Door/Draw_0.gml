
if(!layer_has_instance("Instances", obj_MagmaSnail)&&!layer_has_instance("Instances", obj_VineRose)&& !layer_has_instance("Instances", obj_Tornado)&& !layer_has_instance("Instances", obj_WaterTurtle)) {
	draw_self();
}
else
{
	draw_sprite(spr_DoorClosed, 0, x, y)	
}