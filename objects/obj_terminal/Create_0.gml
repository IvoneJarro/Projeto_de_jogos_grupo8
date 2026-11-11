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