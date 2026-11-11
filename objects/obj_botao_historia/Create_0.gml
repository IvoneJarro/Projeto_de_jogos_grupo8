modo_historia = false;


historia_texto[0] = "ATO I: UMA VIDA EM TRINTA ANOS\n\nCom apenas 27 anos, o protagonista vive em um mundo onde a expectativa de vida é de 30 anos. A maioria abandona tudo para aproveitar o pouco tempo que resta em festas e prazeres imediatos.";
historia_texto[1] = "ATO II: TRABALHAR ATE O FIM\n\nMovido pelo desejo de salvar as próximas gerações, o protagonista decide passar seus últimos 3 anos trancado em uma Empresa Biofarmaceutica, buscando mudar a realidade atual da humanidade.";
historia_texto[2] = "ATO III: UM DIA QUALQUER\n\nEncontra um portal estranho. Ao atravessa-lo, acorda num laboratório abandonado, e descobre a verdadeira realidade que foi escondida de todo mundo.";

pagina_atual = 0;
total_paginas = array_length(historia_texto);


texto_exibido = "";
indice_caractere = 0;
velocidade_texto = 0.5; 

// Layout da caixa GUI
margem_x = 60;
largura_caixa = display_get_gui_width() - (margem_x * 2);
altura_caixa = 260;
pos_y_caixa = display_get_gui_height() - altura_caixa - 40;