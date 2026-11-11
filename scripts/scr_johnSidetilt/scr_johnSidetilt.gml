function scr_johnSidetilt(){
	var _storedxvel = 0
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
		
		
		
		if hits > 0
		{
			for(var i = 0; i < hits; i++)
			{
				if image_index mod 2 == 0
				{
					ds_list_clear(hit)
				}
				var hitID = hitNow[| i]
				if ds_list_find_index(hit,hitID) == -1
				{
					ds_list_add(hit,hitID)
					hitID.xvel = 5 * sign(xvel)
					_storedxvel += 500 * sign(xvel)
					draw_text(300,100,_storedxvel)
					
				}
				if animation_end() = true
				{
					hitID.xvel = _storedxvel
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