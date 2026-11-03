
if keyboard_check(vk_left) or keyboard_check(vk_right)
{
	state = "run"
	
	if keyboard_check(vk_left)
	{
		
	}
	
} else
{
	xvel *= 0.8
}



switch state 
{
	case "idle":
		sprite_index = sJohnidle
	break
	
	case "run":
		sprite_index = sJohnrun
	break
	
	default:
		sprite_index = sJohnidle
}



x+= xvel