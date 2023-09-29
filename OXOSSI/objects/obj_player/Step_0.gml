/// @description Movimentação
// You can write your code in this editor

var left = keyboard_check(ord("A")) or keyboard_check(vk_left);
var right = keyboard_check(ord("D")) or keyboard_check(vk_right);
var up = keyboard_check(ord("W")) or keyboard_check(vk_up);
var down = keyboard_check(ord("S")) or keyboard_check(vk_down);

var horMove = (right - left);
var verMove = (down - up);

hvelo = horMove * 0.75;
vvelo = verMove * 0.75;

if keyboard_check(vk_shift){
	hvelo = horMove * 1.5;
	vvelo = verMove * 1.5;
}

var inBoundsX = x + hvelo > 0 and x + hvelo < room_width;
var inBoundsY = y + vvelo > 0 and y + vvelo < room_height;

if inBoundsX and !place_meeting(x + hvelo, y, [obj_macaco,
	obj_arbusto, obj_arvore, obj_arvore_grande, obj_arvore_pequena, obj_casao,	obj_casao_detonado, obj_casinha, obj_casinha_detonado, obj_casinhao, obj_casinhao_detonado, obj_civilizado, obj_estatua, obj_estrutura_grande, obj_estrutura_grande_1, obj_estrutura_grande_vinhas, obj_estrutura_grande_vinhas_1, obj_estrutura_pedra, obj_estrutura_pedra_2, obj_estrutura_pedra_vinha, obj_estrutura_pedra_vinhas_2, obj_eucalipto, obj_eucaliptozinho, obj_indigena_femea, obj_indigena_macho, obj_macaco, obj_pedra_grande, obj_pedra_media, obj_pinheiro, obj_toco
	])  {
    x += hvelo;
}
if inBoundsY and !place_meeting(x, y + vvelo, [obj_macaco,
	obj_arbusto, obj_arvore, obj_arvore_grande, obj_arvore_pequena, obj_casao,	obj_casao_detonado, obj_casinha, obj_casinha_detonado, obj_casinhao, obj_casinhao_detonado, obj_civilizado, obj_estatua, obj_estrutura_grande, obj_estrutura_grande_1, obj_estrutura_grande_vinhas, obj_estrutura_grande_vinhas_1, obj_estrutura_pedra, obj_estrutura_pedra_2, obj_estrutura_pedra_vinha, obj_estrutura_pedra_vinhas_2, obj_eucalipto, obj_eucaliptozinho, obj_indigena_femea, obj_indigena_macho, obj_macaco, obj_pedra_grande, obj_pedra_media, obj_pinheiro, obj_toco
	]) {
    y += vvelo;
}

if right{
	dir = 1;
}else if up {
	dir = 2;
}else if left {
	dir = 3;
}else if down {
	dir = 4;
}

if hvelo == 0 and vvelo == 0{
	//dir = floor((point_direction(x, y, mouse_x, mouse_y)+45)/90) + 1;
	switch dir{
		case 1:
			sprite_index = spr_personagem_parado_direita
		break;
		case 2:
			sprite_index = spr_personagem_parado_cima
		break;
		case 3:
			sprite_index = spr_personagem_parado_esquerda
		break;
		case 4:
			sprite_index = spr_personagem_parado_baixo
		break;
	}
} else {
	switch dir{
		case 1:
			sprite_index = spr_personagem_correndo_direita
		break;
		case 2:
			sprite_index = spr_personagem_correndo_cima
		break;
		case 3:
			sprite_index = spr_personagem_correndo_esquerda
		break;
		case 4:
			sprite_index = spr_personagem_correndo_baixo
		break;
	}
}

if keyboard_check_pressed(vk_escape) {
	game_end();	
}
