follow = inst_test;

x = follow.x-(global.cam_width/2)+48;
y = follow.y+(global.cam_height/2)+24;

visible = true; 

function griser(){
	sprite_index = spr_masque_plante_gray;	
}

function degriser(){
	sprite_index = spr_masque_plante_down;
}

function found(){
	visible = true;
}