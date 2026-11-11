if (image_index >= image_number - 1)
{
    // Trava a velocidade da animação em 0
    image_speed = 0;
    
    // Força o frame a ficar exatamente no último para não bugar
    image_index = image_number - 1;
}