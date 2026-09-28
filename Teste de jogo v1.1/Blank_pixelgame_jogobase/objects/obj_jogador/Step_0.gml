var velocidade = 5;
depth = 1;

if (keyboard_check(ord("A"))) {
    sprite_index = spr_andando_jogadorE;
    direcao = 1;
	
    if (!place_meeting(x - velocidade, y, colisao)) {
        x -= velocidade;
    }
}


else if (keyboard_check(ord("D"))) {
    sprite_index = spr_andando_jogadorD;
    direcao=-1;

    if (!place_meeting(x + velocidade, y, colisao)) {
        x += velocidade;
    }
}

else if(!keyboard_check(ord("A")) && !keyboard_check(ord("D"))){
	if(direcao==1) {
		sprite_index = spr_parado_jogadorE;	
	}
	if(direcao==-1) {
		sprite_index = spr_parado_jogadorD;	
	}
	
}

if(keyboard_check(ord("E"))) {
	if(place_meeting(x,y,obj_inimigo_robo)) {
		obj_inimigo_robo.vida -= dano;
	}
}


 if(place_meeting(x,y,portal)) {
	 room_goto_next();
 }
 