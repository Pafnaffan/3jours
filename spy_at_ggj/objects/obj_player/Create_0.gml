enum power{
	NONE,
	HUFFLEN,
	PLANTE,
	RAPIDITE,
	RACCOON
}

target_x = x;
target_y = y;

moving = false;

image_speed = 0;

spd = 1;

hufflen = false;
regen_hufflen = 8*60;
hufflen_time_use = 5*60;
hufflen_time_restoration = regen_hufflen;

plante = false;
regen_plante = 8*60;
plante_time_use = 5*60;
plante_time_restoration = regen_plante;

rapidite = false;
regen_rapidite = 8*60;
rapidite_time_use = 5*60;
rapidite_time_restoration = regen_rapidite;

raccoon = false; 
regen_raccoon = 8*60;
raccoon_time_use = 5*60;
raccoon_time_restoration = regen_raccoon;

global.powered = power.NONE;

