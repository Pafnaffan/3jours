follow = inst_test;

x = follow.x-(global.cam_width/2)+88;
y = follow.y+(global.cam_height/2)+24;

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