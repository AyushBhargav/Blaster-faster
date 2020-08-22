var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;

var _thrust = mouse_check_button(mb_right);
image_index = _thrust;

var _sprite_width = sprite_get_width(sprite_index) / 2;

function create_blast_particles() {
	var _offset = random_range(-4, 4);
	var _length = -16;
	var _x = _offset + x + lengthdir_x(_length, image_angle);
	var _y = _offset + y + lengthdir_y(_length, image_angle)
	instance_create_layer(_x, _y, "Effects", o_explosion_particle);
}

if(_thrust) {
	motion_add(image_angle, acceleration);
	speed = speed <= max_speed ? speed: max_speed;
	
	repeat(4) {
		create_blast_particles();
	}
} else {
	friction = space_friction;
}


var _fire_laser = mouse_check_button_pressed(mb_left);
var _laser_angle_dt = 60;
if(_fire_laser) {
	create_laser(x, y, _sprite_width, _laser_angle_dt);
	create_laser(x, y, _sprite_width, -_laser_angle_dt);
}