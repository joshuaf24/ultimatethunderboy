function PlayerState_LeftBlock() {
	//same as right block, except for the left
	if(sprite_index != spleftblock)
	{
		sprite_index = spleftblock;
		image_index = 0;
	}
	if (keyLeftDeflect == false)
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}



}
