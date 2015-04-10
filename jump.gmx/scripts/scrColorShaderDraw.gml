/// scrColorShaderDraw()
if( shader_is_compiled(shdColor))
    {    
    shader_set(shdColor);    
                                    // 139, 0, 255,255
    shader_set_uniform_f(channel_mask, r  , g,   b, alpha);           
    draw_self();
    shader_reset();
        
        
    }
    else {show_message("Sorry, your GPU does not support shaders, time for upgrade man."); game_end();}

