function move_player(distance_to_move) {
	sprite_index = spr_player_move_right
	stop_moving()
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
		start_moving()
	}
	if ( right && !left ) {
		x += distance_to_move
		start_moving()
	}
	
	// Determine the direction to move on the x axis
	if ( up && !down ) {
		y -= distance_to_move
		start_moving()
	}
	if ( down && !up ) {
		y += distance_to_move
		start_moving()
	}
	
	// determine player image angle for sprite
	if ( up ) image_angle = 90
	if ( right ) image_angle = 0
	if ( down) image_angle = 270
	if ( left ) image_angle = 180
}

function start_moving() {
	sprite_set_speed(spr_player_move_right, 15, spritespeed_framespersecond)	
}

function stop_moving() {
	sprite_set_speed(spr_player_move_right, 0, spritespeed_framespersecond)	
}