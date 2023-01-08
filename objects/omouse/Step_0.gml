x = mouse_x
y = mouse_y
if instance_exists(obstart) {
    if (place_meeting(x, y, obstart)) {
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		room_goto(rfarm)
    	}
    }
}
if instance_exists(obsettings) {
    if (place_meeting(x, y, obsettings)) {
    	if (mouse_button == mb_left || mouse_button = mb_right) {
    		room_goto(rsettings)
    	}
    }
}
if instance_exists(obquit) {
    if (place_meeting(x, y, obquit)) {
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    	    game_end()
        }
    }
}
if instance_exists(obdebug) {
    if (place_meeting(x, y, obdebug)) {
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		opersistent.debug = true
    	}
    }
}
if instance_exists(obmainmenu) {
    if (place_meeting(x, y, obmainmenu)) {
    	if (mouse_button == mb_left || mouse_button == mb_right) {
    		room_goto(rmainmenu)
    	}
    }
}
if opersistent.vol < 0 opersistent.vol = 0