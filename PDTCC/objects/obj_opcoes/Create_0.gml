// Opções do menu
opcoes = ["TELA CHEIA", "VOLUME", "VOLTAR"];
index = 0;
op_max = array_length(opcoes);

// Configurações padrão
tela_cheia = false;  // SEMPRE INICIALIZA A VARIÁVEL
volume = 1.0;       // Volume máximo (0 a 1)

// Sons
som_navegar = snd_navegar;  // Som ao mover entre opções
som_selecionar = snd_selecionar; // Som ao confirmar

// Garanta que a variável global exista
if (!variable_global_exists("tela_cheia")) {
    global.tela_cheia = false; // Valor padrão
}