if (!surface_exists(surfTv))
    surfTv = surface_create(objWidth, objHeight);

surface_set_target(surfTv);
draw_clear_alpha(c_black, 0);
gpu_set_ztestenable(false);
draw_set_color(global.color.grey1);
draw_rectangle(0, 0, objWidth, objHeight, false);
draw_set_color(c_white);
draw_sprite(sprTvClap, ((cos(current_time / 100) / 2) + 0.5) * 4, objWidth / 2, objHeight / 2);
draw_sprite(sprToken1, 0, objWidth / 2, objHeight / 2);
gpu_set_ztestenable(true);
surface_reset_target();

if (!surface_exists(surfaceCrt))
    surfaceCrt = surface_create(objWidth, objHeight);

surface_set_target(surfaceCrt);
draw_clear_alpha(c_black, 0);
shader_set(shTest);
shader_set_uniform_f(u_resolution, objWidth, objHeight);
draw_surface(surfTv, 0, 0);
shader_reset();
surface_reset_target();
var _matrixToOrigin = matrix_build((-objWidth / 2) - xInit, (-objHeight / 2) - yInit, 0, 0, 0, 0, 1, 1, 1);
var _matrixRotate = matrix_build(0, 0, 0, angleX, angleY, angleZ, 1, 1, 1);
var _matrixTranslate = matrix_build(xInit, yInit, zInit, 0, 0, 0, 1, 1, 1);
var _transformFinal = matrix_multiply(_matrixToOrigin, _matrixRotate);
var _transformFinal2 = matrix_multiply(_transformFinal, _matrixTranslate);
matrix_set(2, _transformFinal2);
shader_set(shCleanPixel);
shader_set_uniform_f(frame_size_uniform, objWidth, objHeight);
gpu_set_tex_filter(true);
tex = surface_get_texture(surfaceCrt);
vertex_submit(vBuffFace, pr_trianglestrip, tex);
gpu_set_tex_filter(false);
shader_reset();
matrix_set(2, matrix_build_identity());
