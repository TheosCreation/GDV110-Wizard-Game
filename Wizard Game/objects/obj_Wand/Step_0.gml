x = obj_Player.x;
y = obj_Player.y-32;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_Fireball);
}