
codigo_digitado = keyboard_string;

if (keyboard_check_pressed(vk_enter)) {
    
    var _codigo_limpo = string_trim(codigo_digitado);
    
    if (_codigo_limpo != "") {
        processar_tutorial(_codigo_limpo);
    }
    
    codigo_digitado = "";
    keyboard_string = ""; 
}