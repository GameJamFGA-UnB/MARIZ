/// @description desenhando texto de interação
// You can write your code in this editor

draw_set_font(fnt_dialogo);
draw_set_color(c_white);

draw_set_halign(fa_center);

if charCount < string_length(text[page]) {
	charCount += 0.5;
}

textPart = string_copy(text[page], 1, charCount);

draw_text_ext(x, y+stringHeight, textPart, stringHeight, boxWidth);