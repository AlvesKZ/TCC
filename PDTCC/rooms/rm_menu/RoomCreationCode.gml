// Limpeza segura - verifica se o objeto existe antes de destruir
if (object_exists(obj_confirmacao_saida)) {
    with (obj_confirmacao_saida) instance_destroy();
}

// Garante que o menu principal está ativo
if (instance_exists(obj_menu)) {
    obj_menu.menu_ativo = true;
    obj_menu.input_blocked = false;
}