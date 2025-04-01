slots = ["SLOT 1", "SLOT 2", "SLOT 3"]; // Nomes dos slots (pode carregar dados reais depois)
index = 0;
op_max = array_length(slots);
destaque_tamanho = 1.3;
normal_tamanho = 1.0;
confirmando = false; // Flag para estado de confirmação

// CREATE Event (adicione essas linhas se não existirem)
audio_navegar = snd_navegar;   // Som ao navegar
audio_selecionar = snd_selecionar; // Som ao confirmar