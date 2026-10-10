// --- EVENTO DRAW DO obj_inimigo_robo ---

// 1. Desenha o próprio robô no fundo

// fica vermelho enquanto "flash" estiver ativo (ou morrendo)
if (flash > 0 || morrendo) image_blend = c_red;
else image_blend = c_white;

draw_self();

image_blend = c_white;   // volta ao normal para não afetar o resto

// 2. Desenha a barra de vida centralizada acima do robô
if (vida_atual > 0) 
{
    var _bar_w = 200;  // Largura total da barra
    var _bar_h = 12;  // Altura/espessura da barra
    
    // Centraliza a barra com base no 'x' do robô
    var _x1 = x - (_bar_w / 2);
    var _x2 = x + (_bar_w / 2);
    
    // Posiciona a barra acima do topo do sprite
    var _y1 = y - sprite_height - 15; 
    var _y2 = _y1 + _bar_h;
    
    var _porcentagem = (vida_atual / vida_max) * 100;

    // Desenha a barra de vida
    draw_healthbar(_x1, _y1, _x2, _y2, _porcentagem, c_black, c_red, c_lime, 0, true, true);
    
    // Configura o alinhamento do texto para o centro
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    
    // Desenha o texto exatamente no centro (x) e acima da barra (_y1 - 4)
    draw_text_transformed(x, _y1 - 4, "HP: " + string(vida_atual), 1.2, 1.2, 0);
    
    // Reseta o alinhamento do texto para não afetar outros desenhos do jogo
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);   
}