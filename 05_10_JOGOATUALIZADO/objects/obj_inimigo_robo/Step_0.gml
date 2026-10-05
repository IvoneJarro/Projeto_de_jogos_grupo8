var velocidade = 2.5;

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
    
 // --- EVENTO STEP DO obj_inimigo_robo ---

// 1. Sempre verifica se o jogador existe na sala antes de acessar as variáveis dele
if (instance_exists(obj_jogador)) 
{
    // Se o jogador estiver sem vida
    if (obj_jogador.vida_atual <= 0) 
    {
        show_debug_message("O jogador foi derrotado!");
        
        // Reinicia a sala quando o jogador morre
        room_restart();
    }
}}
// --- EVENTO STEP DO obj_inimigo_robo ---

// Quando a vida do robô chegar a 0 ou menos, ele é destruído
if (vida_atual <= 0) 
{
    show_debug_message("Robô destruído!");
    instance_destroy();
}