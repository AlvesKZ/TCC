// Animação suave do fade
alpha = lerp(alpha, target_alpha, fade_speed);

// Executa a ação no ponto mais escuro do fade
if (alpha >= 0.95 && !action_executed) {
    action_executed = true;
    
    // Executa a ação correspondente
    if (instance_exists(obj_opcoes)) {
        with (obj_opcoes) {
            if (index == 0) window_set_fullscreen(!window_get_fullscreen());
            if (index == 2) room_goto(rm_menu);
        }
    }
    
    // Prepara o fade-out
    target_alpha = 0;
}

// Remove quando a transição terminar
if (alpha <= 0.05 && action_executed) {
    instance_destroy();
}