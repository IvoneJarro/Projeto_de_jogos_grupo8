
global.jogo_pausado = true;

tutorial_passo = 0;

tutorial_textos = [
    "Bem-vindo a primeira zona de codigo!\nNeste mundo, as acoes sao controladas por comandos.",
    "Em C, usamos condicoes 'if' para criar as acoes. Exemplo:\nif (tecla == 'Q') { atacar(); }",
    "Para dar dano no robô inimigo, o codigo precisa de detetar a tecla Q.",
    "Pressiona ESPACO para fechar o tutorial e começar a programar!",
	"Alias, boa sorte, voce vai precisar..."
];

texto_completo = tutorial_textos[tutorial_passo];
texto_exibido = "";
posicao_letra = 0;
velocidade_texto = 0.5;
tempo_espera = 0;