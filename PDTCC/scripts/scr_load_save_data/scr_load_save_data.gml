function load_last_save_date(slot_id) {
    if (file_exists("save" + string(slot_id) + ".dat")) {
        var arquivo = file_open("save" + string(slot_id) + ".dat", file_read);
        var data = file_read(arquivo);
        file_close(arquivo);
        return data; // Retorna data/hora formatada
    }
    return "Nenhum save";
}