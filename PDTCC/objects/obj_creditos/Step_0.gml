// Voltar ao menu principal ao pressionar Esc
if (keyboard_check_pressed(vk_escape)) {
    room_goto(rm_menu); // Substitua "sala_menu" pelo nome real da sala do menu principal
}
// Fade-in ao entrar na sala
if (!instance_exists(obj_transicao)) {
    var t = instance_create_layer(0, 0, "Instances", obj_transicao);
    t.alpha = 1;       // Começa totalmente escuro
    t.alvo_alpha = 0;  // Clareia gradualmente
}