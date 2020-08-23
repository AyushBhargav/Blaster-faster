instance_create_layer(x, y, "Effects", o_explosion_flash);
if(object_index != o_player_ship) {
	if(score >= global.high_score) {
		global.high_score = score;	
	}
	ini_open("save.ini");
	ini_write_real("Scores", "Highscore", global.high_score);
	ini_close();
}