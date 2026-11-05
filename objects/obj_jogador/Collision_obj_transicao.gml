if (place_meeting(x, y, obj_porta))
{
    if (keyboard_check_pressed(ord("E")))
	{
		
        if (!instance_exists(obj_transicao))
        {
			
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

            _trans.estado_fade = 1;
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;

            _trans.sala_destino = room_next(room);
			global.porta_liberada = false;
        }
    }
}

if (global.boss1_acordado && room == Boss1)
{
		
        if (!instance_exists(obj_transicao))
        {
            var _trans = instance_create_depth(0, 0, -9999, obj_transicao);

            _trans.estado_fade = 1;
            _trans.alpha = 0;
            _trans.velocidade_fade = 0.02;

            _trans.sala_destino = room_next(room);
        }
    }
