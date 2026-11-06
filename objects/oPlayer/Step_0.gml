if keyboard_check(vk_left) or keyboard_check(vk_right)
{
	state = "run"
	
	if keyboard_check(vk_left)
	{
		xvel = -10
		image_xscale = -2
	}
	if keyboard_check(vk_left)
	{
		xvel = 10
		image_xscale = 2
	}
	
} else
{
	state = "idle"
}

if place_meeting(x,y+yvel,oFloor) 
{
	midair = false
} else
{
	midair = true
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

if midair = true
{
	yvel += 0.3
} else
{
	yvel = 0
}

x+= xvel
y += yvel