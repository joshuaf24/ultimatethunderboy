///lists the different states the player can be in
///no physics
punchspeed = 18;
queueframe = 2; 
leftattackqueue = false;
rightattackqueue = false;
hitByAttack = ds_list_create();
global.php = 100;
php_max = global.php;
healthbar_x = 280;
healthbar_y = 30;
healthbar_height = 19;
healthbar_w = 200;
healthbar_width = room_speed = 30;
thunder = 100;
thunder_max = thunder;
thunderbar_x = 100;
thunderbar_y = 500;
thunderbar_height = 295;
thunderbar_w = 30;
thunderbar_width = room_speed = 30;
hittimer = room_speed * 5;
global.hitstunclock = room_speed * .5;
global.stars = 0;

//star array for when the enemy is staggered
	//stars[1, 2] = 520;
	//stars[1, 1] = 220;
	//stars[1, 0] = ostar;
	//stars[1, 2] = 540;
	//stars[1, 1] = 220;
	//stars[1, 0] = ostar;
	//stars[0, 2] = 560;
	//stars[0, 1] = 220;
	//stars[0, 0] = ostar;


global.state = PLAYERSTATE.NEUTRAL;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
		NEUTRAL,
		RIGHT_BLOCK,
		LEFT_BLOCK,
		MID_BLOCK,
		LEFT_ATTACK_A,
		LEFT_ATTACK_B,
		RIGHT_ATTACK_A,
		RIGHT_ATTACK_B,
		LEFT_DEFLECT,
		LEFT_DODGE,
		RIGHT_DODGE,
		LEFT_HOOK,
		RIGHT_DEFLECT,
		MID_DEFLECT,
		HITSTUN_R,
		LEFT_BLOCKED,
		RIGHT_BLOCKED,
		DOWNED,
		CROSS,
		RIMPACT,
		LIMPACT,
		VULNERABLER
}