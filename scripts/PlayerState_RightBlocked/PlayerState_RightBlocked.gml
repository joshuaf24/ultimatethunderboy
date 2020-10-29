function PlayerState_RightBlocked() {
	path_start(pplayerblock,5,path_action_stop,false)
	if (sprite_index != sprightblock)
	{
		sprite_index = sprightblock;
		image_index = 0;
	
	}
	if AnimationEnd() 
	{
		if keyRightDeflect == true
		{
			global.state = PLAYERSTATE.RIGHT_BLOCK;
		}
		if keyLeftDeflect == true
		{
			global.state = PLAYERSTATE.LEFT_DEFLECT;
		}
		//I dont know why this works, but it does
		//else
		//{
		//	global.state = PLAYERSTATE.NEUTRAL;
		//}
	}




}
