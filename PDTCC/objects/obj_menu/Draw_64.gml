// Título
// Limpa resíduos da confirmação ANTES de desenhar o menu

if (menu_active) {
	
if (layer_exists("Confirmacao")) {
    layer_destroy("Confirmacao");
}

// [Seu código normal de desenho do menu]
draw_set_font(ft_titulo);
draw_set_halign(fa_center);
draw_set_color(c_white);

// Opções do menu
draw_set_font(ft_menu);
var base_y = display_get_gui_height() * 0.4;

for (var i = 0; i < op_max + 1; i++) {
    var opcao_y = base_y + (i * 60);
    
    if (i == index) {
        draw_set_color(c_red);
        var tamanho = lerp(normal_tamanho, destaque_tamanho, 0.5 + sin(current_time * 0.005) * 0.3);
        draw_text_transformed(display_get_gui_width()/2, opcao_y, opcoes[i], tamanho, tamanho, 0);
    } else {
        draw_set_color(c_white);
        draw_text(display_get_gui_width()/2, opcao_y, opcoes[i]);
    }
	  draw_set_color(c_white);
    draw_text(10, 10, "Menu Ativo");
}
}