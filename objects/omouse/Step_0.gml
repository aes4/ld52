x = mouse_x
y = mouse_y
if instance_exists(obquit) {
    if (place_meeting(x, y, obquit)) {
        //obquit.sprite_index = squitselected
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		game_end()
    	}
    } //else { obquit.sprite_index = squit }
}