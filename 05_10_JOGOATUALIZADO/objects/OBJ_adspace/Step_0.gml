
image_speed = 0;

var _a     = keyboard_check(ord("A"));
var _d     = keyboard_check(ord("D"));
var _space = keyboard_check(vk_space);

if (!_a && !_d && !_space)
{
    image_index = 0; // Estado normal / Nenhuma tecla
}
else if (_a && !_d && !_space)
{
    image_index = 1; // A
}
else if (!_a && _d && !_space)
{
    image_index = 2; // D
}
else if (!_a && !_d && _space)
{
    image_index = 3; // SPACE
}
else if (_a && _d && !_space)
{
    image_index = 4; // A + D
}
else if (_a && !_d && _space)
{
    image_index = 5; // A + SPACE
}
else if (!_a && _d && _space)
{
    image_index = 6; // D + SPACE
}
else if (_a && _d && _space)
{
    image_index = 7; // A + D + SPACE
}


if (posicao_letra < string_length(texto_completo)) {
    posicao_letra += velocidade_texto;
    texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
} 
else {
    tempo_espera++;
}


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 30) {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
        
        if (etapa_tutorial < array_length(texto_tutorial) - 1) {
            etapa_tutorial++;
            texto_completo = texto_tutorial[etapa_tutorial];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
        } 
        else {
          
            instance_destroy();
        }
    }
}