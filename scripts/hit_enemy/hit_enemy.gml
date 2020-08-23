function hit_enemy(s) {
	instance_destroy();
	other.armor -= 1;
	if(other.armor <= 0) {
		score += s;
		audio_play_sound(a_hit, 2, false);
	}
}