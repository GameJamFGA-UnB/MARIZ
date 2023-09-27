/// @description Movimentação
// You can write your code in this editor

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

var horMove = (right - left);
var verMove = (down - up);

hsp = horMove * 0.75;
vsp = verMove * 0.75;

if (!place_meeting(x + hsp, y, [obj_wall, obj_arvore])) {
    x += hsp;
}
if (!place_meeting(x, y + vsp, [obj_wall, obj_arvore])) {
    y += vsp;
}