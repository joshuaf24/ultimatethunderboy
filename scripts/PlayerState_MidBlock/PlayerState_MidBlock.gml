function PlayerState_MidBlock() {
	//same as the other two blocks, but in the middle
	if(sprite_index != spmiddleblock)
	{
		sprite_index = spmiddleblock;
		image_index = 0;
	}
	if (keyMidDeflect == false)
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}



}
