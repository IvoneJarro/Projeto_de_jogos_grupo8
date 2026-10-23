<<<<<<< HEAD
<<<<<<< HEAD


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
=======


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
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
=======


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
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
}