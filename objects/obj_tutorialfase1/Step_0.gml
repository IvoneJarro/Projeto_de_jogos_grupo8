<<<<<<< HEAD

if (posicao_letra < string_length(texto_completo)) {
    posicao_letra += velocidade_texto;
    texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
} else {
    tempo_espera++;
}


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
        
        if (tutorial_passo < array_length(tutorial_textos) - 1) {
            tutorial_passo++;
            texto_completo = tutorial_textos[tutorial_passo];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
        } 
        else {
        
            global.jogo_pausado = false;
            instance_destroy();
        }
    }
}
if (tutorial_passo >= array_length(tutorial_textos) - 1) {
  
    instance_destroy();
    
 
    if (!instance_exists(obj_terminaltutorial)) {
        instance_create_layer(x, y, "Instances", obj_terminaltutorial);
    }
=======

if (posicao_letra < string_length(texto_completo)) {
    posicao_letra += velocidade_texto;
    texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
} else {
    tempo_espera++;
}


if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
        
        if (tutorial_passo < array_length(tutorial_textos) - 1) {
            tutorial_passo++;
            texto_completo = tutorial_textos[tutorial_passo];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
        } 
        else {
        
            global.jogo_pausado = false;
            instance_destroy();
        }
    }
}
if (tutorial_passo >= array_length(tutorial_textos) - 1) {
  
    instance_destroy();
    
 
    if (!instance_exists(obj_terminal)) {
        instance_create_layer(x, y, "Instances", obj_terminal);
    }
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
}