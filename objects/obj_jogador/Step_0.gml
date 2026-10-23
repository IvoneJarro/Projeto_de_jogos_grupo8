<<<<<<< HEAD
<<<<<<< HEAD

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
		if (keyboard_check_pressed(ord("E"))
		|| keyboard_check_pressed(ord("W"))
		|| keyboard_check_pressed(vk_up)) {

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
	cooldown = tempo_cooldown;
	if(cooldown >= 0) {
			if (!instance_exists(obj_transicao)) {
				var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

				_trans.estado_fade = 1;
				_trans.alpha = 0;
				_trans.velocidade_fade = 0.02;
			    _trans.sala_destino = room_goto(BossFight1);
			}
	}
}


if (vida_atual <= 0) {
    room_restart();
}
=======
var velocidade = 5;

// No Step do Jogador e Inimigos:
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

if (key_jump && grounded) {
    show_debug_message("Esta no chao! Pulou!");
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


if (!grounded) {
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
else {
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

if (place_meeting(x, y, obj_porta)) 
{
    if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_up)) 
    {
        show_debug_message("1. APERTOU TECLA DE INTERAÇÃO!");
        
        if (!instance_exists(obj_transicao)) 
        {
            var _inst_portal = instance_place(x, y, obj_porta);
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
            
            _trans.estado_fade = 1; // Inicia Fade Out
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;
            
            // Lógica de destino correta:
            if (_inst_portal != noone && variable_instance_exists(_inst_portal, "target_room") && room_exists(_inst_portal.target_room)) {
                _trans.sala_destino = _inst_portal.target_room;
            } else if (room_exists(cidade)) {
                _trans.sala_destino = cidade;
            } else {
                _trans.sala_destino = room_next(room); // room_next da SALA ATUAL (room)
            }
            
            show_debug_message("2. TRANSIÇÃO CRIADA COM DESTINO: " + string(_trans.sala_destino));
        }
    }
}
// --- EVENTO STEP DO obj_jogador ---

// Detecta quando a tecla J é pressionada
if (keyboard_check_pressed(ord("Q"))) 
{
    // Verifica se há um robô encostado no jogador no momento do golpe
    var _inimigo = instance_place(x, y, obj_inimigo_robo);
    
    // Se encontrou o robô, aplica o dano
    if (_inimigo != noone) 
    {
        _inimigo.vida_atual -= 20; // Dano do ataque do jogador
        show_debug_message("Hit no robô! Vida restante: " + string(_inimigo.vida_atual));
    }
}
// Exemplo: Ataca 30 pixels à frente da direção que o jogador está olhando
var _hit_x = x + (direcao * 30); 
var _inimigo = instance_place(_hit_x, y, obj_inimigo_robo);

if (keyboard_check_pressed(ord("Q")) && _inimigo != noone) 
{
    _inimigo.vida_atual -= 15;
}
        }
		// --- NO STEP DO JOGADOR ---
if (!global.jogo_pausado) {
    
    // Simula a lógica de C: if (keyboard_check_pressed(ord("Q")))
    if (keyboard_check_pressed(ord("Q"))) {
        // Executa a lógica de ataque (cria hitbox, toca animação de soco/espada, etc.)
        show_debug_message("Tecla Q pressionada! A atacar o inimigo...");
    }
}
    // --- NO STEP DO JOGADOR ---

if (!global.jogo_pausado) {
    
    // Só ataca se já tiver programado o botão no terminal
    if (pode_atacar) {
        if (keyboard_check_pressed(ord("Q"))) {
            
            // Lógica de Ataque contra o Inimigo
            show_debug_message("Ataque executado com sucesso!");
            
            // Exemplo de verificação de acerto no inimigo próximo
            var _inimigo = instance_place(x + (image_xscale * 20), y, obj_inimigo_robo);
            if (_inimigo != noone) {
                _inimigo.vida_atual -= 10;
            }
        }
    }
}
// --- EVENTO STEP DO JOGADOR ---

if (!global.jogo_pausado) {
    // Todo o teu movimento (WASD) e colisões ficam aqui dentro!
    var _mov_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    x += _mov_h * 4;
    
    // E aqui também podes colocar o ataque com a tecla Q (se já programaste):
    if (pode_atacar && keyboard_check_pressed(ord("Q"))) {
        show_debug_message("Ataque executado!");
    }
}
if (keyboard_check_pressed(vk_space)) {
    show_debug_message("Estado do Jogo Pausado: " + string(global.jogo_pausado));
}
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
=======
var velocidade = 5;

// No Step do Jogador e Inimigos:
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

if (key_jump && grounded) {
    show_debug_message("Esta no chao! Pulou!");
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


if (!grounded) {
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
else {
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

if (place_meeting(x, y, obj_porta)) 
{
    if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_up)) 
    {
        show_debug_message("1. APERTOU TECLA DE INTERAÇÃO!");
        
        if (!instance_exists(obj_transicao)) 
        {
            var _inst_portal = instance_place(x, y, obj_porta);
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
            
            _trans.estado_fade = 1; // Inicia Fade Out
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;
            
            // Lógica de destino correta:
            if (_inst_portal != noone && variable_instance_exists(_inst_portal, "target_room") && room_exists(_inst_portal.target_room)) {
                _trans.sala_destino = _inst_portal.target_room;
            } else if (room_exists(cidade)) {
                _trans.sala_destino = cidade;
            } else {
                _trans.sala_destino = room_next(room); // room_next da SALA ATUAL (room)
            }
            
            show_debug_message("2. TRANSIÇÃO CRIADA COM DESTINO: " + string(_trans.sala_destino));
        }
    }
}
// --- EVENTO STEP DO obj_jogador ---

// Detecta quando a tecla J é pressionada
if (keyboard_check_pressed(ord("Q"))) 
{
    // Verifica se há um robô encostado no jogador no momento do golpe
    var _inimigo = instance_place(x, y, obj_inimigo_robo);
    
    // Se encontrou o robô, aplica o dano
    if (_inimigo != noone) 
    {
        _inimigo.vida_atual -= 20; // Dano do ataque do jogador
        show_debug_message("Hit no robô! Vida restante: " + string(_inimigo.vida_atual));
    }
}
// Exemplo: Ataca 30 pixels à frente da direção que o jogador está olhando
var _hit_x = x + (direcao * 30); 
var _inimigo = instance_place(_hit_x, y, obj_inimigo_robo);

if (keyboard_check_pressed(ord("Q")) && _inimigo != noone) 
{
    _inimigo.vida_atual -= 15;
}
        }
		// --- NO STEP DO JOGADOR ---
if (!global.jogo_pausado) {
    
    // Simula a lógica de C: if (keyboard_check_pressed(ord("Q")))
    if (keyboard_check_pressed(ord("Q"))) {
        // Executa a lógica de ataque (cria hitbox, toca animação de soco/espada, etc.)
        show_debug_message("Tecla Q pressionada! A atacar o inimigo...");
    }
}
    // --- NO STEP DO JOGADOR ---

if (!global.jogo_pausado) {
    
    // Só ataca se já tiver programado o botão no terminal
    if (pode_atacar) {
        if (keyboard_check_pressed(ord("Q"))) {
            
            // Lógica de Ataque contra o Inimigo
            show_debug_message("Ataque executado com sucesso!");
            
            // Exemplo de verificação de acerto no inimigo próximo
            var _inimigo = instance_place(x + (image_xscale * 20), y, obj_inimigo_robo);
            if (_inimigo != noone) {
                _inimigo.vida_atual -= 10;
            }
        }
    }
}
// --- EVENTO STEP DO JOGADOR ---

if (!global.jogo_pausado) {
    // Todo o teu movimento (WASD) e colisões ficam aqui dentro!
    var _mov_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    x += _mov_h * 4;
    
    // E aqui também podes colocar o ataque com a tecla Q (se já programaste):
    if (pode_atacar && keyboard_check_pressed(ord("Q"))) {
        show_debug_message("Ataque executado!");
    }
}
if (keyboard_check_pressed(vk_space)) {
    show_debug_message("Estado do Jogo Pausado: " + string(global.jogo_pausado));
}
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
