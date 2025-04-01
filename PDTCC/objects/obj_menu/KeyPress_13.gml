// Modifique para usar a variável correta
if (menu_ativo) {  // Agora usando a variável declarada
    audio_play_sound(snd_selecionar, 1, false);
    
    switch (index) {
        case 0: room_goto(rm_newgame); break;
        case 1: show_message("Em desenvolvimento"); break;
        case 2: room_goto(rm_opcoes); break;
        case 3: room_goto(rm_creditos); break;
        case 4: // SAIR
    audio_play_sound(snd_selecionar, 1, false);
    room_goto(rm_confirmacao_saida); // Usa sua room existente
    break;
    }
}