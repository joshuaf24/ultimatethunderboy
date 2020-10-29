function EnemyState_St() {
	if (sprite_index != senemy1_staggered)
	{
		sprite_index = senemy1_staggered;
		image_index = 0;
	} 


	if (EAnimationEnd())
	{
		global.estate = ENEMYSTATE.LEFT_BLOCK;
	}




}
