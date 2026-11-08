function scr_johnRun(){
	sprite_index = sJohnrun
	
	if keyboard_check(vk_left)
	{
		xvel = -10
		image_xscale = -2
	}
	if keyboard_check(vk_right)
	{
		xvel = 10
		image_xscale = 2
	}
}