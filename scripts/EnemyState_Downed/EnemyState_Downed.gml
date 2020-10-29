function EnemyState_Downed() {
	//This is what happens when the enemy loses all of his hp

	if (sprite_index != senemy1_downed)
	{
		ko = ko - 1;
		sprite_index = senemy1_downed;
		image_index = 0;
	}

	if EAnimationEnd()
	{
		global.ehp = 80;
	}
	if (global.ehp > 0)
	{
		global.estate = ENEMYSTATE.BLOCK;
	}




}
