if (ativo)
{
    var _x1, _y1, _x2, _y2;

    if (room == BossFight1 || room == BossFight2 || room == BossFight3)
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
    var _pad = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 10 : 20;
    var _linha = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 16 : 26;

    draw_set_alpha(1);
    draw_set_color(make_color_rgb(13,43,69));
    draw_rectangle(_x1, _y1, _x2, _y2, false);

    if (room == BossFight1 || room == BossFight2 || room == BossFight3)
    {
        draw_set_color(make_color_rgb(13,43,69));
	
    }
    else
    {
        draw_set_color(c_lime);
    }

    draw_rectangle(_x1, _y1, _x2, _y2, true);

    var _margem_lateral = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 6 : 12;
    var _margem_topo = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 28 : 42;

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

    if (room == BossFight1 || room == BossFight2 || room == BossFight3)
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
    var _titulo_topo = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 6 : 12;

    if (tipo_computador == 1)
    {
        draw_text(_x1 + _pad, _y1 + _titulo_topo, "CODIGO DO SISTEMA");
    }
    else if (room == BossFight1 || room == BossFight2 || room == BossFight3)
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

    // CODIGO DO PAINEL ESQUERDO

    if (tipo_computador == 1)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "bool porta = false;");
    }
    else if (tipo_computador == 2)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "bool chave = false;");
    }
    else if (tipo_computador == 3)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Vida do boss");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "int global.bosshealth = 100;");
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
    
    else if (tipo_computador == 10)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int numsoma = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha*2, "int result = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "while (numsoma < 10) {");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 5, "result += numsoma;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "numsoma++;");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 7, "}");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 9, "print(result);");
    }
    else if (tipo_computador == 11)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int numpar = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha* 2, "int result = 0;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "while (numpar < 10) {");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 5, "if (numpar % 2 == 0) {");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "result += numpar;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 7, "}");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 8, "numpar++;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 9, "}");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 11, "print(result)");
    }
    
    else if (tipo_computador == 12)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int arr[5] = {1, 2, 3, 4, 5};");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 2, "int a = arr[2];");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4, "print(a);");
    }
    else if (tipo_computador == 13)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int i=0, soma=0;");
        
        draw_text(_cx, _cy + _linha*3, "for (int i=1; i<=5; i++) {");
        draw_text(_cx, _cy + _linha * 4, "    soma += i;");
        draw_text(_cx, _cy + _linha * 5, "}");
        draw_text(_cx, _cy + _linha * 7, "print(soma);");
    }
    else if (tipo_computador == 14)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// obj.boss_corecode.c");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int val[4] = {3, 5, 2, 8};");
        draw_text(_cx, _cy + _linha * 2, "int res = 0;");
        
        draw_text(_cx, _cy + _linha * 4, "for (int i = 3; i >= 0; i--;) {");
        draw_text(_cx, _cy + _linha * 5, "    res += val[i] * 2;");
        draw_text(_cx, _cy + _linha * 6, "}");
        draw_text(_cx, _cy + _linha * 8, "print(res);");
    }
	else if (tipo_computador == 20)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "struct Computador {");
        draw_text(_cx, _cy + _linha * 2, "    int id;");
        draw_text(_cx, _cy + _linha * 3, "    bool ativo;");
        draw_text(_cx, _cy + _linha * 4, "};");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 6, "struct Computador pc;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 7, "pc.ativo = true;");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 9, "print(pc.ativo);");
    }
	else if (tipo_computador == 21)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "int triplo(int x) {");
        draw_text(_cx, _cy + _linha * 2, "    return x * 3;");
        draw_text(_cx, _cy + _linha * 3, "}");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 5, "int resultado = triplo(4);");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 7, "print(resultado);");
    }
	else if (tipo_computador == 22)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy, "// obj.boss_core.c");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha, "struct BossCore {");
        draw_text(_cx, _cy + _linha * 2, "    int obj_health;");
        draw_text(_cx, _cy + _linha * 3, "    int compile_damage(int dmg) {");
        draw_text(_cx, _cy + _linha * 4, "        return obj_health - (dmg * 2);");
        draw_text(_cx, _cy + _linha * 5, "    }");
        draw_text(_cx, _cy + _linha * 6, "};");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 8, "struct BossCore b1;");
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 9, "b1.obj_health = 100;");
        
        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 11, "print(b1.compile_damage(15));");
    }

    // STATUS DO CODIGO
    if (
        (tipo_computador == 1 && global.porta_liberada) ||
        (tipo_computador == 2 && global.chave_liberada) ||
        (tipo_computador == 3 && global.porta_liberada) ||
        (tipo_computador == 4 && global.porta_liberada) ||
        (tipo_computador == 5 && global.chave_liberada) ||
        (tipo_computador == 6 && global.porta_liberada) ||
        (tipo_computador == 7 && global.chave_liberada) ||
        (tipo_computador == 10 && global.porta_liberada) ||
        (tipo_computador == 11 && global.chave_liberada) ||
        (tipo_computador == 12 && global.porta_liberada) ||
        (tipo_computador == 13 && global.chave_liberada) ||
        (tipo_computador == 14 && global.porta_liberada) ||
		(tipo_computador == 20 && global.porta_liberada) ||
		(tipo_computador == 21 && global.chave_liberada) ||
		(tipo_computador == 22 && global.porta_liberada)
		
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

    // PAINEL DIREITO

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
    else if (tipo_computador == 10)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
    else if (tipo_computador == 11)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
    else if (tipo_computador == 12)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
    else if (tipo_computador == 13)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
    else if (tipo_computador == 14)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
	else if (tipo_computador == 20)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
	else if (tipo_computador == 21)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
	else if (tipo_computador == 22)
    {
        draw_text(_rx, _ry, "-Qual valor sera exibido?");
    }
    
    draw_set_color(c_white);

    var _texto_y = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 42 : 58;
    

    if (room == BossFight1 || room == BossFight2 || room == BossFight3 || tipo_computador == 3)
    {
        var _caixa_y = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 38 : 58;
        var _caixa_alt = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 280 : 42;

        draw_set_color(make_color_rgb(20, 24, 30));
        draw_rectangle(
            _rx - 2,
            _ry + _caixa_y,
            _x2 - _pad,
            _ry + _caixa_y + _caixa_alt,
            false
        );

        if (room == BossFight1 || room == BossFight2 || room == BossFight3)
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

    draw_set_color(c_white);
    draw_text(_rx + 4, _ry + _texto_y, "C> " + codigo_digitado + "_");

    // OUTPUT
    draw_set_color(c_aqua);

    var _out_offset = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 74 : (_linha * 15); 
    if (room != BossFight1 && room != BossFight2 && room != BossFight3) {
        draw_text(_rx, _ry + _out_offset, "OUTPUT:");
    }
    var _total = array_length(historico_terminal);
    var _altura_linha = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 12 : 22;
    var _yout = _ry + _out_offset + (room == BossFight1 || room == BossFight2 || room == BossFight3 ? 18 : 28);
    var _limite = _y2 - (room == BossFight1 || room == BossFight2 || room == BossFight3 ? 20 : 100);

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

    var _inst_y = (room == BossFight1 || room == BossFight2 || room == BossFight3) ? 20 : 32;

    if (room != BossFight1 && room != BossFight2 && room != BossFight3)
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