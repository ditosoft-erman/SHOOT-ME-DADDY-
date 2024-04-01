var snd = aDeath;

if(!dead){
	audio_play_sound(snd, 1, false);
	dead = true;
	layer = layer_get_id("bodies");
	instance_destroy(other)
	}