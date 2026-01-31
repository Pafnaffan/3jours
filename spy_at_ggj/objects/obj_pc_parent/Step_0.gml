function get_idea_stolen() {
	if (stolen) {
		idea_already_stolen();
	} else {
		show_debug_message("Idée volée !")
		obj_test.steal_state += idea_worth;
		stolen = true;
	}
}

function idea_already_stolen() {
	show_debug_message("Idée déjà volée")
}