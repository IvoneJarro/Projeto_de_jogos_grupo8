<<<<<<< HEAD
var velocidade = 5;
depth = 1;


if (keyboard_check(ord("A"))) {
    sprite_index = spr_andando_jogadorE;
    
    if (place_meeting(x - velocidade, y, colisao)) {
        x -= velocidade;
    }
} 

else if (keyboard_check(ord("D"))) {
    sprite_index = spr_andando_jogadorD;
    

    if (place_meeting(x + velocidade, y, colisao)) {
        x += velocidade;
    }
} 

else {
    sprite_index = spr_parado_jogador;
}
=======
var velocidade = 5;
depth = 1;


if (keyboard_check(ord("A"))) {
    sprite_index = spr_andando_jogadorE;
    
    if (place_meeting(x - velocidade, y, colisao)) {
        x -= velocidade;
    }
} 

else if (keyboard_check(ord("D"))) {
    sprite_index = spr_andando_jogadorD;
    

    if (place_meeting(x + velocidade, y, colisao)) {
        x += velocidade;
    }
} 

else {
    sprite_index = spr_parado_jogador;
}
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
