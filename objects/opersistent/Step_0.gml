if (keyboard_check(vk_escape)) {
    game_end()
}
if cycle {
    for (var i = 0; i < instance_number(oplanttimer); ++i;){
        p = instance_find(oplanttimer, i);
        p.time += 30 * 60 * 1
    }
    // grow plant
    cycle = false
}
if maze {
    mazetimer += 1
}