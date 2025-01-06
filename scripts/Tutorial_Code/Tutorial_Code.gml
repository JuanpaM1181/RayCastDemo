return;

// Laser
laser_length = 100;
laser_dir = 0;
laser_end_x = x;
laser_end_y = y;



// Laser
laser_dir = point_direction(x, y, mouse_x, mouse_y);
laser_end_x = x + lengthdir_x(laser_length, laser_dir);
laser_end_y = y + lengthdir_y(laser_length, laser_dir);

if (mouse_check_button(mb_left))
{
	var _hits = physics_raycast(x, y, laser_end_x, laser_end_y, obj_enemy, true);

	if (array_length(_hits) > 0)
	{
		show_debug_message(array_length(_hits));
		array_foreach(_hits, function(_inst)
		{
			instance_destroy(_inst.instance);
			obj_player.laser_length += 20;
		});
	}
}


// Draw laser
draw_line_width(x, y, laser_end_x, laser_end_y, 4);

