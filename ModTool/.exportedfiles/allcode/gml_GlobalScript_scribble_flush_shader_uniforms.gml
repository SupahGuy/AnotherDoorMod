function scribble_flush_shader_uniforms()
{
    static _scribble_state = __scribble_system().__state;
    
    with (_scribble_state)
    {
        __shader_anim_desync = true;
        __shader_anim_desync_to_default = true;
    }
}
