if (!variable_global_exists("music_off"))
{
	global.music_off = false;
}

if (!global.music_off) {
	if (!audio_is_playing(_03_short)){
		audio_play_sound(_03_short, 1, true);
	}
} else {
	instance_destroy();
}



