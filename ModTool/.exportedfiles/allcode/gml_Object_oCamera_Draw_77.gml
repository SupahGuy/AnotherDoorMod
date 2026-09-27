if (live_call())
    return global.live_result;

if (!surface_exists(surf_crt))
    surf_crt = surface_create(global.gameDrawWidth, global.gameDrawHeight);

if (!surface_exists(surf_chroma))
    surf_chroma = surface_create(global.gameDrawWidth, global.gameDrawHeight);

if (!surface_exists(surfGui))
{
    surface_depth_disable(true);
    surfGui = surface_create(global.gameDrawWidth, global.gameDrawHeight);
    surface_depth_disable(false);
}

if (!surface_exists(surfBlurTv))
    surfBlurTv = surface_create(global.gameDrawWidth, global.gameDrawHeight);

surface_set_target(surfGui);
draw_clear_alpha(c_black, 0);
gpu_set_blendmode_ext_sepalpha(bm_src_alpha, bm_inv_src_alpha, bm_one, bm_inv_src_alpha);
var _uiObj = tag_get_asset_ids("drawGUI", 0);
var depthOrder = ds_priority_create();

for (var _i = 0; _i < array_length(_uiObj); _i++)
{
    with (_uiObj[_i])
        ds_priority_add(depthOrder, id, -depth);
}

while (!ds_priority_empty(depthOrder))
{
    with (ds_priority_delete_min(depthOrder))
        event_perform(ev_draw, ev_gui);
}

ds_priority_destroy(depthOrder);
gpu_set_blendmode(bm_normal);
surface_reset_target();
surface_set_target(surf_crt);
gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
draw_clear_alpha(c_black, 0);
shader_set(shCrt);
shader_set_uniform_f(u_time, current_time / 100);
shader_set_uniform_f(u_resolution, global.gameWidth, global.gameHeight);
shader_set_uniform_f(u_zoom, global.zoom);
shader_set_uniform_f(u_brightness, 1.03);
shader_set_uniform_f(u_line, 0.91);
shader_set_uniform_f(u_contrast, 1.23);

if (global.crtEffect)
    shader_set_uniform_f(u_crt_effect, 1);
else
    shader_set_uniform_f(u_crt_effect, 0);

draw_surface(application_surface, 0, 0);
draw_surface(surfGui, 0, 0);
shader_reset();
gpu_set_blendmode(bm_normal);
surface_reset_target();
surface_set_target(surf_chroma);
draw_clear_alpha(c_black, 0);
shader_set(shChroma);
shader_set_uniform_f(u_chroma_time, current_time);
shader_set_uniform_f(u_chroma_strenght, global.chromaStrenght);
shader_set_uniform_f(u_chroma_res, global.gameWidth, global.gameHeight);
draw_surface(surf_crt, shakeX, shakeY);
shader_reset();
surface_reset_target();
draw_surface(surf_chroma, global.gameDrawOffsetX, global.gameDrawOffsetY);
