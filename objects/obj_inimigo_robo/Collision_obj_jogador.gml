if (place_meeting(x, y, obj_jogador)) {
	if(cooldown <= 0) {
		
	obj_jogador.vida_atual -= 5;
	cooldown = tempo_cooldown;
	}
	}