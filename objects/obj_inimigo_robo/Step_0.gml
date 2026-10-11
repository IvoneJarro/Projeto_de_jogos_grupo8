var velocidade = 2.5;
if (!global.jogo_pausado) {
 
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
    

if (instance_exists(obj_jogador)) 
{
   
    if (obj_jogador.vida_atual <= 0) 
    {
        show_debug_message("O jogador foi derrotado!");
        
     
        room_restart();
    }
}}



if (vida_atual <= 0) 
{
    show_debug_message("Robô destruído!");
    instance_destroy();
}
}