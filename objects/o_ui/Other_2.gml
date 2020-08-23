ini_open("save.ini");
global.high_score = ini_read_real("Scores", "Highscore", 0);
ini_close();