function EnemyState_Knockback() {
	if (sprite_index != senemy1_knockback)
	{
		sprite_index = senemy1_knockback;
		image_index = 0;
	}
	if (instance_exists(ostar1))
	{
		instance_create_layer(ostar1.x,ostar1.y,"effects",ostardestroy)
		instance_destroy(ostar1,true)
	}
	if (EAnimationEnd())
	{
		global.estate = ENEMYSTATE.BLOCK;
	}


}
