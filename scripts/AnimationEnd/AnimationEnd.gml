function AnimationEnd() {
	//This is a function that you have to call any time you need to check whether or not an animation
	//is finished.  You might be thinking "oh, well why can't you just check that by looking at 
	//which frame the animation is on" and you would be right logically you should be able to do that
	//but it doesn't work consistently so just use this.  It's good for when you need to switch player 
	//and enemy states

	var _sprite=sprite_index;
	var _image=image_index;
	if(argument_count > 0)   _sprite=argument[0];
	if(argument_count > 1)  _image=argument[1];
	var _type=sprite_get_speed_type(sprite_index);
	var _spd=sprite_get_speed(sprite_index)*image_speed;
	if(_type == spritespeed_framespersecond)
	    _spd = _spd/room_speed;
	if(argument_count > 2) _spd=argument[2];
	return _image+_spd >= sprite_get_number(_sprite);


}
