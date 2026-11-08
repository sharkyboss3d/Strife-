if abs(xvel) > 0
{
	if midair = false
	{
		xvel *= 0.8
	} else
	{
		xvel *= 0.95
	}
}



if place_meeting(x,y+yvel,oFloor)
{
	yvel = 0
	midair = false
} else
{
	yvel += 1.2
	midair = true
}

x += xvel
y+= yvel