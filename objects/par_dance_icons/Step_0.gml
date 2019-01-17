/// @description Set drop

if(icon_expanding == true && icon_popout_time >= 0)
	icon_popout_time = icon_popout_time - 1;

if(icon_reducing == true && icon_reduction_time >= 0)
	icon_reduction_time = icon_reduction_time - 1;

if(icon_expanding == true && icon_popout_time <= 0){
	icon_expanding = false;
	icon_reducing = true;
}

if(icon_expanding == true){
	image_xscale = image_xscale + icon_popout_speed;
	image_yscale = image_yscale + icon_popout_speed;
}
else if(icon_reducing == true && image_xscale > 1){
	image_xscale = image_xscale - icon_reduction_speed;
	image_yscale = image_yscale - icon_reduction_speed;
}

if(icon_reduction_time <= 0){
	icon_reducing = false;
	instance_destroy();
}

y = y + drop_speed;