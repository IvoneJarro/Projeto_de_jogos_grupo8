<<<<<<< HEAD
if (ativo)
{
    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    var _margem = 32;
    var _x1 = _margem;
    var _y1 = _margem;
    var _x2 = _gw - _margem;
    var _y2 = _gh - _margem;

    var _meio = (_x1 + _x2) * 0.5;
    var _pad = 20;
    var _linha = 26;

    // FUNDO DO TERMINAL
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(12, 14, 18));
    draw_rectangle(_x1, _y1, _x2, _y2, false);

    draw_set_color(c_lime);
    draw_rectangle(_x1, _y1, _x2, _y2, true);

    // PAINEL ESQUERDO
    draw_set_color(make_color_rgb(20, 24, 30));
    draw_rectangle(
        _x1 + 12, _y1 + 42,
        _meio - 8, _y2 - 48, false
    );

    // PAINEL DIREITO
    draw_set_color(make_color_rgb(17, 20, 24));
    draw_rectangle(
        _meio + 8, _y1 + 42,
        _x2 - 12, _y2 - 48, false
    );

    draw_set_font(Font1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // TITULOS
    draw_set_color(c_lime);

    if (tipo_computador == 1)
    {
        draw_text(_x1 + _pad, _y1 + 12,
            "CODIGO DO SISTEMA");
    }
    else
    {
        draw_text(_x1 + _pad, _y1 + 12,
            "SISTEMA DE SEGURANCA");
    }

    draw_set_color(c_aqua);
    draw_text(_meio + _pad, _y1 + 12,
        "SUA SOLUCAO");

    // POSICAO DO CODIGO
    var _cx = _x1 + _pad;
    var _cy = _y1 + 60;

    // =================================
    // COMPUTADOR 1: CONTROLE DA PORTA
    // =================================
    if (tipo_computador == 1)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy,
            "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha,
            "int porta = 0;");

        draw_text(_cx, _cy + _linha * 2,
            "if (porta == 1) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 3,
            "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4,
            "}");

        if (global.porta_liberada)
        {
            draw_set_color(c_lime);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO SUCESSIVO");
        }
        else
        {
            draw_set_color(c_red);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO FALHO");
        }
    }

    // =================================
    // COMPUTADOR 2: CONTROLE DO ALARME
    // =================================
    else if (tipo_computador == 2)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy,
            "// Controle da porta");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha,
            "int chave = 0;");

        draw_text(_cx, _cy + _linha * 2,
            "if (chave == 1) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 3,
            "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4,
            "}");

        if (global.chave_liberada)
        {
            draw_set_color(c_lime);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO SUCESSIVO");
        }
        else
        {
            draw_set_color(c_red);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO FALHO");
        }
    }
	
	else if (tipo_computador == 3)
    {
        draw_set_color(c_gray);
        draw_text(_cx, _cy,
            "// Vida do boss");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha,
            "int boss = 0;");

        draw_text(_cx, _cy + _linha * 2,
            "if (boss == 1) {");

        draw_set_color(c_lime);
        draw_text(_cx, _cy + _linha * 3,
            "    abrir_porta();");

        draw_set_color(c_white);
        draw_text(_cx, _cy + _linha * 4,
            "}");

        if (global.chave_liberada)
        {
            draw_set_color(c_lime);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO SUCESSIVO");
        }
        else
        {
            draw_set_color(c_red);
            draw_text(_cx, _cy + _linha * 6,
                "STATUS: CODIGO FALHO");
        }
    }

    // =================================
    // DIREITA: AREA DE RESPOSTA
    // =================================
    var _rx = _meio + _pad;
    var _ry = _y1 + 60;

    draw_set_color(c_white);

    if (tipo_computador == 1)
    {
        draw_text(_rx, _ry,
            "Altere o valor da porta para 1.");
    }
    else if(tipo_computador == 2)
    {
        draw_text(_rx, _ry,
            "Altere o valor da chave para 1.");
    }
	else if(tipo_computador == 3)
    {
        draw_text(_rx, _ry,
            "Altere o valor do boss para 1.");
    }

    draw_set_color(c_aqua);
    draw_text(_rx, _ry + 32,
        "Digite seu codigo:");

    // CAIXA DE DIGITACAO
    draw_set_color(make_color_rgb(8, 12, 16));
    draw_rectangle(
        _rx - 4, _ry + 58,
        _x2 - _pad, _ry + 100, false
    );

    draw_set_color(c_white);
    draw_text(_rx + 4, _ry + 66,
        "C> " + codigo_digitado + "_");

    // =================================
    // OUTPUT
    // =================================
    draw_set_color(c_aqua);
    draw_text(_rx, _ry + 120, "OUTPUT:");

    var _total = array_length(historico_terminal);
    var _altura_linha = 22;
    var _yout = _ry + 150;
    var _limite = _y2 - 100;

    var _max = max(0,
        floor((_limite - _yout) / _altura_linha));

    var _inicio = max(0, _total - _max);

    for (var i = _inicio; i < _total; i++)
    {
        if (string_pos(
            "ERRO", historico_terminal[i]) > 0)
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
    draw_text(_x1 + _pad, _y2 - 32,
        "ENTER: executar    ESC: sair");

    draw_set_alpha(1);
    draw_set_color(c_white);
}
=======

var _margin = 32;
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();


var _box_x1 = _margin;
var _box_y1 = _margin; 
var _box_x2 = _gui_w - _margin;
var _box_y2 = _gui_h - _margin;


draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, false);


draw_set_color(c_white); 
draw_set_alpha(1);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, true);


draw_set_font(Font1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _start_x = _box_x1 + 16;
var _start_y = _box_y1 + 16;
var _line_height = 20;


for (var _i = 0; _i < array_length(historico_terminal); _i++) 
{
    draw_text(_start_x, _start_y + (_i * _line_height), historico_terminal[_i]);
}


var _linhas_historico = array_length(historico_terminal);
var _input_y = _start_y + (_linhas_historico * _line_height);


draw_set_color(c_lime); 
draw_text(_start_x, _input_y, "C> " + codigo_digitado + "_");


draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
