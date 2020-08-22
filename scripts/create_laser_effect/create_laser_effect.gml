function create_laser_effect(x, y){
	var _effect = instance_create_layer(x, y, "Effects", o_explosion_particle);
	_effect.image_xscale = 0.8;
	_effect.image_yscale = 0.8;
}