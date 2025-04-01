function scr_sanitize_text(texto) {
    var substituicoes = [
        ["Á", "A"], ["É", "E"], ["Í", "I"], // ... outros caracteres
    ];
    for (var i = 0; i < array_length(substituicoes); i++) {
        texto = string_replace_all(texto, substituicoes[i][0], substituicoes[i][1]);
    }
    return texto;
}