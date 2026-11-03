depth = 2;

if (place_meeting(x, y, obj_jogador))
{
    if (keyboard_check_pressed(ord("E"))
    && !global.terminal_ativo)
    {
        var _terminal = instance_find(obj_terminal, 0);

        if (_terminal != noone)
        {
            _terminal.ativo = true;
            _terminal.tipo_computador = 1;

            global.terminal_ativo = true;

            _terminal.codigo_digitado = "";
            _terminal.historico_terminal = [];

            keyboard_string = "";
        }
    }
}