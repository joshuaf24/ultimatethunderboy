///state machine

keyRightAttack = keyboard_check_pressed(ord("O"));
keyLeftAttack = keyboard_check_pressed(ord("U"));
keyLeftDeflect = keyboard_check(ord("J"));
keyRightDeflect = keyboard_check(ord("L"));
keyMidDeflect = keyboard_check(ord("K"));
//keyLeftBlock = keyboard_check(ord("j"));
//keyLeftDodge = keyboard_check_pressed(ord("A"));
keyRightDodge = keyboard_check_pressed(ord("D"));

switch(global.state)
{
	case PLAYERSTATE.NEUTRAL: PlayerState_Neutral(); break;
	case PLAYERSTATE.LEFT_ATTACK_A: PlayerState_LeftAttackA(); break;
	//case PLAYERSTATE.LEFT_ATTACK_B: PlayerState_LeftAttackB(); break;
	case PLAYERSTATE.RIGHT_ATTACK_A: Playerstate_RightAttackA(); break;
	case PLAYERSTATE.RIGHT_BLOCK: PlayerState_RightBlock(); break;
	case PLAYERSTATE.MID_BLOCK: PlayerState_MidBlock(); break;
	case PLAYERSTATE.MID_DEFLECT: PlayerState_MidDeflect(); break;
	case PLAYERSTATE.LEFT_DEFLECT: PlayerState_LeftDeflect(); break;
	case PLAYERSTATE.LEFT_BLOCK: PlayerState_LeftBlock(); break;
//	case PLAYERSTATE.LEFT_DODGE: PlayerState_LeftDodge(); break;
	case PLAYERSTATE.RIGHT_DEFLECT: PlayerState_RightDeflect(); break;
	case PLAYERSTATE.RIGHT_DODGE: PlayerState_RightDodge(); break;
	case PLAYERSTATE.HITSTUN_R: PlayerState_Hitstun_R(); break;
	case PLAYERSTATE.DOWNED: PlayerState_Downed(); break;
	case PLAYERSTATE.LEFT_BLOCKED: PlayerState_LeftBlocked(); break;
	case PLAYERSTATE.RIGHT_BLOCKED: PlayerState_RightBlocked(); break;
	case PLAYERSTATE.CROSS: PlayerState_Cross(); break;
//	case PLAYERSTATE.RIMPACT: PlayerState_Rimpact(); break;
//	case PLAYERSTATE.LIMPACT: PlayerState_Limpact(); break;
	case PLAYERSTATE.VULNERABLER: PlayerState_VulnerableR(); break;
}

//thunderbar
if (thunder >= 100)
{
	thunder = 100;
}

global.hitstunclock -= 1;
if (global.hitstunclock <= 0)
{
	global.hitstunclock = 0;
}

//if (global.estate = ENEMYSTATE.STAGGERED)
//	{
	//	global.hitstunclock -= 1;
//		if(global.hitstunclock <= 0)
//		{
	//		global.hitstunclock = room_speed * 1;
	//		global.estate = ENEMYSTATE.RIGHT_BLOCK;
	//	}
	//}




