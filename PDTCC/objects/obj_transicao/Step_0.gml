// Interpolação suave do alpha
alpha = lerp(alpha, alvo_alpha, velocidade);

// Troca de sala quando a tela está totalmente escura
if (alpha >= 0.99 && sala_alvo != -1) {
    room_goto(sala_alvo);
}