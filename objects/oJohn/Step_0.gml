if (keyboard_check(vk_left) or keyboard_check(vk_right)) && state != "jab" && state != "sidetilt" && state != "uptilt" && state != "downtilt"
{
	state = "run"
} else
{
	xvel *= 0.8
}

if keyboard_check_pressed(ord("Z"))
{
		if keyboard_check(vk_left) or keyboard_check(vk_right)
		{
			state = "sidetilt"
		}else if keyboard_check(vk_up)
		{
			state = "uptilt"
		}else if keyboard_check(vk_down)
		{
			state = "downtilt"
		}else
		{
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


if  state != "jab" and state != "sidetilt" and state != "uptilt" and state != "downtilt"
{
	if not(keyboard_check(ord("Z")) or keyboard_check(vk_left) or keyboard_check(vk_right) or keyboard_check(vk_up))
	{
		state = "idle"
	}
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