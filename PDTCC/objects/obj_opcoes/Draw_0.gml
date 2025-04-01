// DRAW Event
draw_set_font(ft_menu);
draw_set_halign(fa_left);
draw_set_color(c_white);

// Define as posições INICIALMENTE (fora do loop)
var config_x = display_get_gui_width() * 0.3; // 30% da largura da tela
var config_y = display_get_gui_height() * 0.4; // 40% da altura da tela

// Desenha as opções
for (var i = 0; i < op_max; i++) {
    // Destaque para a opção selecionada
    if (i == index) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    
    // Desenha o texto da opção (usando config_x e config_y definidas acima)
    draw_text(config_x, config_y + (i * 50), opcoes[i]);
    
    // Valores das opções (tela cheia e volume)
    switch (i) {
        case 0: // TELA CHEIA
            draw_text(config_x + 200, config_y + (i * 50), tela_cheia ? "ON" : "OFF");
            break;
            
        case 1: // VOLUME
            draw_text(config_x + 200, config_y + (i * 50), string(round(volume * 100)) + "%");
            break;
    }
}