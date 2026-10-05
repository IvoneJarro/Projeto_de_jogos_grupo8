
if (keyboard_check_pressed(vk_enter)) 
{
    if (codigo_digitado != "") 
    {
        
        processar_codigo_c(codigo_digitado);
        
       
        codigo_digitado = "";
        keyboard_string = ""; 
    }
}