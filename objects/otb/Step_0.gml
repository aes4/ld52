if d {
    instance_destroy(self)
}
if place_meeting(x, y, oback) {
    audio_play_sound(ahurt, 5, false, opersistent.vol)
    opersistent.cycle = true
    opersistent.maze = false
    opersistent.steps = opersistent.mazetimer
    room_goto(rfarm)
}