if(global.porta_liberada) {
	image_speed = 0.05;
	sprite_index = spr_Boss2Morte;
}

if(sprite_index == spr_Boss2Morte) {
		if (image_index >= image_number - 1) {
        image_speed = 0;              
        image_index = image_number - 1;
		global.boss2_morto = true;
		}
		
}
if(global.boss2_morto) {
	if (!instance_exists(obj_transicao))
					{
                    var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
                    _trans.estado_fade = 1;
                    _trans.alpha = 0;
                    _trans.velocidade_fade = 0.02;
                    _trans.sala_destino = Boss2END;
                
					}	
}

if(sprite_index == spr_Boss2Risada) {
	image_speed = 0.41;
		if (image_index >= image_number - 1) {
        image_speed = 0;              
        image_index = image_number - 1;
		sprite_index = spr_Boss2Computador2;
		}
}



					
				