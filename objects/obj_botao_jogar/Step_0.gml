


var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _mouse_over = position_meeting(_mx, _my, id);
if (!_mouse_over) {
    _mouse_over = position_meeting(mouse_x, mouse_y, id);
}


if (!exibindo_historia) {
    if (_mouse_over) {
        if (mouse_check_button(mb_left)) {
            image_index = 2; 
        } else {
            image_index = 1; 
        }
        
    
        if (mouse_check_button_released(mb_left)) {
            exibindo_historia = true;
            etapa_historia = 0;
            texto_completo = historia_texto[etapa_historia];
            texto_exibido = "";
            posicao_letra = 0;
            tempo_espera = 0;
            
            
            io_clear(); 
        }
    } else {
        image_index = 0; 
    }
} 

if (exibindo_historia) {
    image_index = 0; 
    

    if (posicao_letra < string_length(texto_completo)) {
        posicao_letra += velocidade_texto;
        texto_exibido = string_copy(texto_completo, 1, floor(posicao_letra));
    } else {
        tempo_espera++;
    }

 
    if (posicao_letra >= string_length(texto_completo) && tempo_espera >= 20) {
        if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
            
            if (etapa_historia < array_length(historia_texto) - 1) {
                etapa_historia++;
                texto_completo = historia_texto[etapa_historia];
                texto_exibido = "";
                posicao_letra = 0;
                tempo_espera = 0;
            } 
            else {
                // Fim da história -> Inicia transição
                if (!instance_exists(obj_transicao)) {
                    var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
                    _trans.estado_fade = 1;
                    _trans.alpha = 1;
                    _trans.velocidade_fade = 0.01;
                    
                    if (variable_instance_exists(id, "target_room") && room_exists(target_room)) {
                        _trans.sala_destino = target_room;
                    } else if (room_exists(quarto)) {
                        _trans.sala_destino = quarto;
                    } else {
                        _trans.sala_destino = rm_fase1; 
                    }
                }
            }
        }
    }
}