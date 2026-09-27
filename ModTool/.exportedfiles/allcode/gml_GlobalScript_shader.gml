function c_shader() constructor
{
    u_shape_time = shader_get_uniform(shShape, "u_time");
    u_shape_resolution = shader_get_uniform(shShape, "u_resolution");
    u_shape_zoom = shader_get_uniform(shShape, "u_zoom");
    u_shape_offset = shader_get_uniform(shShape, "u_offset");
    shapeMove = new myTimer(undefined, 0.75, undefined, undefined, "ease-in-out-1-0");
    shapeInc = 0;
    
    update_shape = function()
    {
        shapeMove.reset();
        shapeMove.run();
    };
    
    fake_loading = function()
    {
        shapeInc += random_range(0.05, 0.2);
    };
    
    draw_shape = function(arg0, arg1, arg2, arg3, arg4 = global.zoom)
    {
        if (shapeMove.is_running())
            shapeInc += (0.2 * shapeMove.get_cur_length_normalize());
        
        shader_set(shShape);
        shader_set_uniform_f(u_shape_zoom, arg4);
        shader_set_uniform_f(u_shape_time, (current_time / 4444) + shapeInc);
        shader_set_uniform_f(u_shape_resolution, arg2 - arg0, arg3 - arg1);
        shader_set_uniform_f(u_shape_offset, arg0, arg1);
        draw_rectangle(arg0, arg1, arg2, arg3, false);
        shader_reset();
    };
}
