function EnemyState_Staggered5() {
	if (sprite_index != senemy1_staggered)
	{
		sprite_index = senemy1_staggered;
		image_index = 0;
	} 
	if image_index =0
	{
		instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar1)
		instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar2)
		instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar3)
		instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar4)
		instance_create_layer(oenemy.x,oenemy.y-50,"effects",ostar5)
	}

	if (EAnimationEnd())
	{
		global.estate = ENEMYSTATE.LEFT_BLOCK;
		instance_destroy(ostar5,true)
		instance_destroy(ostar4,true)
		instance_destroy(ostar3,true)
		instance_destroy(ostar2,true)
		instance_destroy(ostar1,true)
	}




}
