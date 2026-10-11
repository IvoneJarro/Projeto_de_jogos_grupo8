
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