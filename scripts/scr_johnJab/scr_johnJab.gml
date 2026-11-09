function scr_johnJab(){
	if sprite_index != sJohnJab
	{
		repeathit = true
		sprite_index = sJohnJab
		image_index = 0
		ds_list_clear(hit)
	}
	
	if image_index >= 2
	{
		repeathit = false
		mask_index = sJohnJab
		var hitNow = ds_list_create()
		var hits = instance_place_list(x,y,oDummy,hitNow,false)
		if hits > 0
		{
			for(var i = 0; i < hits; i++)
			{
				var hitID = hitNow[| i]
				if ds_list_find_index(hit,hitID) == -1
				{
					ds_list_add(hit,hitID)
					hitID.xvel = 11 * sign(xvel)
					hitID.yvel = -17
				}
				
			}
		}
	} else if repeathit = false
	{
		state = "idle"
	}
}