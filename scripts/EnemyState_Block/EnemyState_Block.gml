function EnemyState_Block() {
	if (sprite_index != senemy1_neutral)
	{
		sprite_index = senemy1_neutral;
	}
	show_debug_message(ko);
	global.counter = 0;
	if (ko == 2)
	{
		punchesthisside = 3;
		global.estate = ENEMYSTATE.RIGHT_BLOCK;	
	}
	if (ko == 1)
	{
		show_debug_message("working");
		global.estate = ENEMYSTATE.STAGGERED5
	}
	if EAnimationEnd()
	{
		image_index = 0;

	}



}
