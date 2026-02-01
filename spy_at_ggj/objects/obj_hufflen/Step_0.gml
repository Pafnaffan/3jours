x = follow.x-(global.cam_width/2)+8;
y = follow.y+(global.cam_height/2)+24;

if(find){
	visible = true;	
}

if(time_restoration <= 0){
	sprite_index = spr_masque_hufflen_down;
	time_restoration = 3*60;
	used = false
}


if(used){
	time_restoration--;	
}

function found(){
	find = true;
}

visible = true;

