function EnemyState_RightBlock() {
	//same as left block but on the other side

	if (sprite_index != senemy1_rightblock)
	{
		sprite_index = senemy1_rightblock;
	}
	if (AnimationEnd())
	{
		switchstate = switchstate + 1 
		if (switchstate > 3)
		{
			randomten = irandom(10)
			if (switchstate > randomten)
			{
				global.counter = 0;
				switchstate = 0;
				global.estate = ENEMYSTATE.LEFT_BLOCK;
			}
			else if (switchstate < randomten)
			{
				image_index = 0;
			}
			else if (switchstate == randomten)
			{
				global.counter = 0;
				switchstate = 0;
				global.estate = ENEMYSTATE.LEFT_ATTACK_A;
			}
		}
	}




}
