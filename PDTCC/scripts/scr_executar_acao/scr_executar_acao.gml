// Script executar_acao
function executar_acao() {
    switch (index) {
        case 0: // Tela cheia
            var is_fullscreen = !window_get_fullscreen();
            window_set_fullscreen(is_fullscreen);
            show_message("Tela cheia " + (is_fullscreen ? "ativada" : "desativada")); // Adicionado
            break;
            
        case 1: // Volume (já ajustado no Step)
            break;
            
        case 2: // Voltar
            room_goto(rm_menu);
            break;
    }
}