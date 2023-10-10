x = obj_Player.x+8;
y = obj_Player.y+8;

image_angle = point_direction(x+8, y+8, mouse_x, mouse_y);

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_Fireball);
}