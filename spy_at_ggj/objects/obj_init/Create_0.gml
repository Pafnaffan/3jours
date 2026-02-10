global.cam_width = 480;
global.cam_height = 270;

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

global.ideas_getted=0;

global.game_over = false;




global.idea_list = [
"Boss rush avec mécaniques rigolotes et parry.",
"Visual novel WWI avec un système de paranoia.",
"Les habitants d'une ville hypersurveillée portent des masques pour éviter les deepfakes.",
"Un bal masque se révèle être organisé par une secte portant des masques d'animaux.",
"Un roguelike avec un raton laveur qui cherche qui a fait disparaitre sa barbe-à-papa.",
"Un robot futuriste utilisant des lumières de couleur pour créer des plateformes.",
"Le soir d'halloween, un monstre tente de s'infiltrer chez le joueur.",
"Nuage mystérieux effaçant les visages, voyage pour prévenir les villes.",
"Slasher Maya avec masque des esprits dimensionnels.",
"Shooter 2D top-down basé sur les masques ennemis.",
"Plateformes colorées révélées selon masque.",
"Raton laveur construisant un cadeau pour sa copine.",
"Platformer double écran face/dos.",
"Jeu d'énigmes avec écran masque selon équipement."
];

room_goto(Room1);
