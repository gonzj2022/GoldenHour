/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x+20;
y = oPlayer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 5;
	audio_play_sound(snShot,5,false);
	with (instance_create_layer (x,y, "Bullets", oBullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}
