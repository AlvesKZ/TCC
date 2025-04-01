/// @function transicao_para_sala(sala);
/// @param {real} sala - ID da sala de destino
function transicao_para_sala(sala) {
    var t = instance_create_layer(0, 0, "Instances", obj_transicao);
    t.alvo_alpha = 1;
    t.sala_alvo = sala;
    return t; // Retorna a instância para controle extra se necessário
}