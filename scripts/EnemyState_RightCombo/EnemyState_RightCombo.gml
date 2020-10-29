function EnemyState_RightCombo() {
	if (sprite_index != senemy1_rightcombo)
	{
		sprite_index = senemy1_rightcombo;
		image_index = 0;
	}
	if (image_index == 10)
	{
		if (global.state == PLAYERSTATE.RIGHT_BLOCK)
		{
			image_index = 11;
			audio_play_sound(snenemyblock,5,false);
			//global.estate = ENEMYSTATE.BLOCK;
			show_debug_message("blocked combo");
			global.state = PLAYERSTATE.RIGHT_BLOCKED;
			with(oplayer)
			{
				path_start(pplayerblock,10,path_action_stop,false)
			}
		}
		else if (global.state == PLAYERSTATE.RIGHT_DEFLECT)
		{
			audio_play_sound(sndeflection,5,false);
			global.state = PLAYERSTATE.RIGHT_BLOCK;
			//global.estate = ENEMYSTATE.STAGGERED2;
		}
		else
		{
			audio_play_sound(snenemyhit,5,false);
			global.state = PLAYERSTATE.HITSTUN_R;
			global.php -= 5;
		}
	}
	if (image_index == 24)
	{
		if (global.state == PLAYERSTATE.LEFT_BLOCK)
		{
			image_index = 25;
			audio_play_sound(snenemyblock,5,false);
			//global.estate = ENEMYSTATE.BLOCK;
			show_debug_message("blocked combo");
			global.state = PLAYERSTATE.LEFT_BLOCKED;
			with(oplayer)
			{
				path_start(pplayerblock,10,path_action_stop,false)
			}
		}
		else if (global.state == PLAYERSTATE.LEFT_DEFLECT)
		{
			audio_play_sound(sndeflection,5,false);
			global.state = PLAYERSTATE.LEFT_BLOCK;
			//global.estate = ENEMYSTATE.STAGGERED2;
		}
		else
		{
			audio_play_sound(snenemyhit,5,false);
			//this should be hitstun L
			global.state = PLAYERSTATE.HITSTUN_R;
			global.php -= 5;
		}
	}
	if (image_index == 38)
	{
		if (global.state == PLAYERSTATE.RIGHT_BLOCK)
		{
			image_index = 39;
			audio_play_sound(snenemyblock,5,false);
			//global.estate = ENEMYSTATE.BLOCK;
			show_debug_message("blocked combo");
			global.state = PLAYERSTATE.RIGHT_BLOCKED;
			with(oplayer)
			{
				path_start(pplayerblock,10,path_action_stop,false)
			}
		}
		else if (global.state == PLAYERSTATE.RIGHT_DEFLECT)
		{
			audio_play_sound(sndeflection,5,false);
			global.state = PLAYERSTATE.RIGHT_BLOCK;
			global.estate = ENEMYSTATE.STAGGERED4;
		}
		else
		{
			audio_play_sound(snenemyhit,5,false);
			//this should be hitstun L
			global.state = PLAYERSTATE.HITSTUN_R;
			global.php -= 5;
		}
	}
	if EAnimationEnd()
	{
		global.estate = ENEMYSTATE.BLOCK;
	}


}
