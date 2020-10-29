////you still need to set up hitboxes for these attack, they are just using the 
////corresponding player hitboxes
function Enemystate_LeftAttackA() {
	show_debug_message("processing left attack");
	EProcessAttackL1();
	
	//if(keyLeftAttack) && (image_index > 4)
	//{
	//	state = PLAYERSTATE.LEFT_ATTACK_A;
	//	path_start(pleftattack,20,path_action_stop,true);
	//}
	if (EAnimationEnd())
	{
		//sprite_index = senemy1_rightblock;
		global.estate = ENEMYSTATE.BLOCK;
	}


}
