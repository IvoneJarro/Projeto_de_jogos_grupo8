if(global.flagboss3_acesso && !acordado) {
	image_speed = 0.04;
	sprite_index = spr_Boss3acordando;
	
}

if(sprite_index == spr_Boss3acordando) {
	if (image_index >= image_number - 1) {
        image_speed = 0;              
        image_index = image_number - 1;
		acordado = true;
		global.boss3_acordado = true;

    }	
}

