function move_player(distance_to_move) {
	var left = false
	var right = false
	var up = false
	var down = false
	
	// If left is being pressed
	// If right is being pressed
	if (keyboard_check(vk_left)) {
		left = true
	}
	if (keyboard_check(vk_right)) {
		right = true
	}
	
	// If up is being pressed
	// If down is being pressed
	if (keyboard_check(vk_up)) {
		up = true
	}
	if (keyboard_check(vk_down)) {
		down = true
	}
	
	// Determine the direction to move on the x axis
	if ( left && !right ) {
		x -= distance_to_move
	}
	if ( right && !left ) {
		x += distance_to_move
	}
	
	// Determine the direction to move on the x axis
	if ( up && !down ) {
		y -= distance_to_move
	}
	if ( down && !up ) {
		y += distance_to_move
	}
}
