if (keyboard_check(ord("W"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	y -= vel
	//if (place_meeting(x, y, obox)) {
	//	y += vel + 1
	//	ready = true
	//	ldir = dir
	//} 
	dir = 0
    sprite_index = splayerfforward
}
if (keyboard_check(ord("S"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	y += vel
	//if (place_meeting(x, y, obox)) {
	//	y -= vel + 1
	//	ready = true
	//	ldir = dir
	//}
	dir = 2
    sprite_index = splayerfbackward
}
if (keyboard_check(ord("A"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	x -= vel
	//if (place_meeting(x, y, obox)) {
	//	x += vel + 1
	//	ready = true
	//	ldir = dir
	//}
	dir = 3
    sprite_index = splayerfleft
}
if (keyboard_check(ord("D"))) {
	if (vel < velcap) {
		vel += velstart
		vel *= velinc
	}
	x += vel
	//if (place_meeting(x, y, obox)) {
	//	x -= vel + 1
	//	ready = true
	//	ldir = dir
	//}
	dir = 1
    sprite_index = splayerfright
}
if keyboard_check_pressed(ord("P")) and ap > 0 {
    instance_create_layer(x, y, "Instances", oplot)
    ap -= 1
    opersistent.plotplaced = true
    array_push(opersistent.plots, x)
    array_push(opersistent.plots, y)
    
}
if keyboard_check_pressed(ord("C")) and !instance_exists(oclock) {
    instance_create_layer(x, y, "Instances", oclock)
    opersistent.clockplaced = true
    array_push(opersistent.clock, x)
    array_push(opersistent.clock, y)
    
}
if keyboard_check_pressed(ord("H")) and !instance_exists(ohouse) {
    instance_create_layer(x, y, "Instances", ohouse)
    opersistent.houseplaced = true
    array_push(opersistent.house, x)
    array_push(opersistent.house, y)
}
if mouse_button = mb_left and !place_meeting(x, y, oplant) and place_meeting(x, y, ocircle) and opersistent.aw > 0 {
    audio_play_sound(aplant, 1, false, opersistent.vol)
    instance_create_layer(x, y, "Instances", oplant)
    opersistent.aw -= 1
    opersistent.wheatplaced = true
    array_push(opersistent.wheats, x)
    array_push(opersistent.wheats, y)
}
if mouse_button = mb_left and place_meeting(x, y, oclock) {
    audio_play_sound(aclock, 2, false, opersistent.vol)
    opersistent.mazetimer = 0
    opersistent.maze = true
    room_goto(rmaze)
}
if mouse_button = mb_right and place_meeting(x, y, ocircle) {
    if place_meeting(x, y, oplant) or place_meeting(x, y, ofplant) {
        foundsomething = false
        t = instance_nearest(x, y, oplanttimer)
        if t.time == 30 * 60 * 3 {
            if instance_exists(oplant) {
                p = instance_nearest(x, y, oplant)
                foundsomething = true
            }
            if instance_exists(ofplant) {
                p = instance_nearest(x, y, ofplant)
                foundsomething = true
            }
            if foundsomething {
                for (var i = 0; i < array_length(opersistent.wheats); i += 2) {
                    if p.x == opersistent.wheats[i] and p.y == opersistent.wheats[i + 1] {
                        array_delete(opersistent.wheats, i, 2)
                    }
                }
                instance_destroy(p)
                instance_destroy(t)
                opersistent.aw += 1
                if random_range(0, 1000) > 800 {
                    audio_play_sound(alucky, 3, false, opersistent.vol)
                    opersistent.aw += 1
                }
            }
        }
    }
}
