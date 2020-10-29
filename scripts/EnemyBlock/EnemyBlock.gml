function EnemyBlock(argument0, argument1) {
	sprite_index = argument0;

	audio_play_sound(snenemyblock,argument1,false)
	flash = true;
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
