if (cooldown > 0)
{
    cooldown--;
}

if (cooldown <= 0 && sprite_index != spr_bichoatirandoE)
{
    sprite_index = spr_bichoatirandoE;
    image_index = 0;
    image_speed = 1;
}

if (sprite_index == spr_bichoatirandoE)
{
    if (image_index >= image_number - 1) 
    {
        instance_create_layer(x - 54, y - 25, "Instances", obj_tiro);
        sprite_index = spr_bichoE;
        cooldown = tempo_cooldown;
    }
}