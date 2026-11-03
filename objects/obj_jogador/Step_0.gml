
var velocidade = 5;

if (room == cidade) {
    depth = 1;
}

var _terminal = instance_find(obj_terminal, 0);

if (_terminal != noone && _terminal.ativo) {
    vspd = 0;
    exit;
}

if (cooldown > 0) {
    cooldown--;
}

if (!global.jogo_pausado) {

    if (keyboard_check(ord("A"))) {
        direcao = -1;

        if (!place_meeting(x - velocidade, y, colisao)) {
            x -= velocidade;
        }
    }
    else if (keyboard_check(ord("D"))) {
        direcao = 1;

        if (!place_meeting(x + velocidade, y, colisao)) {
            x += velocidade;
        }
    }

    // Pulo
    var key_jump = keyboard_check_pressed(vk_space);
    var grounded = place_meeting(x, y + 1, obj_chao);

    if (key_jump && grounded && !atacando) {
        vspd = jumpspeed;
    }

    if (!grounded) {
        vspd += grv;
    }

    if (place_meeting(x, y + vspd, obj_chao)) {
        while (!place_meeting(x, y + sign(vspd), obj_chao)) {
            y += sign(vspd);
        }
        vspd = 0;
    }

    y += vspd;

    grounded = place_meeting(x, y + 1, obj_chao);

    if (!grounded) {
        atacando = false;

        if (direcao == 1) {
            sprite_index = jumpingD;
        } else {
            sprite_index = jumpingA;
        }

        image_speed = 0.2;

        if (image_index >= image_number - 1) {
            image_speed = 0;
        }
    }
    else if (!atacando) {
        image_speed = 1;

        if (keyboard_check(ord("A"))) {
            sprite_index = spr_andando_jogadorE;
        }
        else if (keyboard_check(ord("D"))) {
            sprite_index = spr_andando_jogadorD;
        }
        else {
            if (direcao == 1) {
                sprite_index = spr_parado_jogadorD;
            } else {
                sprite_index = spr_parado_jogadorE;
            }
        }
    }

    // Ataque
    if (grounded && keyboard_check_pressed(ord("Q"))
    && cooldown <= 0 && !atacando) {

        atacando = true;
        image_index = 0;
        image_speed = 0.5;

        if (direcao == 1) {
            sprite_index = spr_ataqueD;
        } else {
            sprite_index = spr_ataqueE;
        }

        cooldown = tempo_cooldown;

        var _inimigo = instance_place(x, y, obj_inimigo_robo);

        if (_inimigo != noone) {
            _inimigo.vida_atual -= 20;
        }
		
		
    }
}


if(global.desafios_resolvidos == 2 || room == quarto || room == cidade || room == PrimeiraFase) {
	if (place_meeting(x, y, obj_porta)) {
		if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("W"))
		|| keyboard_check_pressed(vk_up)) {
			global.desafios_resolvidos = 0;
		global.chave_liberada = false;
		global.porta_liberada = false;

			if (!instance_exists(obj_transicao)) {
				var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

				_trans.estado_fade = 1;
				_trans.alpha = 0;
				_trans.velocidade_fade = 0.02;
			    _trans.sala_destino = room_next(room);
			}
		}
	}
}

else if(global.boss1_acordado && room == Boss1) {
	//cooldown = tempo_cooldown;
	//if(cooldown >= 1) {
			if (!instance_exists(obj_transicao)) {
				var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

				_trans.estado_fade = 1;
				_trans.alpha = 0;
				_trans.velocidade_fade = 0.02;
				if(_trans.alpha == 1) {
			    _trans.sala_destino = room_goto(BossFight1);
				}
			}
	//}
}





if (vida_atual <= 0) {
    room_restart();
}
