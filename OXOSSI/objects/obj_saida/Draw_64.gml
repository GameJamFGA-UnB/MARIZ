/// @description desenhando texto de interação
// You can write your code in this editor

draw_set_font(fnt_interagir);
draw_set_color(c_white);

draw_set_halign(fa_center);
var inst = instance_find(obj_texto_interacao, 0);
if instance_exists(inst) {
    draw_text(700, 550, inst.text);
}