function PlayerBlock(argument0) {
	sprite_index = argument0;

	audio_play_sound(snenemyblock,5,false)
	if (hp > 0)
	{
		if (sprite_index != senemyhitstun_L)
			{
				sprite_index = senemyhitstun_L;	
			}

			if (hp <= 0)
				{
					with(oenemy)
						{	
							estate = ENEMYSTATE.DOWNED;
						}
				}
	}
	if (EAnimationEnd())
	{
		estate = ENEMYSTATE.LEFT_BLOCK;
	}
		hitNow = true;





}
