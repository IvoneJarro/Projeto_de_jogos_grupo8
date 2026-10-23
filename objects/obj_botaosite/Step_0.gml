<<<<<<< HEAD

var _mouse_over = position_meeting(mouse_x, mouse_y, id);

if (_mouse_over) 
{

    if (mouse_check_button(mb_left)) 
    {
        image_index = 2; 
    } 
    else 
    {
        image_index = 1; 
    }
    
 
    if (mouse_check_button_released(mb_left)) 
    {
        url_open("https://projetodejogosgrupo8.netlify.app"); 
    }
} 
else 
{
    image_index = 0; 
=======

var _mouse_over = position_meeting(mouse_x, mouse_y, id);

if (_mouse_over) 
{

    if (mouse_check_button(mb_left)) 
    {
        image_index = 2; 
    } 
    else 
    {
        image_index = 1; 
    }
    
 
    if (mouse_check_button_released(mb_left)) 
    {
        url_open("https://projetodejogosgrupo8.netlify.app"); 
    }
} 
else 
{
    image_index = 0; 
>>>>>>> 3d396b089a168949518769ae4bd39875b3b9fc82
}