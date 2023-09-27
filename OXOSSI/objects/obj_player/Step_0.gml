/// @description Movimentação
// You can write your code in this editor

var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var horMove = (right - left);
var verMove = (down - up);

hvelo = horMove * 0.75;
vvelo = verMove * 0.75;

if (!place_meeting(x + hvelo, y, obj_wall)) {
    x += hvelo;
}
if (!place_meeting(x, y + vvelo, obj_wall)) {
    y += vvelo;
}

if right{
	dir = 0;
}else if up {
	dir = 1;
}else if left {
	dir = 2;
}else if down {
	dir = 3;
}
if hvelo == 0 and vvelo == 0{
	dir = floor((point_direction(x, y, mouse_x, mouse_y)+45)/90);
}

if hvelo == 0 and vvelo == 0{
	switch dir{
		case 0:
			sprite_index = spr_personagem_parado_direita
		break;
		case 1:
			sprite_index = spr_personagem_parado_cima
		break;
		case 2:
			sprite_index = spr_personagem_parado_esquerda
		break;
		case 3:
			sprite_index = spr_personagem_parado_baixo
		break;
	}
} else {
	switch dir{
		case 0:
			sprite_index = spr_personagem_correndo_direita
		break;
		case 1:
			sprite_index = spr_personagem_correndo_cima
		break;
		case 2:
			sprite_index = spr_personagem_correndo_esquerda
		break;
		case 3:
			sprite_index = spr_personagem_correndo_baixo
		break;
	}
}