function PlayerState_RightDodge() {
	//the dodge does not work atm.  I will work on fixing it because it worked at one point and then I broke it
	//so it's my responsibility

	if (sprite_index != sprightdodge)
	{
	
		sprite_index = sprightdodge;
		image_index = 0;
	
	}
	if (keyLeftAttack)
	{
		global.state = PLAYERSTATE.CROSS;
		path_start(pcross,30,path_action_stop,false);
	}
	if AnimationEnd()
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}



}
