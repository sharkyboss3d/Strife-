function scr_johnSidetilt(){
	if sprite_index != sJohnSidetilt
	{
		sprite_index = sJohnSidetilt
		image_index = 0
		ds_list_clear(hit)
	}
	
	if image_index >= 2
	{
		mask_index = sJohnSidetilt
		var hitNow = ds_list_create()
		var hits = instance_place_list(x,y,oDummy,hitNow,false)
		//yo this is SO FUCKED, you can NOT hit with sidetilt
		if image_index % 2 == 0
		{
			ds_list_destroy(hitNow)
		}
		
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