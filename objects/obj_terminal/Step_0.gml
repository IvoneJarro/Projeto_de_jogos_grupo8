<<<<<<< HEAD
<<<<<<< HEAD
if (!ativo)
{
    exit;
}

// Aguarda soltar E para evitar digitação indesejada
if (keyboard_check(ord("E")) && codigo_digitado == "")
{
    keyboard_string = "";
    exit;
}

// Fechar com ESC
if (keyboard_check_pressed(vk_escape))
{
    ativo = false;
    global.terminal_ativo = false;

    codigo_digitado = "";
    keyboard_string = "";

    exit;
}

// Capturar o texto digitado
codigo_digitado = keyboard_string;

// Executar com ENTER
if (keyboard_check_pressed(vk_enter))
{
    var _codigo = string_trim(codigo_digitado);

    if (_codigo != "")
    {
        processar_codigo_c(_codigo);
    }

    codigo_digitado = "";
    keyboard_string = "";
}

if(room == BossFight1) {
	
	global.terminal_ativo = true;
	ativo = true;
	
=======

codigo_digitado = keyboard_string;

if (keyboard_check_pressed(vk_enter)) {
    
    var _codigo_limpo = string_trim(codigo_digitado);
    
    if (_codigo_limpo != "") {
        processar_codigo_c(_codigo_limpo);
    }
    
    codigo_digitado = "";
    keyboard_string = ""; 
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
=======

codigo_digitado = keyboard_string;

if (keyboard_check_pressed(vk_enter)) {
    
    var _codigo_limpo = string_trim(codigo_digitado);
    
    if (_codigo_limpo != "") {
        processar_codigo_c(_codigo_limpo);
    }
    
    codigo_digitado = "";
    keyboard_string = ""; 
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
}