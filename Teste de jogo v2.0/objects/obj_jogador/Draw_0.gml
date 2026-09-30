draw_set_font(Fonte_ataque)
draw_self();

if (room == PrimeiraFase) {
    draw_text(x - 20, y - 40, "Vida: " + string(vida));
}