// Opções do Menu
// Restaura a seleção se voltar da confirmação
if (variable_global_exists("menu_index")) {
    index = global.menu_index;
}

input_blocked = false;

// Adicione isso no início do Create Event
menu_ativo = true; // Controla se o menu responde a inputs

menu_active = true; // Controla se o menu deve responder a inputs

opcoes = ["NOVO JOGO", "CARREGAR JOGO", "OPÇÕES", "CRÉDITOS", "SAIR"];
index = 0;
op_max = array_length(opcoes) - 1; // Índice máximo (0-based)

// Configurações de animação
alvo_y = 0;
posicao_atual = 0;
velocidade = 0.2;

// Efeitos visuais
destaque_tamanho = 1.3;
normal_tamanho = 1.0;
tamanho_atual = normal_tamanho;

// Transição de entrada
if (!instance_exists(obj_transicao)) {
    var t = instance_create_layer(0, 0, "Instances", obj_transicao);
    t.alpha = 1;       // Começa totalmente escuro
    t.alvo_alpha = 0;  // Clareia gradualmente
}

// Música de fundo (apenas no menu)
if (room == rm_menu && !audio_is_playing(snd_musica_fundo)) {
    audio_play_sound(snd_musica_fundo, 1, true);
    audio_sound_gain(snd_musica_fundo, 0.5, 0);
}