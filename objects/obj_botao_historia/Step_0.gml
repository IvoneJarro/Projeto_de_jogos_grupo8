var _mouse_over = position_meeting(mouse_x, mouse_y, id);

// Controle visual e clique do botão para abrir
if (_mouse_over) 
{
    if (mouse_check_button(mb_left)) 
    {
        image_index = 2; 
    } 
    else 
    {
        image_index = 1; 
    }
    
    if (mouse_check_button_released(mb_left)) 
    {
        modo_historia = true;
        pagina_atual = 0;
        indice_caractere = 0;
        texto_exibido = "";
    }
} 
else 
{
    image_index = 0; 
}

// Lógica da Tela de História
if (modo_historia)
{
    var _texto_completo = historia_texto[pagina_atual];

    // Efeito de digitação letra por letra
    if (indice_caractere < string_length(_texto_completo))
    {
        indice_caractere += velocidade_texto;
        texto_exibido = string_copy(_texto_completo, 1, floor(indice_caractere));
    }

    // FECHAR APENAS COM A TECLA ESC
    if (keyboard_check_pressed(vk_escape))
    {
        modo_historia = false;
        pagina_atual = 0;
        // room_goto(rm_fase_1); // Descomente aqui se quiser mudar de room ao apertar ESC no fim!
    }

    // Avançar de página/texto com ESPAÇO, ENTER ou CLIQUE (mas não fecha)
    var _avancar = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left);

    if (_avancar)
    {
        if (indice_caractere < string_length(_texto_completo))
        {
            // Completa o texto atual na hora
            indice_caractere = string_length(_texto_completo);
            texto_exibido = _texto_completo;
        }
        else
        {
            // Vai para a próxima página (se houver)
            if (pagina_atual < total_paginas - 1)
            {
                pagina_atual++;
                indice_caractere = 0;
                texto_exibido = "";
            }
        }
    }
}