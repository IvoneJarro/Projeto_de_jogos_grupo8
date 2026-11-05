
global.jogo_pausado = true;

tutorial_passo = 0;

tutorial_textos = [
    "Bem-vindo ao Tutorial!\nAqui sera explicado como funcionam as Fases.",
    "Em cada fase normal, havera 2 computadores.\nCada computador tera um codigo pronto em linguagem C, podendo ter erros de sintaxe e/ou logica.",
    "Para passar de fase, o player precisa resolver a questao que cada computador passa.\nEm caso de codigos com defeitos, voce precisa achar os erros\ne reescrever o codigo mantendo sua estrutura original.",
    "Em fases de Boss, havera apenas um codigo mais complexo que devera ser resolvido",
	"Para acessar os computadores, basta chegar perto deles e pressionar a tecla 'E'.\nPara dar um ataque/slash com a faca pressione a tecla 'Q'.",
	"Pressione ESPACO para fechar o tutorial e começar a programar!",
	""
];

texto_completo = tutorial_textos[tutorial_passo];
texto_exibido = "";
posicao_letra = 0;
velocidade_texto = 0.5;
tempo_espera = 0;