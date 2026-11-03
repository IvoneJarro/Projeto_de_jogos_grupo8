
if (place_meeting(x, y, obj_jogador))
{
    if (keyboard_check_pressed(ord("E"))
    && !global.terminal_ativo)
    {
		global.jogo_pausado = true;
        var _terminal = instance_find(obj_terminal, 0);

        if (_terminal != noone)
        {
			global.flagboss1_acesso = true;
            _terminal.codigo_digitado = "";
            _terminal.historico_terminal = [];
            keyboard_string = "";
        }
    }
}