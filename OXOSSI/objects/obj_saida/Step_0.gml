/// @description controlando caixa de texto
// You can write your code in this editor

if distance_to_object(obj_player) < 40 {
    if myPressKey == noone {
        myPressKey = instance_create_layer(20,500, "interagir", obj_texto_interacao);
		myPressKey.text = "Pressione espaço para sair";
    }
    if keyboard_check(vk_space) {
        room_goto_next();
    }
} else {
    if myPressKey != noone {
        instance_destroy(myPressKey);
        myPressKey = noone;
    }
}