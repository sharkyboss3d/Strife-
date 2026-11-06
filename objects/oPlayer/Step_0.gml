if keyboard_check(vk_left) or keyboard_check(vk_right)
{
	state = "run"
	
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
	
} else
{
	state = "idle"
	xvel *= 0.8
}

if keyboard_check(vk_up) && midair = false
{
	midair = true
	yvel = -15
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
	yvel += 1.2
} else
{
	yvel = 0
}

x+= xvel
y += yvel

