function PlayerState_VulnerableR() {
	if (sprite_index != spvulnerableR)
	{
		sprite_index = spvulnerableR;
		image_index = 0;
	}
	if AnimationEnd()
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}



}
