/// @description desenhando texto de interação
// You can write your code in this editor

alpha = min(alpha+0.01, 1);

draw_set_alpha(alpha);

draw_set_font(fnt_dialogo);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_text(650, 475 + stringHeight, text);
draw_set_alpha(1);