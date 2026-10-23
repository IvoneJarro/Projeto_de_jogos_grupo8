<<<<<<< HEAD

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();


if (_gui_w <= 0) _gui_w = window_get_width();
if (_gui_h <= 0) _gui_h = window_get_height();


draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, _gui_w, _gui_h, false);


draw_set_alpha(1);
=======

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();


if (_gui_w <= 0) _gui_w = window_get_width();
if (_gui_h <= 0) _gui_h = window_get_height();


draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, _gui_w, _gui_h, false);


draw_set_alpha(1);
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
draw_set_color(c_white);