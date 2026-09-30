var velocidade = 2.5;

if(cooldown_ataque >0) {
	cooldown_ataque -= 1;	
}

if (!place_meeting(x, y, obj_jogador)) {
    
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

else {
    if (direcao == 1) {
        sprite_index = spr_robo_paradoD;	
    } 
    else if (direcao == -1) {
        sprite_index = spr_robo_paradoE;	
    }
	
    if(cooldown_ataque <= 0) {
    obj_jogador.vida -= dano;
	cooldown_ataque = tempo_cooldown;
	}

}

if (obj_jogador.vida == 0) {
    room_restart();
}
if(vida == 0) {
	instance_destroy();	
}