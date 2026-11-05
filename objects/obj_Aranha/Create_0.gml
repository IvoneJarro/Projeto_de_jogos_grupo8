cooldown = 0;
tempo_cooldown = 90;
velocidade = 2;

direcao = choose(-1, 1);

// Começa andando
andando = false;

// Tempo andando: entre 1 e 3 segundos
tempo_andando = irandom_range(
    room_speed,
    room_speed * 3
);

// Tempo parado: 1,5 segundo
tempo_parado = room_speed * 1.5;