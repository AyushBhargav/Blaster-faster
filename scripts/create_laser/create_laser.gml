function create_laser(x, y, distance, angle) {
	var _x = x + lengthdir_x(distance, image_angle - angle);
	var _y = y + lengthdir_y(distance, image_angle - angle);
	
	var _laser = instance_create_layer(_x, _y, "Instances", o_laser);
	_laser.direction = image_angle;
	_laser.speed = 8;
	_laser.image_angle = image_angle;
}