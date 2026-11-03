if (ativo)
{
    var _x1, _y1, _x2, _y2;

    if (room == BossFight1)
    {
        _x1 = 196;
        _y1 = 195;
        _x2 = 1168;
        _y2 = 592;
    }
    else
    {
        _x1 = 32;
        _y1 = 32;
        _x2 = display_get_gui_width() - 32;
        _y2 = display_get_gui_height() - 32;
    }

    var _gw = _x2 - _x1;
    var _gh = _y2 - _y1;

    var _meio = _x1 + (_gw * 0.5);
    var _pad = (room == BossFight1) ? 10 : 20;
    var _linha = (room == BossFight1) ? 16 : 26;

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(23, 40, 47));
    draw_rectangle(_x1, _y1, _x2, _y2, false);

    if (room == BossFight1)
    {
        draw_set_color(make_color_rgb(23, 40, 47));
    }
    else
    {
        draw_set_color(c_lime);
    }

    draw_rectangle(_x1, _y1, _x2, _y2, true);

    var _margem_lateral = (room == BossFight1) ? 6 : 12;
    var _margem_topo = (room == BossFight1) ? 28 : 42;

    // Painel esquerdo
    draw_set_color(make_color_rgb(20, 24, 30));
    draw_rectangle(
        _x1 + _margem_lateral,
        _y1 + _margem_topo,
        _meio - (_margem_lateral / 2),
        _y2 - (_margem_topo + 6),
        false
    );

    // Painel direito
    draw_set_color(make_color_rgb(17, 20, 24));
    draw_rectangle(
        _meio + (_margem_lateral / 2),
        _y1 + _margem_topo,
        _x2 - _margem_lateral,
        _y2 - (_margem_topo + 6),
        false
    );

    if (room == BossFight1)
    {
        draw_set_font(Font_terminalBoss);
    }
    else
    {
        draw_set_font(Font1);
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    draw_set_color(c_lime);
    var _titulo_topo = (room == BossFight1) ? 6 : 12;

    if (tipo_computador == 1)
    {
        draw_text(_x1 + _pad, _y1 + _titulo_topo, "CODIGO DO SISTEMA");
    }
    else if (room == BossFight1)
    {
        draw_text(_x1 + _pad, _y1 + _titulo_topo, "obj.BossTerminal");
    }
    else
    {
        draw_text(_x1 + _pad, _y1 + _titulo_topo, "SISTEMA DE SEGURANCA");
    }

    draw_set_color(c_aqua);
    draw_text(_meio + _pad, _y1 + _titulo_topo, "INPUT");

    var _cx = _x1 + _pad;
    var _cy = _y1 + (_margem_topo + 10);

    // =====================================
    // CODIGO DO PAINEL ESQUERDO
    // =====================================

    if (tipo_computador == 1)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "bool porta = false;");
       // draw_text(_cx, _cy + _linha * 2, "if (porta == 1) {");

       // draw_set_color(c_lime);
      //  draw_text(_cx, _cy + _linha * 3, "    abrir_porta();");

       // draw_set_color(c_white);
       // draw_text(_cx, _cy + _linha * 4, "}");

    }
    else if (tipo_computador == 2)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "bool chave = false;");
       // draw_text(_cx, _cy + _linha * 2, "if (chave == 1) {");

        //draw_set_color(c_lime);
       // draw_text(_cx, _cy + _linha * 3, "    abrir_porta();");

       // draw_set_color(c_white);
       // draw_text(_cx, _cy + _linha * 4, "}");

    }
    else if (tipo_computador == 3)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Vida do boss");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "char global.bosshealth = 100;");
        draw_text(_cx, _cy + _linha * 4, "while (global.bosshealth >> 0) {");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 5, "    global.bosshealth += 1;");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 7, "");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 8, "if (global.bosshealth <== 0) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 9, "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 10, "}");
    }
    
    else if (tipo_computador == 4)
    {
        
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int num_porta = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "while (num_porta != 20) {");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 3, "num_porta -= 1;");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "}");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "if (num_porta >= 20) {");
        
        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 7, "    abrir_porta();");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 8, "}");

    }
    
    else if (tipo_computador == 5)
    {
        
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int num_chave = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "while (num_chave != -20) {");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 3, "num_chave += 1;");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "}");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "if (num_chave <= -20) {");
        
        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 7, "    abrir_porta();");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 8, "}");

    }
    
    else if (tipo_computador == 6)
    {
        
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int obj_door = 0");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "if (obj_door == 1) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 3, "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "}");

    }
    
    else if (tipo_computador == 7)
    {
        
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int obj_key = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "if obj_key == 1) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 3, "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "}");

    }

    // STATUS DO CODIGO
    if (
        (tipo_computador == 1 && global.porta_liberada) ||
        (tipo_computador == 2 && global.chave_liberada) ||
        (tipo_computador == 3 && global.porta_liberada) ||
		(tipo_computador == 4 && global.porta_liberada) ||
		(tipo_computador == 5 && global.chave_liberada) ||
		(tipo_computador == 6 && global.porta_liberada) ||
		(tipo_computador == 7 && global.chave_liberada)
    )
    {
        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 13, "STATUS: CODIGO SUCESSIVO");
    }
    else
    {
        draw_set_color(c_red);
        draw_text(_cx, _cy + _linha * 13, "STATUS: CODIGO FALHO");
    }

    // =====================================
    // PAINEL DIREITO
    // =====================================

    var _rx = _meio + _pad;
    var _ry = _y1 + (_margem_topo + 10);

    draw_set_color(c_white);

    if (tipo_computador == 1)
    {
        draw_text(_rx, _ry, "Altere a variavel porta para verdadeiro.");
    }
    else if (tipo_computador == 2)
    {
        draw_text(_rx, _ry, "Altere a variavel chave para verdadeiro.");
    }
    else if (tipo_computador == 3)
    {
        draw_text(_rx, _ry - 1, "-Ache o erro de logica e os de sintaxe.\n-Reescreva o codigo.");
    }
	else if (tipo_computador == 4) {
		draw_text(_rx, _ry - 1, "-Ache o erro de logica.\n-Reescreva o codigo.");
	}
	else if (tipo_computador == 5) {
		draw_text(_rx, _ry - 1, "-Ache o erro de logica.\n-Reescreva o codigo.");
	}
	else if (tipo_computador == 6)
    {
        draw_text(_rx, _ry, "-Altere o valor da variavel obj_door para 1.\n-Ache o erro de sintaxe.");
    }
	else if (tipo_computador == 7)
    {
        draw_text(_rx, _ry, "-Altere o valor da variavel obj_key para 1.\n-Ache o erro de sintaxe.");
    }
	draw_set_color(c_white);

    var _texto_y = (room == BossFight1) ? 42 : 58;
    
    // Mantém o retângulo apenas se for BossFight1 ou tipo_computador == 3
    if (room == BossFight1 || tipo_computador == 3)
    {
        var _caixa_y = (room == BossFight1) ? 38 : 58;
        var _caixa_alt = (room == BossFight1) ? 280 : 42;

        draw_set_color(make_color_rgb(20, 24, 30));
        draw_rectangle(
            _rx - 2,
            _ry + _caixa_y,
            _x2 - _pad,
            _ry + _caixa_y + _caixa_alt,
            false
        );

        if (room == BossFight1)
        {
            draw_set_color(make_color_rgb(23, 40, 47));
        }
        else
        {
            draw_set_color(c_lime);
        }

        draw_rectangle(
            _rx - 2,
            _ry + _caixa_y,
            _x2 - _pad,
            _ry + _caixa_y + _caixa_alt,
            true
        );
    }
    else
    {
        // Linha divisória posicionada mais para baixo (logo acima de C>)
       // if (tipo_computador == 3 || tipo_computador == 4 || room == BossFight1)
       // {
            draw_set_color(c_gray);
            draw_line(_rx, _ry + 52, _x2 - _pad, _ry + 52);
       // }
    }

    draw_set_color(c_white);
    draw_text(_rx + 4, _ry + _texto_y, "C> " + codigo_digitado + "_");

    // OUTPUT (Reposicionado para ficar logo acima da linha do Status do código)
    draw_set_color(c_aqua);

    var _out_offset = (room == BossFight1) ? 74 : (_linha * 15); 
    if (room != BossFight1) {
        draw_text(_rx, _ry + _out_offset, "OUTPUT:");
    }
    var _total = array_length(historico_terminal);
    var _altura_linha = (room == BossFight1) ? 12 : 22;
    var _yout = _ry + _out_offset + (room == BossFight1 ? 18 : 28);
    var _limite = _y2 - (room == BossFight1 ? 20 : 100);

    var _max = max(0, floor((_limite - _yout) / _altura_linha));
    var _inicio = max(0, _total - _max);

    for (var i = _inicio; i < _total; i++)
    {
        if (string_pos("ERRO", historico_terminal[i]) > 0)
        {
            draw_set_color(c_red);
        }
        else
        {
            draw_set_color(c_lime);
        }

        draw_text(_rx, _yout, historico_terminal[i]);
        _yout += _altura_linha;
    }

    // INSTRUCOES
    draw_set_color(c_gray);

    var _inst_y = (room == BossFight1) ? 20 : 32;

    if (room != BossFight1)
    {
        draw_text(_x1 + _pad, _y2 - _inst_y, "ENTER: Executar    ESC: Sair");
    }
    else
    {
        draw_text(_x1 + _pad, _y2 - _inst_y, "ENTER: Executar    TAB: Pular linha");
    }

    draw_set_alpha(1);
    draw_set_color(c_white);
}