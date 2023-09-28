/// @description controlando caixa de texto
// You can write your code in this editor

if distance_to_object(obj_player) < 15 {
	if myPressKey == noone {
		myPressKey = instance_create_layer(20,500, "interagir", obj_texto);
	}
	if keyboard_check(vk_space) {
		if myTextbox == noone {
			myTextbox = instance_create_layer(20,500,"texto", obj_caixadetexto);	
			myTextbox.text = myText;
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
} else {
	if myTextbox != noone {
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
	if myPressKey != noone {
		instance_destroy(myPressKey);
		myPressKey = noone;
	}
}
