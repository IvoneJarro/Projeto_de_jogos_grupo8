if(global.flagboss2_acesso && !acordado) {
	image_speed = 0.04;
	sprite_index = spr_Boss2acordando;
	
}

if(sprite_index == spr_Boss2acordando) {
	if (image_index >= image_number - 1) {
        image_speed = 0;              
        image_index = image_number - 1;
		acordado = true;
		global.boss2_acordado = true;

    }	
}

