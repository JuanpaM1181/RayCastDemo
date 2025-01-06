// Right and left
if (keyboard_check(ord("D"))) phy_speed_x = move_speed;
if (keyboard_check(ord("A"))) phy_speed_x = -move_speed;

// Down and up
if (keyboard_check(ord("S"))) phy_speed_y = move_speed;
if (keyboard_check(ord("W"))) phy_speed_y = -move_speed;

//laser
var laser_dir = point_direction(x, y, mouse_x, mouse_y);
laserEndX = x + lengthdir_x(laserlength, laser_dir);
laserEndY = y + lengthdir_y(laserlength, laser_dir);

if(mouse_check_button(mb_left))
{
	var hits = physics_raycast(x,y, laserEndX, laserEndY, obj_enemy, true);
	
	if(array_length(hits) > 0)
	{
		array_foreach(hits, function(_inst)
		{
			instance_destroy(_inst.instance);
			laserlength += 20;
		});
	}
}