/// @function scr_update_volume_text(opcoes, volume)
/// @param {array} opcoes Array de opções do menu
/// @param {real} volume Valor do volume (0.0 a 1.0)
function scr_update_volume_text(_opcoes, _volume) {
    _opcoes[1] = "VOLUME: " + string(round(_volume * 100)) + "%";
    return _opcoes;
}