enum power{
	NONE,
	HUFFLEN,
	PLANTE,
	RAPIDITE,
	RACCOON
}

randomise();

target_x = x;
target_y = y;

moving = false;
can_move = true;

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



global.steal_goal = 100;
global.steal_state = 0;

global.dialog_active = false;
global.dialog_step = 0;
global.current_idea = "";
global.steal_duration = 120;
global.steal_timer = 0;
global.steal_in_progress = false;
global.steal_target = noone;
global.steal_speed = 1;


global.game_over = false;




global.idea_list = [
"Boss rush avec mecaniques rigolotes et parry.",
"Visual novel WWI avec un systeme de paranoia.",
"Les habitants d'une ville hypersurveillee portent des masques pour eviter les deepfakes.",
"Un bal masque se revele etre organise par une secte portant des masques d'animaux.",
"Un roguelike avec un raton laveur qui cherche qui a fait disparaitre sa barbe-a-papa.",
"Un robot futuriste utilisant des lumieres de couleur pour creer des plateformes.",
"Le soir d'halloween, un monstre tente de s'infiltrer chez le joueur.",
"Nuage mysterieux effaçant les visages, voyage pour prevenir les villes.",
"Slasher Maya avec masque des esprits dimensionnel.",
"Shooter 2D top-down base sur les masques ennemis.",
"Plateformes colorees revelees selon masque.",
"Raton laveur construisant un cadeau pour sa copine.",
"Platformer double ecran face/dos.",
"Jeu d'enigmes avec ecran masque selon equipement."
];
