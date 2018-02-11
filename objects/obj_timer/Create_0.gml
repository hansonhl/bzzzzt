/// @description Insert description here
// You can write your code in this editor

bpm = 140;
frames_per_second = 120;
frames_per_beat = floor(60 / bpm * frames_per_second);
frames_per_bar = 4 * frames_per_beat;

game_set_speed(frames_per_second, gamespeed_fps);

time = 0;
beat = 0;