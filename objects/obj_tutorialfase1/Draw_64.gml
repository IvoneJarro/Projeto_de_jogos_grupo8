<<<<<<< HEAD


var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

var _margin = 64;
var _box_x1 = _margin;
var _box_y1 = _margin;
var _box_x2 = _gui_w - _margin;
var _box_y2 = _gui_h - _margin;

draw_set_color(make_color_rgb(20, 20, 30));
draw_set_alpha(0.95);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, false);


draw_set_color(c_lime);
draw_set_alpha(1);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, true);


draw_set_font(Font1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_lime);
draw_text(_box_x1 + 24, _box_y1 + 20, "> MANUAL_DE_PROGRAMACAO_C.exe");


draw_set_color(c_white);
draw_text_ext(_box_x1 + 24, _box_y1 + 70, texto_exibido, 28, (_box_x2 - _box_x1) - 48);


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    draw_set_halign(fa_right);
    draw_set_color(c_yellow);
    draw_text(_box_x2 - 24, _box_y2 - 40, "[ PRESSIONE ESPACO PARA CONTINUAR ]");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
=======


var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(0, 0, _gui_w, _gui_h, false);

var _margin = 64;
var _box_x1 = _margin;
var _box_y1 = _margin;
var _box_x2 = _gui_w - _margin;
var _box_y2 = _gui_h - _margin;

draw_set_color(make_color_rgb(20, 20, 30));
draw_set_alpha(0.95);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, false);


draw_set_color(c_lime);
draw_set_alpha(1);
draw_rectangle(_box_x1, _box_y1, _box_x2, _box_y2, true);


draw_set_font(Font1); 
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_lime);
draw_text(_box_x1 + 24, _box_y1 + 20, "> MANUAL_DE_PROGRAMACAO_C.exe");


draw_set_color(c_white);
draw_text_ext(_box_x1 + 24, _box_y1 + 70, texto_exibido, 28, (_box_x2 - _box_x1) - 48);


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    draw_set_halign(fa_right);
    draw_set_color(c_yellow);
    draw_text(_box_x2 - 24, _box_y2 - 40, "[ PRESSIONE ESPACO PARA CONTINUAR ]");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
draw_set_alpha(1);