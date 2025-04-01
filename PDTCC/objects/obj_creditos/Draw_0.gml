// obj_creditos - Draw Event
draw_set_font(ft_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var creditos = [
    "DESENVOLVIDO POR:",
    "",
    "RAFAEL FORTES",
    "ARTHUR PIRES",
    "EDUARDO LEITE",
    "CLAYTON",
    "ANA CLARA",
    "IGOR ALVES",
    "",
    "AGRADECIMENTOS ESPECIAIS:",
    "TODOS QUE APOIARAM O PROJETO!"
];

var tela_largura = display_get_gui_width();
var tela_altura = display_get_gui_height();
var espacamento = 35;
var deslocamento_esquerda = 120; // Alterado para 120

var total_linhas = array_length(creditos);
var altura_total = (total_linhas * espacamento);
var y_inicial = (tela_altura - altura_total) / 2;

for (var i = 0; i < total_linhas; i++) {
    var linha = creditos[i];
    if (linha != "") {
        var pos_x = (tela_largura/2) - deslocamento_esquerda;
        
        if (linha == "DESENVOLVIDO POR:" || linha == "AGRADECIMENTOS ESPECIAIS:") {
            draw_text_transformed(pos_x, y_inicial + (i * espacamento), linha, 1.2, 1.2, 0);
        } else {
            draw_text(pos_x, y_inicial + (i * espacamento), linha);
        }
    }
}

draw_set_font(-1);