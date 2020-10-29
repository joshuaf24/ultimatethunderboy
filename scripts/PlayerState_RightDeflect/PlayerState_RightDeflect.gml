function PlayerState_RightDeflect() {
	//This is what happens when the player is in the deflect state
	if (sprite_index != sprightdeflect)
	{
		sprite_index = sprightdeflect;
		image_index = 0;
	}
	//you get locked into the deflect state for two frames, then...

	//if the player is no longer holding the deflect key down, go back to the neutral state
	if (keyRightDeflect == false) && (image_index > 2)
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}
	//If the player is still holding the defect key, go to the block state
	if (AnimationEnd())
	{
		global.state = PLAYERSTATE.RIGHT_BLOCK;
	}

	//This will definitely be one of the things we need to fine tune later on to see how it feels
	//My worry is that if we put in a series of very quick, difficult to block attacks (think like
	//guitar hero) it won't feel responsive enough


}
