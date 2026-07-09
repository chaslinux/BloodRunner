switch (state)
{
	case "Move":
		#region MoveState
			if ! keyboard_check(ord("D")) and ! keyboard_check(ord("A"))
			{
				sprite_index = s_skeleton_idle;
				image_speed = 0.3;
			}

			// Movement
			if keyboard_check(ord("D"))
			{
				moveit(global.hero_speed,0);
				image_xscale =1;
				sprite_index = s_skeleton_run;
				image_speed = 0.6;
			}

			if keyboard_check(ord("A"))
			{
				moveit(-global.hero_speed,0);
				image_xscale =-1;
				sprite_index = s_skeleton_run;
				image_speed = 0.6;
			}
			if keyboard_check_pressed(vk_space)
			{
				image_index = 0;
				state = "Roll";
			}
			if keyboard_check_pressed(vk_rcontrol)
			{
				image_index = 0;
				state = "AttackOne";
			}
		#endregion	
		break;
		
	case "Roll":
		#region RollState
			sprite_index = s_skeleton_roll;
			image_speed = 0.6;
		
			if image_xscale == 1
			{
				moveit(global.hero_speed+2,0);
			}
		
			if image_xscale == -1
			{
				moveit(-(global.hero_speed+2),0);
			}
		#endregion
		break;
		
	case "AttackOne":
		#region AttackOneState
			sprite_index = s_skeleton_attack_one;
			image_speed = 0.3;
			
			if keyboard_check_pressed(vk_rcontrol) and animation_hit_frame_range(2,4)
			{
				image_index = 0;
				state = "AttackTwo";
			}			
		#endregion
		break;
	
	case "AttackTwo":
		#region AttackTwoState
			sprite_index = s_skeleton_attack_two;
			image_speed = 0.3;			
		#endregion
		break;
}


