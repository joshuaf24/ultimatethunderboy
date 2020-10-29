function PlayerState_LeftAttackA() {
	//This is the leftpunch script.  I know it says leftattackA like there's gonna be more left-handed
	//attacks, but I think this is pretty much all we need for now

	//here is the part that starts the attack animation
	if (sprite_index != spleftattacka)
	{
		sprite_index = spleftattacka;
		image_index = 0;
	}
	//here is the part where you can queue up an attack from the opposite hand
	if (keyRightAttack) && (image_index > queueframe)
	{
		rightattackqueue = true;
		show_debug_message("right attack queue")
	}
	//if you queued an attack during the attack animation that just ended, immediately change the playerstate 
	//to the other attack state...
	if (AnimationEnd())
	{
		if (rightattackqueue == true)
		{
			global.state = PLAYERSTATE.RIGHT_ATTACK_A;
			rightattackqueue = false;
		}
		//...if not, just go back to the neutral state
		else if (AnimationEnd())
		{
			global.state = PLAYERSTATE.NEUTRAL;
		}
	}


}
