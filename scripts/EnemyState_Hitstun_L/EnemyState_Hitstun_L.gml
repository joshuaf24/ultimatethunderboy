function EnemyState_Hitstun_L() {
	//this is the enemy's knockback state when he gets hit from the right.  This state should make him 
	//invlulnerable for a moment, and give him a chance to return to his block state, but at the moment,
	//it does not
	if (sprite_index != senemy1_hittopleft)
	{
		sprite_index = senemy1_hittopleft;	
		image_index = 0;
	}
	if  (global.ehp <= 0)
	{
		global.estate = ENEMYSTATE.DOWNED;
	}
	if (EAnimationEnd())
	{
			show_debug_message("enemy in vulnerable stray");
			global.estate = ENEMYSTATE.VULNERABLE_STRAY;
	}




}
