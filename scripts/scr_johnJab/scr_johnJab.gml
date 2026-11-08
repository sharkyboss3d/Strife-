function scr_johnJab(){
	if sprite_index != sJohnhammer
	{
		sprite_index = sJohnhammer
		image_index = 0
		ds_list_clear(hit)
	}
	
	if image_index = 1
	{
		mask_index = sJohnhammer
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
					hitID.xvel = 5 * sign(xvel)
					hitID.yvel = -30
				}
				
			}
		}
	}
}