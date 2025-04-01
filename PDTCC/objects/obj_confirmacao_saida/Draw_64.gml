// Fundo preto (com possível fade-out)
draw_set_alpha(fade_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// Texto da confirmação
draw_set_font(ft_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Pergunta principal
draw_set_color(c_white);
draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2 - 60, 
                     "DESEJA REALMENTE SAIR?", 1.3, 1.3, 0);

// Opções (destaque amarelo)
var y_pos = display_get_gui_height()/2 + 30;
if (index == 0) {
    draw_set_color(c_yellow);
    draw_text(display_get_gui_width()/2, y_pos, "► SIM");
    draw_set_color(c_white);
    draw_text(display_get_gui_width()/2, y_pos + 50, "   NÃO");
} else {
    draw_set_color(c_white);
    draw_text(display_get_gui_width()/2, y_pos, "   SIM");
    draw_set_color(c_yellow);
    draw_text(display_get_gui_width()/2, y_pos + 50, "► NÃO");
}