follow = inst_test;

x = follow.x-(global.cam_width/2)+8;
y = follow.y+(global.cam_height/2)+24;

visible = true;

function griser(){
	sprite_index = spr_masque_hufflen_gray;	
}

function degriser(){
	sprite_index = spr_masque_hufflen_down;
}

function found(){
	visible = true;
}