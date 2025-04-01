// STEP Event (substitua o bloco de navegação atual por este)
if (!confirmando) {
    // Navegação com som
    if (keyboard_check_pressed(vk_up)) {
        index = (index - 1 + op_max) % op_max;
        audio_play_sound(audio_navegar, 1, false); // Som de navegação
    }
    if (keyboard_check_pressed(vk_down)) {
        index = (index + 1) % op_max;
        audio_play_sound(audio_navegar, 1, false); // Som de navegação
    }
    
    // Confirmação com som
    if (keyboard_check_pressed(vk_enter)) {
        audio_play_sound(audio_selecionar, 1, false); // Som de seleção
        confirmando = true;
    }
}

if (keyboard_check_pressed(vk_escape)) {
    room_goto(rm_menu); // Substitua "sala_menu" pelo nome real da sala do menu principal
}

// Confirmação final (adicione dentro do if confirmando)
if (confirmando && keyboard_check_pressed(vk_enter)) {
    start_new_game(index); // Chama a função de iniciar jogo
}
if (confirmando && keyboard_check_pressed(vk_escape)) {
    confirmando = false; // Cancela a confirmação
}

