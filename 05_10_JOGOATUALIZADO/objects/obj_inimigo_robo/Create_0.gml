vida_max = 100;
dano = 1;
vida_atual = 100;
direcao = 1;
 
invulneravel = 0;   
flash = 0;         
empurrao = 0;       
morrendo = false;

levar_dano = function(_quantidade, _origem_x)
{
    if (invulneravel > 0 || morrendo) return;

    vida_atual -= _quantidade;
    invulneravel = 30;  
    flash = 10;        

    empurrao = (x >= _origem_x) ? 8 : -8;
}