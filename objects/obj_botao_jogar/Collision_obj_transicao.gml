var _mouse_over = position_meeting(mouse_x, mouse_y, id);
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
        room_goto(rm_fase1); 
    }
} 
else 
{
    image_index = 0; 
}
   
  
      
        if (!instance_exists(obj_transicao)) 
        {
  
            var _inst_portal = instance_place(x, y, obj_botao_jogar);
            
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
            _trans.estado_fade = 1; // Inicia o Fade Out
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;
            
            // 3. Define a sala de destino testando as variáveis
            if (_inst_portal != noone && variable_instance_exists(_inst_portal, "target_room") && room_exists(_inst_portal.target_room)) {
                _trans.sala_destino = _inst_portal.target_room;
            } 
            else if (room_exists(quarto)) {
                _trans.sala_destino = quarto;
            } 
            else {
                _trans.sala_destino = room_next(room);
            }
            
            show_debug_message("Transição criada para a sala: " + string(_trans.sala_destino));
        }
		
		