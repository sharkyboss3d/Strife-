if keyboard_check(vk_left) or keyboard_check(vk_right)
{
	state = "run"
} else
{
	xvel *= 0.8
}

if keyboard_check(ord("Z"))
{
	state = "hammer"
	
}

mask_index = sJohnidle
if place_meeting(x,y+yvel,oFloor) 
{
	midair = false 
} else
{
	midair = true
}



if not(keyboard_check(ord("Z")) or keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up))
{
	state = "idle"
}

switch state 
{
	case "idle":
		scr_johnIdle()
		
	break
	
	case "run":
		scr_johnRun()
	break
	
	case "hammer":
		scr_johnJab()
	break
	
	default:
		scr_johnIdle()
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