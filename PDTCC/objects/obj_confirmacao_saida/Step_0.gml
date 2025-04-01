// Controles de navegação
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)) {
    index = 1 - index; // Alterna entre SIM/NÃO
    audio_play_sound(snd_navegar, 0.7, false);
}

// Confirmação
if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(snd_selecionar, 1, false);
    
    if (index == 0) {
        game_end(); // Fecha o jogo
    } else {
        // Inicia fade-out para voltar ao menu
        fade_alpha = 0;
    }
}

// Cancelamento com ESC
if (keyboard_check_pressed(vk_escape)) {
    audio_play_sound(snd_voltar, 1, false);
    fade_alpha = 0;
}

// Animação de fade-out
if (fade_alpha < 1) {
    fade_alpha = lerp(fade_alpha, 0, fade_speed);
    if (fade_alpha <= 0.05) {
        // Reativa o menu antes de voltar
        if (instance_exists(obj_menu)) {
            obj_menu.menu_ativo = true;
        }
        room_goto(rm_menu);
    }
}