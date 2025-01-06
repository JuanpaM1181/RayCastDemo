var _num = irandom_range(3, 6);
var _dir = choose(0, 45, 90, 135);
var _dist = 100;

var _x = choose(-400, room_width + 400);
var _y = irandom_range(100, room_height - 100);

repeat (_num)
{
	instance_create_layer(_x, _y, "Instances", obj_enemy);
	_x += lengthdir_x(100, _dir);
	_y += lengthdir_y(100, _dir);
}

alarm[0] = 80