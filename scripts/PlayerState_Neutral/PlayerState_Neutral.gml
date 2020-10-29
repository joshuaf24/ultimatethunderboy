function PlayerState_Neutral() {
	//this is the player's neutral state.  Everything here is an action that the player can take 
	//from his neutral state
	sprite_index = spneutral;

	// if the player presses the left attack key, start the left attack
	if (keyLeftAttack)
	{
		global.state = PLAYERSTATE.LEFT_ATTACK_A;
	}
	//if the player presses the right attack key, start the right attack
	if (keyRightAttack)
	{
		global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	}	
	//if the player presses the right dodge key, perform a dodge.  It says it's a right dodge, but 
	//it's omnidirectional, I still need to go back and change it.  Also at the moment it says you can
	//only perform this if you have a certain amount of "thunder", which is like energy. I know this 
	//is also confusing, but thunder is measured in reverse from 100 - 0, which is why it checks to see
	//if you have less than that amount (basically seeing if you have any thunder at all) and adds to your
	//total thunder when you perform it, when from a gameplay perspective, it drains energy
	if (keyRightDodge) && (thunder < 100)
	{
		global.state = PLAYERSTATE.RIGHT_DODGE;
		path_start(prightdodge,20,path_action_stop,true);
		thunder += 5;
	}
	//if you press the left deflect key, you deflect to the left
	if (keyLeftDeflect)
	{
		global.state = PLAYERSTATE.LEFT_DEFLECT;
		instance_create_layer(377,483,"effects",odeflectpoof)
	}
	//if you press the right deflect key, you deflect to the right
	if (keyRightDeflect)
	{
		global.state = PLAYERSTATE.RIGHT_DEFLECT;
		instance_create_layer(377,600,"effects",odeflectpoofR)
	}
	//if you press the mid deflect key, you deflect in the middle
	if (keyMidDeflect)
	{
		global.state = PLAYERSTATE.MID_DEFLECT;
		instance_create_layer(377,600,"effects",odeflectpoofm)
	}






}
