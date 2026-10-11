
if (place_meeting(x, y, obj_porta)) 
{

    if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) 
    {

        if (!instance_exists(obj_transicao)) 
        {
         
            var _inst_portal = instance_place(x, y, obj_porta);
            
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
            _trans.estado_fade = 1; 
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;
            
           
            if (_inst_portal != noone && variable_instance_exists(_inst_portal, "target_room") && room_exists(_inst_portal.target_room)) {
                _trans.sala_destino = _inst_portal.target_room;
            } 
            else if (room_exists(cidade)) {
                _trans.sala_destino = cidade;
            } 
            else {
                _trans.sala_destino = room_next(room);
            }
            
            show_debug_message("Transição criada para a sala: " + string(_trans.sala_destino));
        }
    }
}