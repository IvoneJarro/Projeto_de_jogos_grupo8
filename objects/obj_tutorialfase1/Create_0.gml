
global.jogo_pausado = true;

tutorial_passo = 0;

tutorial_textos = [
    "Bem-vindo ao Tutorial!\nAqui vai ser explicado como funcionam as fases e os codigos a serem resolvidos.",
    "Em cada fase normal, havera 2 computadores, Cada computador tera um codigo pronto em linguagem C, podendo ter erros de sintaxe e/ou logica. Para passar de fase, o player precisa resolver a questao que cada computador passa, e em caso de codigos com defeitos, voce precisa achar os erros e reescrever o codigo mantendo sua estrutura original.",
    "Em fases com Boss, havera um unico codigo mais complexo que vai ser gerado para resolver/responder. Quando resolvido, o boss sera derrotado e assim voce podera seguir para a proxima fase.",
	"Pressione a tecla 'E' para acessar os computadores ao chegar perto deles.\nPressione a tecla 'Q' para dar um ataque/slash com a faca.",
	"Pressione ESPACO para fechar o tutorial e iniciar sua aventura!",
	""
];

texto_completo = tutorial_textos[tutorial_passo];
texto_exibido = "";
posicao_letra = 0;
velocidade_texto = 0.5;
tempo_espera = 0;