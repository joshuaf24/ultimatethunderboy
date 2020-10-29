function EnemyState_Staggered1() {
	if (sprite_index != senemy1_staggered)
	{
		sprite_index = senemy1_staggered;
		image_index = 0;
	} 
	if instance_exists(ostar2)
	{
		instance_create_layer(ostar2.x,ostar2.y,"effects",ostardestroy)
		instance_destroy(ostar2,true)
	}
	else
	{
		if image_index =0
		{
			instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar1)
		}
	}

	if (EAnimationEnd())
	{
		global.estate = ENEMYSTATE.LEFT_BLOCK;
		instance_destroy(ostar1,true)
	}




}
