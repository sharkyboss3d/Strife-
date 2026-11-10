function scr_johnJab(){
	var hitNow = ds_list_create()
	if sprite_index != sJohnJab
	{
		sprite_index = sJohnJab
		image_index = 0
		ds_list_clear(hit)
	}
	
	if image_index >= 2
	{
		mask_index = sJohnJab
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
	}

	if animation_end()
	{
		sprite_index = sJohnidle
		state = "idle"
	}
}
