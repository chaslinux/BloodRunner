
if ! keyboard_check(ord("D")) and ! keyboard_check(ord("A"))
{
	sprite_index = s_skeleton_idle;
	image_speed = 0.3;
}

// Movement
if keyboard_check(ord("D")) and ! place_meeting(x+hero_speed,y,obj_wall)
{
	x +=hero_speed;
	image_xscale =1;
	sprite_index = s_skeleton_run;
	image_speed = 0.6;
}

if keyboard_check(ord("A")) and ! place_meeting(x-hero_speed,y,obj_wall)
{
	x -=hero_speed;	
	image_xscale =-1;
	sprite_index = s_skeleton_run;
	image_speed = 0.6;
}
