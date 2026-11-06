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

if keyboard_check(ord("Z"))
{
	state = "hammer"
	if keyboard_check_pressed(ord("Z"))
	{
		image_index = 0
	}
}

mask_index = sJohnidle
if place_meeting(x,y+yvel,oFloor) 
{
	midair = false
} else
{
	midair = true
}

if state = "hammer"
{
	if image_index = 1
	{
		mask_index = sJohnhammer
	}
}

switch state 
{
	case "idle":
		sprite_index = sJohnidle
		
	break
	
	case "run":
		sprite_index = sJohnrun
	break
	
	case "hammer":
		sprite_index = sJohnhammer
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