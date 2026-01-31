x = follow.x-(global.cam_width/2)+8;
y = follow.y+(global.cam_height/2);

if(find){
	visible = true;	
}

if(time_restoration <= 0){
	find = true;
}

time_restoration--;
