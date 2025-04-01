// Navegação (UP/DOWN) - CORREÇÃO PRINCIPAL
if (keyboard_check_pressed(vk_up)) {
    index = (index - 1 + op_max) % op_max;
    audio_play_sound(som_navegar, 1, false); // Som de navegar
}
if (keyboard_check_pressed(vk_down)) {
    index = (index + 1) % op_max;
    audio_play_sound(som_navegar, 1, false); // Som de navegar
}

// Confirmação (ENTER)
if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(som_selecionar, 1, false); // Som de seleção
    switch (index) {
        case 0: // TELA CHEIA
            tela_cheia = !tela_cheia;
            window_set_fullscreen(tela_cheia);
            break;
        case 2: // VOLTAR
            room_goto(rm_menu);
            break;
    }
}


// Ajuste de volume (LEFT/RIGHT)
if (index == 1) {
    if (keyboard_check_pressed(vk_left)) {
        volume = max(0, volume - 0.1);
        audio_master_gain(volume);
        audio_play_sound(som_navegar, 1, false); // Som de navegar
    }
    if (keyboard_check_pressed(vk_right)) {
        volume = min(1, volume + 0.1);
        audio_master_gain(volume);
        audio_play_sound(som_navegar, 1, false); // Som de navegar
    }
}