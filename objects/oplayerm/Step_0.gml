r = keyboard_check(ord("F"))
l = keyboard_check(ord("S"))
s = keyboard_check(vk_space)
ss = keyboard_check_pressed(vk_space)
c = keyboard_check(ord("Z"))
if c {
    sprite_index = splayer2
} else { sprite_index = splayer1 }


if mouse_button = mb_left and !instance_exists(otb) {  // need to toggle
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
    i = ox
    hhh = h
    count = 0
}  // y = (m * i) + b

if tr {
    if ox < mx {  // ++
        otb.y = (m * i) + bb
        otb.x = i
        i += abs(hhh) * 3
    }
    if ox > mx {  // --
        otb.y = (m * i) + bb
        otb.x = i
        i -= abs(hhh) * 3
    }
    count += 1
    if count > 135 { tr = false; otb.d = true; count = 0 }
}



if tb {
    r = false
    l = false
}

h = (r - l) * dh
if thh {
    h = (r - l) * dh * hh
    hh += 1/400
    if c {
        hh -= 1/300
    }
}

v += g


if place_meeting(x, y + 1, owall) and !s and !c {
    if hh > 1 { hh -= 1/8 }
    thh = false
}
if place_meeting(x, y + 1, owall) and s and !c {
    v = um
    if hh > 1 { hh -= 1/22 }
    thh = false
}
if place_meeting(x, y + 1, owall) and s and c {
    v = um
    thh = true
}

d = sign(h)
if place_meeting(x + h, y, owall) {
    while !place_meeting(x + d, y, owall) {
        x += d
    }
    h = 0
    if ss {
        v = um
        tb = true
        if hh > 2 { hh = 2 }
    }
}
if tb {
    h = dh * d
    //x -= d * ((-(1/10))*((b - 6)^2) + 4)
    x -= d * ((-(1/(1/2)))*((b - 8)^2) + 60)
    b += 1
    if b == 10 {
        tb = false
        b = 0
    }
    //if place_meeting(x + w, y, owall) {
    //    while !place_meeting(x + d, y, owall) {
    //        x += d
    //    }
    //    h = 0
    //} else { x += w }
    /*
    while b < 300 {
        x -= d * ((-(1/1000))*(b + 60)*(b - 400)-20)
        //x -= d * ((-(1/100))*((b - 2)^2) + 5)
        b += 1
        if b < 299 {
            tb = false
            b = 0
            break
        }
    }
    */
}
d = sign(v)
if place_meeting(x, y + v, owall) {
    while !place_meeting(x, y + d, owall) {
        y += d
    }
    v = 0
}


x += h
y += v
    


//s = keyboard_check(vk_space)
//hd = 0
//if keyboard_check(ord("F")) { hd = 1 }
//if keyboard_check(ord("S")) { hd = -1 }
//vd = sign(v)
//th = h
//tv = v

//if !place_meeting(x, y + 1, owall){
//    v += g
//    g = 0.5
//} else {
    
//}

//if place_meeting(x + h, y, owall) {
//    while !place_meeting(x + hd, y, owall) {
//        x += hd
//    }
//    th = 0
//}

//if place_meeting(x, y + v, owall) {
//    while !place_meeting(x, y + vd, owall) {
//        y += vd
//    }
//    tv = 0
//}

//x += th
//y += v



//r = keyboard_check(ord("F"))
//l = keyboard_check(ord("S"))
//j = keyboard_check(vk_space)

////Work out where to move horizontally
//hsp = (r - l) * hsp_walk

////Work out where to move vertically
//vsp = vsp + grv

////Work out if we should jump
//if place_meeting(x, y + 1 ,owall) and j
//{
//    vsp = vsp_jump 
//}

////Check for horizontal collisions and then move if we can
//d = sign(hsp) //moving left or right? right = 1, left = -1.
//if place_meeting(x + hsp, y , owall)
//{
//    //move as close as we can
//    while !place_meeting(x + d,y,owall)
//    {
//        x += d
//    }
//    hsp = 0
//    if j { vsp = vsp_jump }
//}

////Check for vertical collisions and then move if we can
//d = sign(vsp) //up = -1, down = 1.
//if place_meeting(x ,y + vsp, owall)
//{
//    //move as close as we can
//    while !place_meeting(x, y + d, owall)
//    {
//        y += d
//    }
//    vsp = 0
//}

//x += hsp
//y += vsp

// y = (-(1/10))*((input - 2)^2) + 5
//function sum() {  // set upwards momentum
//    um = (-(1/pl))*((iv - iumsl)^2) + umc
//    iv += ir
//}

//function d() {  // direction
//    if py < y {
//        return "u"
//    } else if py > y {
//        return "d"
//    } else if px < x {
//        return "r"
//    } else if px > x {
//        return "l"
//    } else { return "i" }
//}
//function c(a, dir) {  // check if we can move a = amount to move ! a must always be positive
//    // 2 things: check if a collides if it does then we slowly go to box
//    // if it doesn't collide then we move a
//    switch(d()) {
//        case "u":
//            if place_meeting(x, y - a, owall) {
//                //slowly go to box
//                while !place_meeting(x, y - 1, owall) {
//                    y -= 1
//                }
//                return "u"
//            } else {
//                y -= a
//                return "m"
//            }
//            break
//        case "d":
//            if place_meeting(x, y + a, owall) {
//                //slowly go to box
//                while !place_meeting(x, y + 1, owall) {
//                    y += 1
//                }
//                return "d"
//            } else {
//                y += a
//                return "m"
//            }
//            break
//        case "r":
//            if place_meeting(x + a, y, owall) {
//                //slowly go to box
//                while !place_meeting(x - 1, y, owall) {
//                    x += 1
//                }
//                return "r"
//            } else {
//                x += a
//                return "m"
//            }
//            break
//        case "l":
//            if place_meeting(x - a, y, owall) {
//                //slowly go to box
//                while !place_meeting(x + 1, y, owall) {
//                    x -= 1
//                }
//                return "r"
//            } else {
//                x -= a
//                return "m"
//            }
//            break
//        case "i":
//            switch(dir) {
//                case "u":
//                    if place_meeting(x, y - a, owall) {
//                        //slowly go to box
//                        while !place_meeting(x, y - 1, owall) {
//                            y -= 1
//                        }
//                        return "u"
//                    } else {
//                        y -= a
//                        return "m"
//                    }
//                    break
//                case "d":
//                    if place_meeting(x, y + a, owall) {
//                        //slowly go to box
//                        while !place_meeting(x, y + 1, owall) {
//                            y += 1
//                        }
//                        return "d"
//                    } else {
//                        y += a
//                        return "m"
//                    }
//                    break
//                case "r":
//                    if place_meeting(x + a, y, owall) {
//                        //slowly go to box
//                        while !place_meeting(x - 1, y, owall) {
//                            x += 1
//                        }
//                        return "r"
//                    } else {
//                        x += a
//                        return "m"
//                    }
//                    break
//                case "l":
//                    if place_meeting(x - a, y, owall) {
//                        //slowly go to box
//                        while !place_meeting(x + 1, y, owall) {
//                            x -= 1
//                        }
//                        return "l"
//                    } else {
//                        x -= a
//                        return "m"
//                    }
//                    break
//            }
//    }
//}
//function l() {  // location
//    if place_meeting(x, y + 1, owall) {
//        return "u"
//    } else if place_meeting(x, y - 1, owall) {
//        return "d"
//    } else if place_meeting(x + 1, y, owall) {
//        return "r"
//    } else if place_meeting(x - 1, y, owall) {
//        return "l"
//    } else {
//        return "a"
//    }
//}

//if l() != "d" {
//    c(g,"d")
//    g += 0.5
//} else {
//    g = 0
//}





//function csu(s) {  // check and snap upwards s = speed
//    if place_meeting(x, y, owall) {
//        y += s
//        if !place_meeting(x, y, owall) {
//            while !place_meeting(x, y + 1, owall) {
//                y -= 1
//            }
//            return true
//        } else {
//            y -= s
//            return false
//        }
//    }
//}
//function csd(s) {  // check and snap downwards s = speed
//    if place_meeting(x, y, owall) {
//        y -= s
//        if !place_meeting(x, y, owall) {
//            while !place_meeting(x, y - 1, owall) {
//                y += 1
//            }
//            return true
//        } else {
//            y += s
//            return false
//        }
//    }
//}
//function csl(s) {  // check and snap left s = speed
//    if place_meeting(x, y, owall) {
//        x -= (hd * s)
//        if !place_meeting(x, y, owall) {
//            while !place_meeting(x - 1, y, owall) {
//                x += hd
//            }
//            return true
//        } else {
//            x += (hd * s)
//            return false
//        }
//    }
//}
//function csr(s) {  // check and snap right s = speed
//    if place_meeting(x, y, owall) {
//        x -= (hd * s)
//        if !place_meeting(x, y, owall) {
//            while !place_meeting(x + 1, y, owall) {
//                x += hd
//            }
//            return true
//        } else {
//            x += (hd * s)
//            return false
//        }
//    }
//}
//function csb(s) {  // check and snap both left and right s = speed * prob doesn't work
//    if place_meeting(x, y, owall) {
//        x -= (hd * s)
//        if !place_meeting(x, y, owall) {
//            while !place_meeting(x - 1, y, owall) {
//                x += hd
//            }
//            return true
//        } else {
//            x += (hd * s)
//            return false
//        }
//    }
//}
//function l() {  // location
//    while !place_meeting
//    if place_meeting(x, y, owall) {
//        i = 1
//        while place_meeting(x, y, owall) {
//            if !place_meeting(x, y - i, owall) {
//                return "g"
//                break
//            }
//            if !place_meeting(x, y + i, owall) {
//                return "u"
//                break
//            }
//            if !place_meeting(x - i, y, owall) {
//                return "r"
//                break
//            }
//            if !place_meeting(x + i, y, owall) {
//                return "l"
//                break
//            }
//            if place_meeting(x, y, owall) {
//                i += 1
//            }
//        }
//    } else {
//        return "a"
//    }
    
//}
//function cs() {  // check and snap
//    if place_meeting(x, y, owall) {
//        i = 1
//        while place_meeting(x, y, owall) {
//            if !place_meeting(x, y - i, owall) {
//                return "floor"
//                break
//            }
//            if !place_meeting(x, y + i, owall) {
//                return "roof"
//                break
//            }
//            if !place_meeting(x - i, y, owall) {
//                return "right wall"
//                break
//            }
//            if !place_meeting(x + i, y, owall) {
//                return "left wall"
//                break
//            }
//            if place_meeting(x, y, owall) {
//                i += 1
//            }
//        }
//    } else {
//        return "nc"  // not colliding
//    }
//}

//l = cs()  // location


//hd = 0
//if keyboard_check(ord("F")) { hd = 1 }
//if keyboard_check(ord("S")) { hd = -1 }

//switch(l) {
//    case "nc":
//        h += 0.5
//        g += 0.5
//        y += g
//        break
//    case "floor":
//        y -= g
//        g = 0
//        break
//    case "roof":
//        break
//    case "right wall":
//        break
//    case "left wall":
//        break
//}


//if air {
//    if l == "nothing" {
//        y += g
//        x += (hd * h)
//        if l == "floor" {
//            air = false
//            g = 0
//            um = 0
//            ir = 0
//            t = false
//            if hd = 0 { h = 1 }
//        }
//        h += 0.05
//        g += 0.05
//    }
//} else {
//    g = 0
//    if h > hc { h = hc }
//    x += hd * h
//    //csr(h)
//    //csl(h)
//}

//if keyboard_check_direct(vk_space) {
//    if t {
//        air = true
//        sum()
//        if um > 0 {
//            if l != "roof" {
//                y -= um
//            }
//            //csu(um)
//        }
//        iv += ir
//    } else {
//        t = true
//    }
//}
//if !place_meeting(x, y - 1, owall) {
//    air = true
//}
//px = x
//py = y