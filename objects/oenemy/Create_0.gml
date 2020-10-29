///lists the different states the player can be in
///no physics
global.estate = ENEMYSTATE.VULNERABLE_STRAY;
show_debug_message("enemy in vulnerable stray");
path_start(p_enemybob,2,path_action_reverse,false);
global.ehp = 100;
hp_max = global.ehp;
healthbar_x = 642;
healthbar_y = 30;
healthbar_height = 19
healthbar_w = 200;
healthbar_width = room_speed = 30;
timer = room_speed * 5;
hitstuntimer = room_speed * .5;
ko = 2;
switchstate = 0;
punchestoswitch = 0;
randomize();
global.counter = 0;


enum ENEMYSTATE
{
		VULNERABLE_STRAY,
		HIT_RIGHT_STRAY,
		RIGHT_BLOCK,
		LEFT_BLOCK,
		LEFT_ATTACK_A,
		LEFT_ATTACK_B,
		RIGHT_ATTACK_A,
		HITSTUN_L,
		HITSTUN_R,
		DOWNED,
		NEWRIGHTBLOCK,
		STAGGERED5,
		STAGGERED4,
		STAGGERED3,
		STAGGERED2,
		STAGGERED1,
		STAGGERED,
		KNOCKBACK,
		BLOCK,
		RPARRY,
		LEFT_COMBO,
		RIGHT_COMBO
}

