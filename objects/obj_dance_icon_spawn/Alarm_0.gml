

var dance_icon_selection = irandom(9);
var dance_icon;

switch(dance_icon_selection){
	case 0:
		dance_icon = instance_create_layer(align_left, -100, "layer_dance_icons", obj_dance_b_left);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;
	
	case 1:
		dance_icon = instance_create_layer(align_right, -100, "layer_dance_icons", obj_dance_b_right);
		ds_list_add(dance_list, dance_icon.id);
	break;
	
	case 2:
		dance_icon = instance_create_layer(align_center, -100, "layer_dance_icons", obj_dance_b_up);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;
	
	case 3:
		dance_icon = instance_create_layer(align_center, -100, "layer_dance_icons", obj_dance_b_space);
		ds_list_add(dance_list, dance_icon.id);
	break;
	
	
	case 4:
		//left right
		dance_icon = instance_create_layer(align_left, -100, "layer_dance_icons", obj_dance_b_left_right);
		ds_list_add(dance_list, dance_icon.id);
		dance_icon = instance_create_layer(align_right, -100, "layer_dance_icons", obj_dance_b_right);
		ds_list_add(combo_list, dance_icon.id);
	break;


	case 5:
		dance_icon = instance_create_layer(align_left, -100, "layer_dance_icons", obj_dance_s_left);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;

	case 6:
		dance_icon = instance_create_layer(align_right, -100, "layer_dance_icons", obj_dance_s_right);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;

	case 7:
		dance_icon = instance_create_layer(align_center, -100, "layer_dance_icons", obj_dance_s_up);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;
	
	case 8:
		dance_icon = instance_create_layer(align_center, -100, "layer_dance_icons", obj_dance_s_space);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
	break;
	
	case 9:
		dance_icon = instance_create_layer(230, -100, "layer_dance_icons", obj_dance_s_left_right);
		ds_list_add(dance_list, dance_icon.id);
		//show_debug_message(dance_icon.icon_name);
		dance_icon = instance_create_layer(410, -100, "layer_dance_icons", obj_dance_s_right);
		ds_list_add(combo_list, dance_icon.id);
	break;
	
}

alarm[0] = 30;