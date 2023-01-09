r = keyboard_check(ord("D"))
l = keyboard_check(ord("A"))
s = keyboard_check(vk_space)
ss = keyboard_check_pressed(vk_space)
c = keyboard_check(vk_shift)

if c {
    if r { sprite_index = splayermcr }
    if l { sprite_index = splayermcl }
} else {
    if r { sprite_index = splayermr }
    if l { sprite_index = splayerml }
}

if mouse_button = mb_left and !instance_exists(otb) {
    mx = mouse_x
    my = mouse_y
    instance_create_layer(x, y, "Instances", otb)
    ox = otb.x
    oy = otb.y
    tr = true
    if oy < my {
        m = (oy - my)/(ox - mx)
        bb = -((m*mx)-my)
    } else {
        m = (my - oy)/(mx - ox)
        bb = -((m*mx)-my)
    }
    count = 0
    px = abs(h) * 2
    py = (m * vx) + bb
    ppx = px + abs(h) * 2
    ppy = (m * ppx) + bb
    vx = ppx - px
    vy = ppy - py
    if vx > 9 { vx = 9 }
    if vx < -9 { vx = -9 }
    if vy > 9 { vy = 9 }
    if vy < -9 { vy = -9 }
}

if tr {
    if ox < mx {  // ++
        otb.y += vy
        otb.x += vx
    }
    if ox > mx {  // --
        otb.y += -vy
        otb.x += -vx
    }
    if place_meeting(otb.x, otb.y - abs(vy), owall) or place_meeting(otb.x, otb.y + abs(vy), owall) {
        vy = -vy
    }
    if place_meeting(otb.x + abs(vx), otb.y, owall) or place_meeting(otb.x - abs(vx), otb.y, owall) {
        vx = -vx
    }
    count += 1
    if count > 135 { tr = false; otb.d = true; count = 0 }
}

if tb { r = false; l = false }

h = (r - l) * dh
if thh {
    h = (r - l) * dh * hh
    hh += 1/400
    if c { hh -= 1/300 }
}

v += g

if place_meeting(x, y + 1, owall) and !s and !c {
    if hh > 1 { hh -= 1/8 }
    thh = false
}
if place_meeting(x, y + 1, owall) and s and !c {
    audio_play_sound(anjump, 6, false, opersistent.vol)
    v = um
    if hh > 1 { hh -= 1/22 }
    thh = false
}
if place_meeting(x, y + 1, owall) and s and c {
    audio_play_sound(ajump, 4, false, opersistent.vol)
    v = um
    thh = true
}

d = sign(h)
if place_meeting(x + h, y, owall) {
    while !place_meeting(x + d, y, owall) { x += d }
    h = 0
    if ss {
        v = um
        tb = true
        if hh > 2 { hh = 2 }
    }
}

if tb {
    h = dh * d
    x -= d * ((-(1/(1/2)))*((b - 8)^2) + 60)  //x -= d * ((-(1/10))*((b - 6)^2) + 4)
    b += 1
    if b == 10 { tb = false; b = 0 }
}

d = sign(v)
if place_meeting(x, y + v, owall) {
    while !place_meeting(x, y + d, owall) { y += d }
    v = 0
}

x += h
y += v