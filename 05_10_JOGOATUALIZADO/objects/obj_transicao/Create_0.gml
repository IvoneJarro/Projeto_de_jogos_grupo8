// --- EVENTO CREATE DO obj_transicao ---
depth = -9999;
alpha = 0;
velocidade_fade = 0.02;
estado_fade = 1;

// Se a sala_destino não foi definida pelo portal, força para a sala 'cidade' ou a próxima sala
if (!variable_instance_exists(id, "sala_destino") || sala_destino == -1) {
    if (room_exists(cidade)) {
        sala_destino = cidade;
    } else {
        sala_destino = room_next(room);
    }
}

show_debug_message("Transição criada com destino para a sala: " + string(sala_destino));