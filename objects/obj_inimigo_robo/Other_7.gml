if (sprite_index == spr_roboAttackD || sprite_index == spr_roboAttackE) {
    cooldown = 60; 
    
    if (direcao == 1) {
        sprite_index = spr_robo_paradoD;
    } else {
        sprite_index = spr_robo_paradoE;
    }
}