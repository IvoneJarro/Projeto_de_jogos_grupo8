function processar_codigo_c(_texto)
{
	
    _texto = string_trim(_texto);
	var _terminal = instance_find(obj_terminal, 0);
	// MOSTRA O COMANDO DIGITADO
    //if(room!=BossFight1) {
	//array_push(
     //   _terminal.historico_terminal,
    //    "> " + _texto
   // );
	//}
	
	_texto = string_replace_all(_texto, " ", "");
	_texto = string_replace_all(_texto, "\n", "");
	_texto = string_replace_all(_texto, "\r", "");
	_texto = string_replace_all(_texto, "\t", "");


    if (_terminal == noone)
    {
        return;
    }

  

    // COMPUTADOR 1: PORTA

    if (_terminal.tipo_computador == 1)
    {
        if (_texto == "boolporta=true;")
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
        if (_texto == "boolchave=true;")
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
	// Computador 3: Boss
	
	else if (_terminal.tipo_computador == 3)
    {
        if (string_pos("intglobal.bosshealth=100;", _texto) > 0 &&
        string_pos("while(global.bosshealth>0){", _texto) > 0 &&
        string_pos("global.bosshealth-=1;", _texto) > 0 &&
        string_pos("if(global.bosshealth<=0){", _texto) > 0 &&
        string_pos("abrir_porta();}", _texto) > 0)
        {
            if (!global.porta_liberada)
            {
                global.porta_liberada = true;
                _terminal.ativo = false;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: CODIGO SUCESSIVO!"
                );

                if (!instance_exists(obj_transicao))
                {
                    var _trans = instance_create_depth(0, 0, -9999, obj_transicao);
                    _trans.estado_fade = 1;
                    _trans.alpha = 0;
                    _trans.velocidade_fade = 0.02;
                    _trans.sala_destino = Boss1;
                }
            }
            else
            {
				
                array_push(
                    _terminal.historico_terminal,
                    "O codigo ja foi resolvido."
                );
            }
        }
        else
        {
			if(room!=BossFight1) {
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
	}
	
	else if (_terminal.tipo_computador == 4)
    {
        if (string_pos("intnum_porta=0;", _texto) > 0 &&
        string_pos("while(num_porta!=20){", _texto) > 0 &&
        string_pos("num_porta+=1;", _texto) > 0 &&
        string_pos("if(num_porta>=20){", _texto) > 0 &&
        string_pos("abrir_porta();}", _texto) > 0)
        
        {
            if (!global.porta_liberada)
            {
                global.porta_liberada = true;
                global.desafios_resolvidos++;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: PORTA LIBERADA!"
                );
            }
            else
            {
                array_push(
                    _terminal.historico_terminal,
                    "A porta ja foi liberada."
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
	else if (_terminal.tipo_computador == 5)
    {
        if (string_pos("intnum_chave=0;", _texto) > 0 &&
        string_pos("while(num_chave!=20){", _texto) > 0 &&
        string_pos("num_chave-=1;", _texto) > 0 &&
        string_pos("if(num_chave<=-20){", _texto) > 0 &&
        string_pos("abrir_porta();}", _texto) > 0)
        
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
	else if (_terminal.tipo_computador == 6)
    {
        if (string_pos("intobj_door=1;", _texto) > 0 &&
        string_pos("if(obj_door==1){", _texto) > 0 &&
        string_pos("abrir_porta();}", _texto) > 0)
        
        {
            if (!global.porta_liberada)
            {
                global.porta_liberada = true;
                global.desafios_resolvidos++;

                array_push(
                    _terminal.historico_terminal,
                    "SUCESSO: PORTA LIBERADA!"
                );
            }
            else
            {
                array_push(
                    _terminal.historico_terminal,
                    "A porta ja foi liberada."
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
	else if (_terminal.tipo_computador == 7)
    {
        if (string_pos("intobj_key=1;", _texto) > 0 &&
        string_pos("if(obj_key==1){", _texto) > 0 &&
        string_pos("abrir_porta();}", _texto) > 0)
        
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
}