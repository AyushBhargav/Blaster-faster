function move_towards_player(){
	var _player_ship = instance_find(o_player_ship, 0);
	if(_player_ship == noone) exit;


	var _player_direction =  point_direction(x, y, _player_ship.x, _player_ship.y);
	motion_add(_player_direction, acceleration);
	image_angle = direction;
	speed = speed <= max_speed ? speed: max_speed;
}