if abs(xvel) > 0
{
	xvel *= 0.8
}



if place_meeting(x,y+yvel,oFloor)
{
	yvel = 0
} else
{
	yvel += 1.2
}

x += xvel
y+= yvel