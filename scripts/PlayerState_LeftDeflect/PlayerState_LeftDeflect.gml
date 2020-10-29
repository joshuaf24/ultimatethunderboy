function PlayerState_LeftDeflect() {
	//this is the same as the right defelct, just with the left side
	if (sprite_index != spleftdeflect)
	{
		sprite_index = spleftdeflect;
		image_index = 0;
	}
	if (keyLeftDeflect == false) && (image_index > 2)
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}
	if (AnimationEnd())
	{
		global.state = PLAYERSTATE.LEFT_BLOCK;
	}



}
