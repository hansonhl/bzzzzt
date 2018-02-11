/// @description Insert description here
// You can write your code in this editor
var h = obj_rightbar.sprite_height;
y += h / obj_timer.frames_per_bar;
if (y >= h){
	y = obj_rightbar.y;
	player2.combat = true;
}