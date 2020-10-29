function reactiveblock() {
	if (sprite_index != senemy1_leftblock)
	{
		sprite_index = senemy1_leftblock;
	}
	if (global.state == PLAYERSTATE.RIGHT_ATTACK_A) && (randomten > 0)
	{
		global.estate = ENEMYSTATE.RIGHT_BLOCK
		global.counter = global.counter + 1;
		show_debug_message(global.counter);
	}
	if AnimationEnd()
	{
		if (global.state == PLAYERSTATE.LEFT_ATTACK_A)
		{
			image_index = 0;
			global.counter = global.counter + 1;
		}
		else
		{
			global.estate = ENEMYSTATE.BLOCK;
		}
	}




}
