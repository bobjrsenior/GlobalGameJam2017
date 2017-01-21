///vars
global.play = true;
global.waiting = false;
global.spd_var = 0;
global.loc_var = 0;
global.dir_var = 0;
turn_step_count = 32;
play_countdown = turn_step_count;
window_set_fullscreen(true);
view_visible[0] = true;
audio_play_sound(snd_background, 0, true);