text_x = argument0;
text_y = argument1;
text_message = argument2;

var text_obj;
text_obj = instance_create_layer(text_x, text_y, "layer_dance_messages", obj_popout_text)
text_obj.text_message = text_message;

//Default values
text_obj.text_color = c_white;
text_obj.text_angle = 0;
text_obj.text_drop_speed = 3;

text_obj.text_popout_time = 9;
text_obj.text_popout_speed = 0.3;

text_obj.text_reduction_time = 8;
text_obj.text_reduction_speed = 0.09;

text_obj.text_fade_start_time = 38;
text_obj.text_fade_speed = 0.13;

text_obj.text_destruction_time = 90;

return text_obj;