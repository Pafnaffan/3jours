
function idea_already_stolen() {
	show_debug_message("Idée déjà volée")
}


function get_idea_stolen() {

	if (stolen) {
		idea_already_stolen();
		return;
	}

	if (array_length(global.idea_list) <= 0) {
		global.current_idea = "Il n'y a plus d'idées à voler...";
		global.dialog_active = true;
		global.dialog_step = 1;
		stolen = true;
		return;
	}

	global.steal_state += idea_worth;

	r = irandom(array_length(global.idea_list) - 1);

	global.current_idea = global.idea_list[r];

	array_delete(global.idea_list, r, 1);

	global.dialog_active = true;
	global.dialog_step = 0;

	stolen = true;
}
