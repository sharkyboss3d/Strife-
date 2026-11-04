var _input = rollback_get_input()


if _input.left or _input.right
{
	state = "run"
	
	if _input.left
	{
		xvel = -10
		image_xscale = -2
	}
	if _input.right
	{
		xvel = 10
		image_xscale = 2
	}
	
} else
{
	state = "idle"
	xvel *= 0.8
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