var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (xMove !=0 || yMove != 0){
sprite_index = sPlayerRun_strip7;
} else{
	sprite_index = sPlayerIdle_strip4;
}

if( xMove !=0) image_scale = xMove;

x += xMove * spd;
y += yMove * spd;


cd--;

if(cd <= 0 && mouse_check_button(mb_left)){
	cd = cdValue;
	audio_play_sound(aBullet, 1, false);
	with(instance_create_layer(x,y, "bullets", oBullets)){
		direction = oGun.image_angle;
		speed = 8;
	}
}