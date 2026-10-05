function processar_codigo_c(_texto){
	function processar_codigo_c(_texto) 
{

    _texto = string_trim(_texto);
    
    if (string_starts_with(_texto, "printf(") && string_ends_with(_texto, ");")) 
    {
        var _inicio = string_pos("\"", _texto) + 1;
        var _fim = string_last_pos("\"", _texto);
        
        if (_inicio > 1 && _fim > _inicio) 
        {
            var _mensagem = string_copy(_texto, _inicio, _fim - _inicio);
     
            array_push(historico_terminal, "> " + _mensagem);
        }
    }

    else if (string_starts_with(_texto, "int ")) 
    {
        array_push(historico_terminal, "> Variável declarada com sucesso.");
    }
  
    else 
    {
        array_push(historico_terminal, "> Erro de sintaxe em C.");
    }
}
}