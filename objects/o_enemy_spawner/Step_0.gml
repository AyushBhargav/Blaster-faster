var _enemy_count = instance_number(o_ship_parent) - 1;

if(_enemy_count == 0) {
	var _enemy_to_spawn = 3 + score div 100;
	generate_enemies(o_enemy_one, _enemy_to_spawn);
	var _enemy_to_spawn = 1 + score div 200;
	generate_enemies(o_enemy_two, _enemy_to_spawn);
}