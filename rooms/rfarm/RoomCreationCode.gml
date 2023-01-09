if opersistent.clockplaced {
    instance_create_layer(opersistent.clock[0], opersistent.clock[1], "Instances", oclock)
}
if opersistent.houseplaced {
    instance_create_layer(opersistent.house[0], opersistent.house[1], "Instances", ohouse)
}
if opersistent.plotplaced {
    for (var i = 0; i < array_length(opersistent.plots); i += 2) {  // [x,y, x,y, x,y] 6 !0 !2 !4 6
        instance_create_layer(opersistent.plots[i], opersistent.plots[i + 1], "Instances", oplot)
    }
}
if opersistent.wheatplaced {
    for (var i = 0; i < array_length(opersistent.wheats); i += 2) {
        instance_create_layer(opersistent.wheats[i], opersistent.wheats[i + 1], "Instances", ofplant)
    }
}
//for (var i = 0; i < 10; i += 1)
//{
//    draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
//}