randomize();

switch(global.estate)
{
	case ENEMYSTATE.VULNERABLE_STRAY: EnemyState_vulnerable_stray(); break;
	//case ENEMYSTATE.HIT_RIGHT_STRAY: EnemyState_hit_right_stray(); break;
	case ENEMYSTATE.RIGHT_BLOCK: EnemyState_RightBlock(); break;
	case ENEMYSTATE.LEFT_BLOCK: EnemyState_LeftBlock(); break;
	case ENEMYSTATE.HITSTUN_L: EnemyState_Hitstun_L(); break;
	case ENEMYSTATE.HITSTUN_R: EnemyState_Hitstun_R(); break;
	case ENEMYSTATE.RIGHT_ATTACK_A: Enemystate_RightAttackA(); break;
	case ENEMYSTATE.DOWNED: EnemyState_Downed(); break;
	case ENEMYSTATE.LEFT_ATTACK_A: Enemystate_LeftAttackA(); break;
	case ENEMYSTATE.STAGGERED5: EnemyState_Staggered5(); break;
	case ENEMYSTATE.STAGGERED4: EnemyState_Staggered4(); break;
	case ENEMYSTATE.STAGGERED3: EnemyState_Staggered3(); break;
	case ENEMYSTATE.STAGGERED2: EnemyState_Staggered2(); break;
	case ENEMYSTATE.STAGGERED1: EnemyState_Staggered1(); break;
	case ENEMYSTATE.STAGGERED: EnemyState_Staggered1(); break;
	case ENEMYSTATE.KNOCKBACK: EnemyState_Knockback(); break;
	case ENEMYSTATE.BLOCK: EnemyState_Block(); break;
	case ENEMYSTATE.RPARRY: EnemyState_RightParry(); break;
	case ENEMYSTATE.LEFT_COMBO: EnemyState_LeftCombo(); break;
	case ENEMYSTATE.RIGHT_COMBO: EnemyState_RightCombo(); break;
	//case ENEMYSTATE.LEFT_ATTACK_A: EnemyState_LeftAttack()(); break;
}

if (global.ehp > 0)
{
	
	if (global.estate = ENEMYSTATE.BLOCK)
	{
		hitstuntimer -= 1
		if (global.state == PLAYERSTATE.RIGHT_ATTACK_A)
		{
			//this is not working because it is randomly generating a number
			//for every frame the player is in the attack animation,
			//then once it gets a number that is high enough, the enemy switches
			//to a block state
			blockchance = irandom(2);
			show_debug_message(blockchance);
 		if (blockchance > 2)
			{
				global.estate = ENEMYSTATE.RIGHT_BLOCK;
			}
		}
	}
//			}
//			else
//			{
//				timer = room_speed * .9;
//				path_start(penemyleftpunch,10,path_action_stop,false);
//				global.estate = ENEMYSTATE.LEFT_ATTACK_A;
//			}
//		if(hitstuntimer <= 0)
/*		{
			hitstuntimer = room_speed * 1;
			global.estate = ENEMYSTATE.RIGHT_BLOCK;
		}
	}
	if (global.estate = ENEMYSTATE.HITSTUN_R)
	{
		hitstuntimer -= 1
		if(hitstuntimer <= 0)
		{
			hitstuntimer = room_speed * 1;
			global.estate = ENEMYSTATE.LEFT_BLOCK;
		}
	}
	
	else
	{
	if (global.estate = ENEMYSTATE.RIGHT_BLOCK)
		{
			timer -= 1
			if(timer <= 0)
			{
				timer = room_speed * 5;
				global.estate = ENEMYSTATE.LEFT_BLOCK;
			}
		}
		if (global.estate = ENEMYSTATE.LEFT_BLOCK)
		{
			timer -= 1
			if(timer <= 0)
			{
				timer = room_speed * .9;
				path_start(penemyleftpunch,10,path_action_stop,false);
				global.estate = ENEMYSTATE.LEFT_ATTACK_A;
			}
	
		}
		if (global.estate = ENEMYSTATE.LEFT_ATTACK_A)
		{
			timer -= 1
			if(timer <= 0)			
			{
				timer = room_speed * 5;
				global.estate = ENEMYSTATE.RIGHT_BLOCK;
			}
	
		}
	//	if (global.estate = ENEMYSTATE.STAGGERED)
	//	{
	//		with(instance_create_layer(540,220,"effecrs)
	//		repeat(2)
	//	{
	//		show_debug_message("stars")
	//		instance_create_layer(540,220,"effects",ostar)
	//	}

*/
//}
//if (global.ehp <= 0)
//{
//	global.estate = ENEMYSTATE.DOWNED;
//}
}