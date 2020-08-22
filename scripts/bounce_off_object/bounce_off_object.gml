function bounce_off_object(object, acceleration, max_speed){
	if(not instance_exists(object)) return;
	var _bounce_direction = point_direction(object.x, object.y, x, y);
	motion_add(_bounce_direction, acceleration);
	speed = speed <= max_speed ? speed: max_speed;
}