<<<<<<< HEAD
function processar_codigo_c(_texto)
{
    _texto = string_trim(_texto);

    var _terminal = instance_find(obj_terminal, 0);

    if (_terminal == noone)
    {
        return;
    }

    // MOSTRA O COMANDO DIGITADO
    array_push(
        _terminal.historico_terminal,
        "> " + _texto
    );


    // COMPUTADOR 1: PORTA

    if (_terminal.tipo_computador == 1)
    {
        if (_texto == "int porta = 1;")
        {
            if (!global.porta_liberada)
            {
                global.porta_liberada = true;
                global.desafios_resolvidos++;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: PORTA DESBLOQUEADA!"
                );
            }
            else
            {
                array_push(
                    _terminal.historico_terminal,
                    "A porta ja foi desbloqueada."
                );
            }
        }
        else
        {
            array_push(
                _terminal.historico_terminal,
                "ERRO: codigo incorreto."
            );

            array_push(
                _terminal.historico_terminal,
                "Tente novamente."
            );
        }
    }


    // COMPUTADOR 2: CHAVE

    else if (_terminal.tipo_computador == 2)
    {
        if (_texto == "int chave = 1;")
        {
            if (!global.chave_liberada)
            {
                global.chave_liberada = true;
                global.desafios_resolvidos++;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: CHAVE LIBERADA!"
                );
            }
            else
            {
                array_push(
                    _terminal.historico_terminal,
                    "A chave ja foi liberada."
                );
            }
        }
        else
        {
            array_push(
                _terminal.historico_terminal,
                "ERRO: codigo incorreto."
            );

            array_push(
                _terminal.historico_terminal,
                "Tente novamente."
            );
        }
    }
	
	else if (_terminal.tipo_computador == 3)
    {
        if (_texto == "int boss = 1;")
        {
            if (!global.chave_liberada)
            {
                global.chave_liberada = true;
                global.desafios_resolvidos++;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: CHAVE LIBERADA!"
                );
            }
            else
            {
                array_push(
                    _terminal.historico_terminal,
                    "A chave ja foi liberada."
                );
            }
        }
        else
        {
            array_push(
                _terminal.historico_terminal,
                "ERRO: codigo incorreto."
            );

            array_push(
                _terminal.historico_terminal,
                "Tente novamente."
            );
        }
    }
=======
function processar_codigo_c(_codigo) {
    

    _codigo = string_trim(_codigo);
    
    if (_codigo == "") return;
    
    array_push(historico_terminal, "C> " + _codigo);
    
    if (string_pos("Q", _codigo) > 0 || string_pos("attack", _codigo) > 0) {
        
        array_push(historico_terminal, "-> Compilado com sucesso: Tecla Q ativada!");
        
        if (instance_exists(obj_jogador)) {
            obj_jogador.pode_atacar = true;
        }
        
        global.jogo_pausado = false;
        instance_destroy();
        
    } 
    else {

        array_push(historico_terminal, "-> Erro de sintaxe: Tente programar o comando para a tecla Q.");
    }
    

    while (array_length(historico_terminal) > 10) {
        array_delete(historico_terminal, 0, 1);
    }
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
}