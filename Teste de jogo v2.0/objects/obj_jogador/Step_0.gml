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

if(cooldown_ataque > 0) {
	cooldown_ataque -= 1;	
}

if(keyboard_check(ord("E")) && cooldown_ataque <= 0) {
	if(place_meeting(x,y,obj_inimigo_robo)) {
		obj_inimigo_robo.vida -= dano;
	}
	
	cooldown_ataque = tempo_cooldown;
}
var key_jump = keyboard_check_pressed(vk_space);
var grounded = place_meeting(x, y + 1, obj_chao);


if (key_jump) {
    show_debug_message("Teclou ESPAÇO!");
    if (grounded) {
        show_debug_message("Esta no chao! Pulou!");
        vspd = jumpspeed;
    } else {
        show_debug_message("NAO esta no chao!");
    }
}

	if (!grounded) {
		if(direcao==-1) {
		sprite_index = jumpingA;
	}
		if(direcao==1) {
		sprite_index = jumpingD;	
	}
    vspd += grv;
}

	if (place_meeting(x, y + vspd, obj_chao)) {
		while (!place_meeting(x, y + sign(vspd), obj_chao)) {
        y += sign(vspd);
    }
		vspd = 0;
}

	y += vspd;


 if(place_meeting(x,y,portal)) {
	 room_goto_next();
 }
 