if(global.flagboss1_acesso && !acordado) {
	image_speed = 0.03;
	sprite_index = spr_Boss1Acordando;
	
}

if(sprite_index == spr_Boss1Acordando) {
	if (image_index >= image_number - 1) {
        image_speed = 0;              
        image_index = image_number - 1;
		acordado = true;
		global.boss1_acordado = true;
    }	
}
