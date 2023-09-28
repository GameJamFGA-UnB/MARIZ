/// @description criando variáveis
// You can write your code in this editor

text = "Pressione espaço para iniciar";
alpha = 0;
boxWidth = sprite_get_width(spr_caixadetexto);
stringHeight = string_height(text);

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;