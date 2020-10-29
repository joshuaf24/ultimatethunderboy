function ProcessAttackCross() {
	if (sprite_index != spcross)
	{
		sprite_index = spcross;
		image_index = 0;
	}
	//sometimes this seems like it waits a couple frames because if the enemy comes out of the hitstun phase 
	//during the animation they'll immediately gets hit then they'll just return to the hitstun phase
	//without showing it.  I like the snappy feel of the frame 1 attack but it needs to drain power to compensate
		if (global.estate == ENEMYSTATE.LEFT_BLOCK) || (global.estate == ENEMYSTATE.RIGHT_BLOCK)
		{
			audio_play_sound(snguardbreak,5,false)
			//this should go to a guard break state, not the regular hitstun
			global.estate = ENEMYSTATE.HITSTUN_L;
		}

	if AnimationEnd()
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}


}
