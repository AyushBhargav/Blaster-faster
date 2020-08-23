display_set_gui_size(640, 360);
draw_set_font(f_one);
score = 0;
displayed_score = 0;

#region Soundfx
if(!audio_is_playing(a_music)) {
	audio_play_sound(a_music, 5, true);
}
#endregion