hd = 0
if keyboard_check(ord("F")) {
    hd = 1
}
if keyboard_check(ord("S")) {
    hd = -1
}
if air {
    y += g
    x += (hd * h)
    if place_meeting(x, y, owall) {
        // to check if on top move instance place then check if instance place is lower
        y -= g
        while !place_meeting(x, y - 1, owall) {
            y += 1
        }
        air = false
        um = 0
        ir = 0
        t = false
        if hd == 0 { h = 0 }
    }
    h += 0.1
    g += 0.1
} else {
    g = 0
    if h > hc { h = hc }/* something about shift*/
    if hd != 0 { x += hd * hc /*(hd * h)*/ }
}

if keyboard_check_direct(vk_space) {
    if t {
        air = true
        um = (-(1/pl))*((ir - iumsl)^2) + umc
        if um > 0 { y -= um }
        ir += 1
    } else {
        t = true
    }
}
if !place_meeting(x, y - 1, owall) {
    air = true
}