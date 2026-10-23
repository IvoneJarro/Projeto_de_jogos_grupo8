if (cooldown > 0)
{
    cooldown--;
}

if (cooldown <= 0)
{
    instance_create_layer(x-59, y-53, "Instances", obj_TeiadaAranha);
    cooldown = tempo_cooldown;
}

if (andando)
{
    // ANDAR
    x += velocidade * direcao;

    tempo_andando--;

    if (tempo_andando <= 0)
    {
        // Para de andar
        andando = false;

        // Prepara o tempo parado
        tempo_parado = room_speed * 1.5;
    }
}
else
{
    // FICA PARADO
    tempo_parado--;

    if (tempo_parado <= 0)
    {
        
        direcao = choose(-1, 1);
        andando = true;
        tempo_andando = irandom_range(6, 7);
    }
}

if(place_meeting(x+velocidade*direcao,y,colisao) || place_meeting(x+velocidade*direcao,y,obj_apoio)) {
	andando = false;	
}

if(andando && direcao == 1) {
	sprite_index = spr_aranhaandandoE;
}

else if(andando && direcao == -1) {
	sprite_index = spr_aranhaandandoD;
}

if(!andando && direcao == 1) {
	sprite_index = spr_AranhaparadaE;
}

if(!andando && direcao == -1) {
	sprite_index = spr_AranhaparadaD;
}
