function PlayerState_LeftBlocked() {
	path_start(pplayerblock,5,path_action_stop,false)
	if (sprite_index != spleftblock)
	{
		sprite_index = spleftblock;
		image_index = 0;
	
	}
	if AnimationEnd() 
	{
		if keyLeftDeflect == true
		{
			global.state = PLAYERSTATE.LEFT_BLOCK;
		}
		if keyRightDeflect == true
		{
			global.state = PLAYERSTATE.RIGHT_DEFLECT;
		}
		//I dont know why this works, but it does
		//else
		//{
		//	global.state = PLAYERSTATE.NEUTRAL;
		//}
	}




}
