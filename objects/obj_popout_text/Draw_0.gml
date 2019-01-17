/// @description 
draw_set_halign(fa_center);
draw_set_font(fnt_gb);
draw_text_transformed_color(x, y,
							text_message,
							text_scale, text_scale,
							text_angle,
							text_color, text_color, text_color, text_color,
							text_alpha);
							
scr_text_reset();