follow = inst_test;

x = follow.x-(global.cam_width/2)+88;
y = follow.y+(global.cam_height/2)+24;

x_find = 0;
y_find = 0;

time_duration = 5*60;
time_restoration = 8*60; 

find = true;
used = false;

visible = true;

function griser(){
	sprite_index = spr_masque_rapidite_gray;	
}

function degriser(){
	sprite_index = spr_masque_rapidite_down;
}

function found(){
	visible = true;
}