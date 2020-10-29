function PlayerState_RightBlock() {
	//this is what happens while the player is in the block state
	show_debug_message("blocking");
	if(sprite_index != sprightblock)
	{
		sprite_index = sprightblock;
		image_index = 0;
	}
	//if the player lifts up on the deflect key, return to neutral state
	if keyRightDeflect = false
	{
		global.state = PLAYERSTATE.NEUTRAL;
	}
	//This is another one of those things we'll need to fine tune as we go on.  At the moment, the only 
	//way to leave the block state is to go back to neutral, but lots of stuff could happen.  Think
	//like what happens if you try and attack in the block state, what happens if you try and dodge, etc.


}
