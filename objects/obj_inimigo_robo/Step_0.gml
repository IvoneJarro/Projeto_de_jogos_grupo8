var velocidade = 2.5;

if (!global.jogo_pausado) {

    if (cooldown > 0) {
        cooldown -= 1;    
    }

    var _atacando = (sprite_index == spr_roboAttackD || sprite_index == spr_roboAttackE);

    if (_atacando) {
        speed = 0;  
    }
    else {
        
        // Define a tolerância de altura aceitável (ex: 32 pixels de diferença em Y)
        var _altura_proxima = abs(y - obj_jogador.y) <= 32;
        
        if (place_meeting(x, y, obj_jogador) && cooldown <= 0) {
            if (direcao == 1) {
                sprite_index = spr_roboAttackD;
            } else {
                sprite_index = spr_roboAttackE;
            }
        } 
        // SÓ SEGUE SE ESTIVER PRÓXIMO EM X E TAMBÉM NA MESMA ALTURA (Y)
        else if (!place_meeting(x, y, obj_jogador) && _altura_proxima) {
            if (obj_jogador.x > x) {
                sprite_index = spr_robo_andandoD;
                direcao = 1;
                x += velocidade;    
            } 
            else if (obj_jogador.x < x) {
                sprite_index = spr_robo_andandoE;
                direcao = -1;
                x -= velocidade;    
            }
        } 
        // SE ESTIVER LONGE NO Y (OUTRO ANDAR/PLATAFORMA), ELE FICA PARADO OU OLHANDO PRA SUA DIREÇÃO
        else {
            if (direcao == 1) {
                sprite_index = spr_robo_paradoD;    
            } 
            else if (direcao == -1) {
                sprite_index = spr_robo_paradoE;    
            }
        }
    }

    if (instance_exists(obj_jogador)) {
        if (obj_jogador.vida_atual <= 0) {
            show_debug_message("O jogador foi derrotado!");
            room_restart();
        }
    }
}

if (vida_atual <= 0) {
    show_debug_message("Robô destruído!");
    instance_destroy();
}