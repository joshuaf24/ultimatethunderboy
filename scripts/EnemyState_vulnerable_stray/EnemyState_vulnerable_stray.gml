function EnemyState_vulnerable_stray() {
	//this is currently the only idle state the enemy has - it would be like if the enemy let his guard down
	//The enemy should not be able to get hit again immediately after getting hit once.
	//The enemy getting hit here would result in a "stray hit", so its called vulnerable_stray

	//this is just dealing with the sprite and his idling animation
	if (sprite_index != senemy1_lowguard)
	{
		sprite_index = senemy1_lowguard;
	}
	if path_index = -1
	   {
	   path_start(p_enemybob,2,path_action_reverse,false);
	   }

	//if the player is in his right attack state and reaches frame 2 of his attack animation, register the 
	//hit (play a sound, deal damage, change enemy state to an invulnerable knockback state (remember, he
	//can't get hit immediately after this ), follow a path backwards to emphasize the hit)
	with(oplayer)
	{
		if (global.state == PLAYERSTATE.RIGHT_ATTACK_A) && (image_index == 2)
		{
			audio_play_sound(snenemyhit,5,false);
			show_debug_message("a clean right cross!");
			global.estate = ENEMYSTATE.HITSTUN_L;
		with(oenemy)
		{
			path_start(p_enemyhitleft,8,path_action_stop,true);
		}
		}
	//same thing but for the left side
			if (global.state == PLAYERSTATE.LEFT_ATTACK_A) && (image_index == 2)
		{
			audio_play_sound(snenemyhit,5,false);
			show_debug_message("a clean left hook!");
			global.estate = ENEMYSTATE.HITSTUN_R;
		with(oenemy)
		{
			path_start(p_enemyhitright,8,path_action_stop,true);
		}
		}
	}









}
