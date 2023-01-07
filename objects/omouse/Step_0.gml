x = mouse_x
y = mouse_y
if instance_exists(obstart) {
    if (place_meeting(x, y, obstart)) {
    	// audio_play_sound(nselect, 5, false, opersistent.vol) 
        //obrace.sprite_index = sraceselected
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		room_goto(rmaze)
    	}
    }// else { obrace.sprite_index = srace }
}
if instance_exists(obsettings) {
    if (place_meeting(x, y, obsettings)) {
        //obsettings.sprite_index = ssettingsseleceted
    	if (mouse_button == mb_left || mouse_button = mb_right) {
    		room_goto(rsettings)
    	}
    }// else { obsettings.sprite_index = ssettings }
}
if instance_exists(obquit) {
    if (place_meeting(x, y, obquit)) {
        //obquit.sprite_index = squitselected
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    	    game_end()
        }
    }// else { obquit.sprite_index = squit }
}
if instance_exists(obdebug) {
    if (place_meeting(x, y, obdebug)) {
        //obdebug.sprite_index = sdebugselected
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		opersistent.debug = true
    	}
    }// else { obdebug.sprite_index = sdebug }
}
if instance_exists(obmainmenu) {
    if (place_meeting(x, y, obmainmenu)) {
        //obmainmenu.sprite_index = smainmenuselected
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		room_goto(rmainmenu)
    	}
    }// else { obmainmenu.sprite_index = smainmenu }
}
if opersistent.vol < 0 opersistent.vol = 0