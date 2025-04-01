// Configurações básicas
index = 0; // 0 = SIM, 1 = NÃO
fade_alpha = 1; // Tela totalmente preta
fade_speed = 0.2;

// Desativa o menu principal
if (instance_exists(obj_menu)) {
    obj_menu.menu_ativo = false;
}