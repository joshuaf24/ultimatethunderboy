function EProcessAttackR1() {
	if (sprite_index != senemy1_rightpunch)
	{
		sprite_index = senemy1_rightpunch;
		image_index = 0;
	}
	if (image_index == 10) 
	{
		if (global.state == PLAYERSTATE.RIGHT_BLOCK)
		{
			audio_play_sound(snenemyblock,5,false);
			global.state = PLAYERSTATE.RIGHT_BLOCKED;
		}
		else
		if (global.state == PLAYERSTATE.RIGHT_DEFLECT)
		{
			audio_play_sound(sndeflection,5,false);
			global.state = PLAYERSTATE.RIGHT_BLOCK;
		}
		else
		if (global.state == PLAYERSTATE.RIGHT_DODGE)
		{
		}
	
		else
		{
			audio_play_sound(snenemyhit,5,false);
			global.state = PLAYERSTATE.HITSTUN_R;
			global.php -= 5;
		}
	}





}
