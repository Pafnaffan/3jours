follow = inst_test;

x = follow.x-(global.cam_width/2)+128;
y = follow.y+(global.cam_height/2)+24;

visible = true;

function griser(){
	sprite_index = spr_masque_raton_gray;	
}

function degriser(){
	sprite_index = spr_masque_raton_down;
}

function found(){
	visible = true;
}