/// @description 

//Reduce all timers
text_popout_time = text_popout_time - 1;
text_fade_start_time = text_fade_start_time - 1;
text_destruction_time = text_destruction_time - 1;

//If finished expanding because of timer
if(text_expanding = true && text_popout_time <=0){
	text_expanding = false;
	text_reducing = true;
}

//Expand or reduce
if(text_expanding = true)
	text_scale = text_scale + text_popout_speed;
else if(text_reducing = true && text_scale > 1){
	text_scale = text_scale - text_reduction_speed;
	text_reduction_time = text_reduction_time - 1;
}

if(text_reduction_time <= 0)
	text_reducing = false;
	
//If need to start fading text	
if(text_fade_start_time <= 0)
	text_fading = true;
	
if(text_fading = true)
	text_alpha = text_alpha - text_fade_speed;

//If need to destroy text
if(text_destruction_time <= 0)
	instance_destroy();

y = y + text_drop_speed;