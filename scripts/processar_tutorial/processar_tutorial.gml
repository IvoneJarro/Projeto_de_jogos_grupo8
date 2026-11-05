function processar_tutorial(_codigo) {
    

    _codigo = string_trim(_codigo);
	_codigo = string_replace_all(_codigo, " ", "");
	_codigo = string_replace_all(_codigo, "\n", "");
	_codigo = string_replace_all(_codigo, "\r", "");
	_codigo = string_replace_all(_codigo, "\t", "");
    
    if (_codigo == "") return;
    
    array_push(historico_terminal, "C> " + _codigo);
    
    if (_codigo == "abrir_porta();") {
        
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
}