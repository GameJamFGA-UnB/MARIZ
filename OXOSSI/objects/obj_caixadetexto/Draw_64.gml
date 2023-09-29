/// @description desenhando caixa e texto
// You can write your code in this editor

draw_sprite(spr_caixadetexto, 0, x, y);

draw_set_font(fnt_dialogo);
draw_set_color(c_white);

if charCount < string_length(text[page]) {
	charCount += 0.5;
}

textPart = string_copy(text[page], 1, charCount);

draw_set_halign(fa_center);
draw_text(x+(boxWidth/2)+75, y+yBuffer-5, name);
draw_set_halign(fa_left);

draw_text_ext(x+xBuffer, y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);