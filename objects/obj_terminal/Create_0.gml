<<<<<<< HEAD
historico_terminal = [];
codigo_digitado = "";
ativo = false;
depth = -1;

// Identifica qual computador está sendo usado
tipo_computador = 1;


// Variáveis globais do jogo
global.terminal_ativo = false;

global.porta_liberada = false;

if (!variable_global_exists("chave_liberada"))
{
    global.chave_liberada = false;
}

if (!variable_global_exists("desafios_resolvidos"))
{
    global.desafios_resolvidos = 0;
}
=======

historico_terminal = [];


array_push(historico_terminal, "Sistema C v1.0 - Terminal Inicializado.");
array_push(historico_terminal, "Digite o codigo para programar a tecla Q.");


codigo_digitado = "";

historico_terminal = [];
array_push(historico_terminal, "Sistema C v1.0 - Terminal Inicializado.");

codigo_digitado = "";
keyboard_string = "";
>>>>>>> b8389e9b7e45f1bb4cf544134b17da2c2fcfd89d
