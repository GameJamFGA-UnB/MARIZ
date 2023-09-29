/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) {
    if charCount < string_length(text[page]) {
        charCount = string_length(text[page]);    
    } else if page+1 < array_length(text) {
        page += 1;
        charCount = 0;
    } else {
        instance_destroy();
        game_end();
    }
}

if keyboard_check_pressed(vk_escape) {
    game_end()    
}