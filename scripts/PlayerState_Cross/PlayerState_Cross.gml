function PlayerState_Cross() {
	ProcessAttackCross();
	if (AnimationEnd())
	{
		sprite_index = spneutral;
		global.state = PLAYERSTATE.NEUTRAL;
	}


}
