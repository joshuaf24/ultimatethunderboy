function PlayerState_Hitstun_R() {
	if (sprite_index != splefthit)
	{
	sprite_index = splefthit;
	image_index = 0;
	}
	if AnimationEnd()
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}

	if (global.php <= 0)
	{
		global.state = PLAYERSTATE.DOWNED;
	}


}
