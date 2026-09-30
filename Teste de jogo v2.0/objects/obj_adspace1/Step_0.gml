// verifica o estado atual de cada tecla e muda profundidade
depth = 2;
image_speed = 0;
var _a     = keyboard_check(ord("A"));
var _d     = keyboard_check(ord("D"));
var _space = keyboard_check(vk_space);


if (!_a && !_d && !_space)
{
    image_index = 0;
}
else if (_a && !_d && !_space)
{
    image_index = 1;
}
else if (!_a && _d && !_space)
{
    image_index = 2;
}
else if (!_a && !_d && _space)
{
    image_index = 3;
}
else if (_a && _d && !_space)
{
    image_index = 4; 
}
else if (_a && !_d && _space)
{
    image_index = 5; 
}
else if (!_a && _d && _space)
{
    image_index = 6; 
}
else if (_a && _d && _space)
{
    image_index = 7; 
}