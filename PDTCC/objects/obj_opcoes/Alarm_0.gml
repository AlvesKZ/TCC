// Executa a ação após a transição
if (index == 0) {
    window_set_fullscreen(!window_get_fullscreen());
} else if (index == 2) {
    room_goto(rm_menu);
}

// Reinicia a transição (fade-out)
var fade = instance_create_depth(0, 0, 10000, obj_fade_transition);
fade.alpha = 1;
fade.target_alpha = 0;

if (index == 2) { // VOLTAR
    audio_play_sound(som_selecionar, 1, false); // Toca ao confirmar "VOLTAR"
    room_goto(rm_menu);
}