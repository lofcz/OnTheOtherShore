/// scrColorShaderDrawSpeci()
if( shader_is_compiled(shdColor))
    {    
    shader_set(shdColor);    
                                    // 139, 0, 255,255
    shader_set_uniform_f(channel_mask, r  , g,   b, alpha+0.2);       
    draw_self();
    if (k_p = 1)
    {
    draw_sprite_ext(sprite_index,-1,x+sprite_get_width(sprite_index),y-(255-k),1,1,180,c_white,k/128)
    }
    shader_reset();
        
        
    }
    else {show_message("Sorry, your GPU does not support shaders, time for upgrade man."); game_end();}