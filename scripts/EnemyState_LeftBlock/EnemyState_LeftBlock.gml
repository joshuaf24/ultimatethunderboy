function EnemyState_LeftBlock() {
	//This function isn't used atm, but it works.  Basically, the whole point is to teach the player that
	//different punches from different sides do or do not work depending on which side the enemy is blocking
	//on.  It does this by having the enemy randomly change which side he is blocking on.


	//the enemy block animation runs for a set number of frames at a certain speed
	if (sprite_index != senemy1_leftblock)
	{
		sprite_index = senemy1_leftblock;
	}
	//if the animation ends, add 1 to a variable called "switchstate"
	//once switchstate reaches 3, start giving a random integer value between 1-10 to a variable called randomten
	//every time the player finishes the animation
	//(this is so that the enemy doesn't switch blocks too soon after switching) 
	//now every time the enemy repeats his block animation it compares switchstate to randomten
	//and does something depending on whether it is less than, greater than, or equal to randomten

	//if switchstate is less than randomten, repeat the animation and add one to switchstate to increase
	//the odds of switching block states the longer the enemy is in that same block state

	//if switchstate is greater than randomten, switch to the other block

	//if switchstate is equal to randomten (which is the rarest outcome) throw a punch

	if AnimationEnd()
	{
		switchstate = switchstate + 1 
		if (switchstate > 3)
		{
			randomten = irandom(10)
			if (switchstate > randomten)
			{
				global.counter = 0;
				switchstate = 0;
				global.estate = ENEMYSTATE.RIGHT_BLOCK;
			}
			else if (switchstate < randomten)
			{
				image_index = 0;
			}
			else if (switchstate == randomten)
			{
				global.counter = 0;
				switchstate = 0;
				global.estate = ENEMYSTATE.RIGHT_ATTACK_A;
			}
		}
	}




}
