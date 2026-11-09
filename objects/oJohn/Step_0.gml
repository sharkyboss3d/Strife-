if keyboard_check(vk_left) or keyboard_check(vk_right)
{
	state = "run"
} else
{
	xvel *= 0.8
}

if keyboard_check(ord("Z"))
{
	switch keyboard_key 
	{
		case vk_left or vk_right:
			state = "sidetilt"
		break
		
		case vk_up:
			state = "uptilt"
		break
		
		case vk_down:
			state = "downtilt"
		break 
		          
		default:
			state = "jab"
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
	
	case "jab":
		scr_johnJab()
	break
	
	case "sidetilt":
		scr_johnSidetilt()
	break
	
	case "uptilt":
		scr_johnUptilt()
	break
	
	case "downtilt":
		scr_johnDowntilt()
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