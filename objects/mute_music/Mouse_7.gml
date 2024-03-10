global.music_off = true;
audio_stop_all();
instance_create_layer(x, y, layer, turn_on_music);
instance_destroy(obj_music_player);
instance_destroy();



