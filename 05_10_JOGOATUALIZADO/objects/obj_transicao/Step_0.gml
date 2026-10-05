

if (estado_fade == 1) 
{

    alpha += velocidade_fade;
    

    show_debug_message("Alpha do Fade: " + string(alpha));
    
    if (alpha >= 1) 
    {
        alpha = 1;
        estado_fade = -1; 
        
        show_debug_message("3. FADE 100% PRETO! Trocando para a sala: " + string(sala_destino));
        
        if (sala_destino != -1 && room_exists(sala_destino)) 
        {
            room_goto(sala_destino);
        }
    }
} 
else if (estado_fade == -1) 
{
 
    alpha -= velocidade_fade;
    
    if (alpha <= 0) 
    {
        alpha = 0;
        show_debug_message("4. TRANSIÇÃO CONCLUÍDA! Destruindo obj_transicao.");
        instance_destroy();
    }
}