draw_self();

if (modo_historia)
{
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();

    // 1. Escurece o fundo
    draw_set_alpha(0.75);
    draw_set_color(c_black);
    draw_rectangle(0, 0, _gui_w, _gui_h, false);

    // 2. Caixa de Texto
    draw_set_alpha(0.9);
    draw_set_color(c_dkgray);
    draw_rectangle(margem_x, pos_y_caixa, margem_x + largura_caixa, pos_y_caixa + altura_caixa, false);

    draw_set_alpha(1.0);
    draw_set_color(c_white);
    draw_rectangle(margem_x, pos_y_caixa, margem_x + largura_caixa, pos_y_caixa + altura_caixa, true);

    // 3. Desenha o Texto
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var _padding = 24;
    draw_text_ext(
        margem_x + _padding,
        pos_y_caixa + _padding,
        texto_exibido,
        26,
        largura_caixa - (_padding * 2)
    );

    // 4. Indicadores de Rodapé
    var _texto_completo = historia_texto[pagina_atual];
    if (indice_caractere >= string_length(_texto_completo))
    {
        draw_set_halign(fa_right);
        
        // Se ainda tem páginas, mostra como avançar; se for a última, manda apertar ESC
        var _prompt = "";
        if (pagina_atual < total_paginas - 1)
        {
            _prompt = "Pressione ESPAÇO / Clique para a próxima parte >";
        }
        else
        {
            _prompt = "Pressione [ESC] para fechar";
        }
        
        // Efeito piscando
        if ((current_time / 400) % 2 > 1)
        {
            draw_text(margem_x + largura_caixa - _padding, pos_y_caixa + altura_caixa - 35, _prompt);
        }
    }
}