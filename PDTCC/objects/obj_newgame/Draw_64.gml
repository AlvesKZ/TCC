// Título
draw_set_font(ft_titulo);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(display_get_gui_width()/2, 100, "SELECIONE UM SLOT");

// Slots
draw_set_font(ft_menu);
var base_pos_y = display_get_gui_height() * 0.4; // Renomeado para evitar conflito

for (var i = 0; i < op_max; i++) {
    var slot_pos_y = base_pos_y + (i * 80); // Variável renomeada
    
    // Slot selecionado
    if (i == index) {
        draw_set_color(c_yellow);
        var tamanho_atual = lerp(normal_tamanho, destaque_tamanho, 0.5 + sin(current_time * 0.005) * 0.3);
        draw_text_transformed(display_get_gui_width()/2, slot_pos_y, slots[i], tamanho_atual, tamanho_atual, 0);
        
        // Dados do save
        if (file_exists("save" + string(i) + ".dat")) {
            draw_set_font(ft_pequena);
            draw_text(display_get_gui_width()/2, slot_pos_y + 40, "Último save: " + load_last_save_date(i));
        }
    } else {
        draw_set_color(c_white);
        draw_text(display_get_gui_width()/2, slot_pos_y, slots[i]);
    }
}