/// @description 

var first_dance_icon;
first_dance_icon = ds_list_find_value(dance_list, 0);
 
if(first_dance_icon != undefined && first_dance_icon != noone){
	//Check keyboard is being hit correctly	
	if((keyboard_check_pressed(vk_up) && first_dance_icon.icon_name == "up") ||
		(keyboard_check_pressed(vk_left) && first_dance_icon.icon_name == "left") ||
		(keyboard_check_pressed(vk_right) && first_dance_icon.icon_name == "right") ||
		(keyboard_check_pressed(vk_space) && first_dance_icon.icon_name == "space") ||
		
		(keyboard_check(vk_left) && keyboard_check_pressed(vk_right) && first_dance_icon.icon_name == "left_right") ||
		(keyboard_check(vk_right) && keyboard_check_pressed(vk_left) && first_dance_icon.icon_name == "left_right") ||
		
		(keyboard_check(vk_space) && keyboard_check_pressed(vk_left) && first_dance_icon.icon_name == "space_left") ||
		(keyboard_check(vk_left) && keyboard_check_pressed(vk_space) && first_dance_icon.icon_name == "space_left") ||
		
		(keyboard_check(vk_space) && keyboard_check_pressed(vk_right) && first_dance_icon.icon_name == "space_right") ||
		(keyboard_check(vk_right) && keyboard_check_pressed(vk_space) && first_dance_icon.icon_name == "space_right")
		
	){
	
		//popout_message = instance_create_layer(190, 120, "layer_dance_messages", obj_popout_text);
		var temp_x = choose(160, 480);
		popout_message = scr_popout_text_default(temp_x,120, "NONE");
		if(first_dance_icon.y >= target_line - 24 && first_dance_icon.y <= target_line + 24){
			popout_message.text_message = "PERFECT!!!";
			combo_count = combo_count + 1;
			total_score = total_score + (200*combo_count);
		}
		else if(first_dance_icon.y >= target_line + 25 && first_dance_icon.y <= target_line + 49){
			popout_message.text_message = "LATE";
			combo_count = combo_count + 1;
			total_score = total_score + (100*combo_count);
		}
		else if(first_dance_icon.y >= target_line - 49 && first_dance_icon.y <= target_line -23){
			popout_message.text_message = "EARLY";
			combo_count = combo_count + 1;
			total_score = total_score + (100*combo_count);
		}
		else if(first_dance_icon.y <= target_line - 50){
			popout_message.text_message = "WAY TOO EARLY BRO!!!";
			combo_count = 0;
		}
		else{
			instance_destroy(popout_message, false);
			combo_count = 0;
		}
		
		//If the dance icon is not past the target line
		if(first_dance_icon.y <= target_line + 49){
		
			//If the dance icon is part of a combo delete the combo
			if(first_dance_icon.icon_name == "left_right" || 
				first_dance_icon.icon_name == "space_left" || 
				first_dance_icon.icon_name == "space_right" 
			){
				var first_combo_icon = ds_list_find_value(combo_list, 0);
				//instance_destroy(first_combo_icon, false);
				first_combo_icon.icon_expanding = true;
				ds_list_delete(combo_list, 0);
				first_combo_icon = undefined;
			}
			
			//instance_destroy(first_dance_icon, false);
			first_dance_icon.icon_expanding = true;
			ds_list_delete(dance_list, 0);
			first_dance_icon = undefined;
		}
	}
	
	//If the dance icon goes past the line
	if(first_dance_icon != undefined && first_dance_icon.y >= target_line + 50){
	
		//If the dance icon is part of a combo delete the combo
		if(first_dance_icon.icon_name == "left_right" || 
			first_dance_icon.icon_name == "space_left" || 
			first_dance_icon.icon_name == "space_right" 
		){
			var first_combo_icon = ds_list_find_value(combo_list, 0);
			instance_destroy(first_combo_icon, false);
			ds_list_delete(combo_list, 0);
			first_combo_icon = undefined;
		}
	
		instance_destroy(first_dance_icon, false);
		ds_list_delete(dance_list, 0);
		first_dance_icon = undefined;
		popout_message = scr_popout_text_default(320, 390, "MISS!!!");
		combo_count = 0;
	}
	
	//Score Runner
	if(running_score + (20*combo_count) < total_score)
		running_score = running_score + (20 * combo_count);
	else
		running_score = total_score;
}
