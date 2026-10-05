
var _hp_x = 20;
var _hp_y = 20;
var _hp_largura = 150;
var _hp_altura = 15;


var _porcentagem = (vida_atual / vida_max) * 100;


draw_set_color(c_dkgray);
draw_rectangle(_hp_x, _hp_y, _hp_x + _hp_largura, _hp_y + _hp_altura, false);

draw_set_color(c_green);
draw_rectangle(_hp_x, _hp_y, _hp_x + (_hp_largura * (_porcentagem / 100)), _hp_y + _hp_altura, false);


draw_set_color(c_white);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(_hp_x, _hp_y + 20, "HP: " + string(vida_atual) + " / " + string(vida_max
));