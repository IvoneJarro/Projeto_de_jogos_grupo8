<<<<<<< HEAD

if (atraso_inicial > 0) {
    atraso_inicial--;
    exit; 
}


if (posicao_letra < string_length(texto_completo)) {
    posicao_letra += velocidade_texto;
    texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
} else {
    tempo_espera++;
}


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
        
        if (etapa_atual < array_length(dialogo_texto) - 1) {
            etapa_atual++;
            texto_completo = dialogo_texto[etapa_atual];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
        } 
        else {
  
            instance_destroy();
        }
    }
=======

if (atraso_inicial > 0) {
    atraso_inicial--;
    exit; 
}


if (posicao_letra < string_length(texto_completo)) {
    posicao_letra += velocidade_texto;
    texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
} else {
    tempo_espera++;
}


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
        
        if (etapa_atual < array_length(dialogo_texto) - 1) {
            etapa_atual++;
            texto_completo = dialogo_texto[etapa_atual];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
        } 
        else {
  
            instance_destroy();
        }
    }
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
}