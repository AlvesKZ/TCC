function start_new_game(slot_id) {
    global.slot_ativo = slot_id;
    
    // Cria dados iniciais em formato de string
    var dados_iniciais = "level:1|progresso:0|vida:100|arma:0";
    
    // Salva no slot (formato .ini mais simples)
    var arquivo = file_text_open_write("save" + string(slot_id) + ".sav");
    file_text_write_string(arquivo, dados_iniciais);
    file_text_close(arquivo);
    
    // Transição para o jogo
    transicao_para_sala(rm_intro);
}