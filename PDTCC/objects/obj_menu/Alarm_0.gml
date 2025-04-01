// Reduz o efeito visual após confirmação
destaque_tamanho = 1.0;

// Executa a ação do menu (caso não tenha sido executada no ENTER)
switch (index) {
    case 0: room_goto_next(); break;
    case 1: /* Carregar Jogo */ break;
    case 2: room_goto(rm_opcoes); break;
    case 3: room_goto(rm_creditos); break;
    case 4: game_end(); break;
}