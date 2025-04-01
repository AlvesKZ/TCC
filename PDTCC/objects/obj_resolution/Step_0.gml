// Verifica e ajusta a resolução em tela cheia
if (window_get_fullscreen() && !resolution_set) {
    var display_w = display_get_width();
    var display_h = display_get_height();
    
    // Calcula a melhor resolução para preencher a tela
    var game_aspect = room_width / room_height;
    var display_aspect = display_w / display_h;
    
    if (display_aspect > game_aspect) {
        // Ajusta para altura máxima
        var new_width = display_h * game_aspect;
        window_set_rectangle((display_w - new_width)/2, 0, new_width, display_h);
    } else {
        // Ajusta para largura máxima
        var new_height = display_w / game_aspect;
        window_set_rectangle(0, (display_h - new_height)/2, display_w, new_height);
    }
    
    resolution_set = true;
} else if (!window_get_fullscreen()) {
    resolution_set = false;
}

if (!window_get_fullscreen()) {
    window_set_rectangle(0, 0, room_width, room_height); // Volta ao tamanho padrão
}