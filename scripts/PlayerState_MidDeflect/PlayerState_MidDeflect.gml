function PlayerState_MidDeflect() {
	//same as the other two deflects, but in the middle
	if (sprite_index != spmiddleblock)
	{
		sprite_index = spmiddleblock;
		image_index = 0;
	}
	if (keyMidDeflect == false) && (image_index > 2)
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}
	if (AnimationEnd())
	{
		global.state = PLAYERSTATE.MID_BLOCK;
	}



}
