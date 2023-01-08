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
}