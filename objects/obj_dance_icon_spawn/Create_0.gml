/// @description 

//List of icons being dropped down
dance_list = ds_list_create();
//Add combo icons to this second list
combo_list = ds_list_create(); //This just means when player hits two buttons at once left/right

//The target line for players to hit
target_line = 320;

alarm[0] = 30;

combo_count = 0;

total_score = 0;
running_score = 0;

align_left = 230;
align_center = 320;
align_right = 410;