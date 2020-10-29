function EnemyState_RightParry() {
	if sprite_index != senemy1_rightparry
	{
		sprite_index = senemy1_rightparry;
		image_index = 0;
	}

	if (image_index == 6)
	{
		if (global.state == PLAYERSTATE.LEFT_BLOCK)
		{
			image_index = 7;
			audio_play_sound(snenemyblock,5,false);
			global.estate = ENEMYSTATE.BLOCK;
			show_debug_message("blocked counter");
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
			global.estate = ENEMYSTATE.STAGGERED2;
		}
		else
		{
			audio_play_sound(snenemyhit,5,false);
			global.state = PLAYERSTATE.HITSTUN_R;
			global.php -= 5;
		}
	}
	if EAnimationEnd()
	{
		global.estate = ENEMYSTATE.BLOCK;
	}



}
