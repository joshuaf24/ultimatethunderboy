function Playerstate_RightAttackA() {
	//This is the right punch script.  I know it says rightattackA like there's gonna be more right-handed
	//attacks, but I think this is pretty much all we need for now

	//here is the part that starts the attack animation
	if (sprite_index != sprightattacka)
	{
		sprite_index = sprightattacka;
		image_index = 0;
	}
	//here is the part where you can queue up an attack from the opposite hand
	if (keyLeftAttack) && (image_index > queueframe)
	{
		leftattackqueue = true;
		show_debug_message("left attack queue")
	}
	//if you queued an attack during the attack animation that just ended, immediately change the playerstate 
	//to the other attack state...
	if (AnimationEnd())
	{
		if (leftattackqueue == true)
		{
			global.state = PLAYERSTATE.LEFT_ATTACK_A;
			leftattackqueue = false;
		}
		//...if not, just go back to the neutral state
		else if (AnimationEnd())
		{
			global.state = PLAYERSTATE.NEUTRAL;
		}
	}



}
