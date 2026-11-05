var velocidade = 5;

if (room == cidade) {
    depth = 1;
}

var _terminal = instance_find(obj_terminal, 0);

if (_terminal != noone && _terminal.ativo) {
    vspd = 0;
    exit;
}
if (vida_atual <= 0) 
{
	global.desafios_resolvidos = 0;
	global.porta_liberada = false;
	global.chave_liberada = false;
    // Trava a velocidade horizontal e gravidade para o corpo parar
    vspd = 0;
    
    // Define o sprite de morte apenas uma vez
    if (sprite_index != spr_jogadormorte) 
    {
        sprite_index = spr_jogadormorte;
        image_index = 0;
        image_speed = 0.5; 
    }
   

	if(sprite_index == spr_jogadormorte) {
		if (image_index >= image_number - 1) {              
        image_index = image_number - 1;
		}

    // Trava no último frame da animação de morte para o sprite não ficar repetindo
    if (image_index == image_number - 1) 
    {
		room_restart();
	}
       
	
        // Só cria a transição ou reinicia APÓS a animação de morte terminar completamente
         if (room == BossFight1) 
        {
            if (!instance_exists(obj_transicao))
            {
                var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
                _trans.estado_fade = 1;
                _trans.alpha = 0;
                _trans.velocidade_fade = 0.02;
                _trans.sala_destino = Boss1;
            } 
          
        }
    }
	
    
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
    else if (!atacando) 
    {
        image_speed = 1;

        if (keyboard_check(ord("A"))) 
        {
            sprite_index = spr_andando_jogadorE;
        }
        else if (keyboard_check(ord("D"))) 
        {
            sprite_index = spr_andando_jogadorD;
        }
        else 
        {
            if (direcao == 1) 
            {
                sprite_index = spr_parado_jogadorD;
            } 
            else 
            {
                sprite_index = spr_parado_jogadorE;
            }
        }
        
        
      
    }
	

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

        var _inimigo = instance_place(x + (15*direcao), y, obj_inimigo_robo);

        if (_inimigo != noone) {
            _inimigo.vida_atual -= 20;
        }
    }
}

if(global.desafios_resolvidos == 2 || room == quarto || room == cidade || room == PrimeiraFase || room == Boss1END || room == Boss2END || room == Boss3END) {
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
    if (!instance_exists(obj_transicao)) {
        var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

        _trans.estado_fade = 1;
        _trans.alpha = 0;
        _trans.velocidade_fade = 0.02;
        if(_trans.alpha == 1) {
            _trans.sala_destino = room_goto(BossFight1);
        }
    }
}
else if(global.boss2_acordado && room == Boss2) {
    if (!instance_exists(obj_transicao)) {
        var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

        _trans.estado_fade = 1;
        _trans.alpha = 0;
        _trans.velocidade_fade = 0.02;
        if(_trans.alpha == 1) {
            _trans.sala_destino = BossFight2;
        }
    }
}

else if(global.boss3_acordado && room == Boss3) {
    if (!instance_exists(obj_transicao)) {
        var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

        _trans.estado_fade = 1;
        _trans.alpha = 0;
        _trans.velocidade_fade = 0.02;
        if(_trans.alpha == 1) {
            _trans.sala_destino = BossFight3;
        }
    }
}

if(place_meeting(x,y,obj_detectground)) {
	vida_atual = 0;
}

