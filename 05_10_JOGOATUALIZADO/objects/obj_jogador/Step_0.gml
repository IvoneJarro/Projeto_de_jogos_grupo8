var velocidade = 5;


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

// --- ATAQUE DO JOGADOR (tecla Q) ---
if (keyboard_check_pressed(ord("Q")))
{
    // procura um robô 30 pixels à frente de onde o jogador olha
    var _hit_x = x + (direcao * 30);
    var _inimigo = instance_place(_hit_x, y, obj_inimigo_robo);

    if (_inimigo != noone)
    {
        _inimigo.levar_dano(20, x);   // 20 de dano, empurra para longe do jogador
        show_debug_message("Hit no robô! Vida restante: " + string(_inimigo.vida_atual));
    }
}