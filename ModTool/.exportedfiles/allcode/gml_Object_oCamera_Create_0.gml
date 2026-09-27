follow = -4;
global.camera = self;
positionReached = true;
xVel = 0;
yVel = 0;
newX = x;
newY = y;
xView = 0;
yView = 0;
x3d = room_width / 2;
y3d = (room_height / 2) + 40;
z3d = -630;
x3dLookat = room_width / 2;
y3dLookat = (room_height / 2) + 40;
z3dLookat = 0;

switch_resolution = function(arg0)
{
    global.zoomPrevious = global.zoom;
    
    if (arg0 == 1)
    {
        if (frac(global.zoom) == 0)
            global.zoom += 1;
        else
            global.zoom = ceil(global.zoom);
    }
    else if (frac(global.zoom) == 0)
    {
        global.zoom -= 1;
    }
    else
    {
        global.zoom = floor(global.zoom);
    }
    
    global.zoom = clamp(global.zoom, global.zoomMin, global.zoomMax);
    resize();
    ini_open("settings.ini");
    ini_write_real("display", "zoom", global.zoom);
    ini_close();
};

switch_full_screen = function(arg0)
{
    global.zoomPrevious = global.zoom;
    global.fullScreen = arg0;
    
    if (global.fullScreen)
    {
        window_set_showborder(false);
        window_set_fullscreen(true);
        global.zoom = display_get_width() / global.gameWidth;
    }
    else
    {
        window_set_showborder(true);
        window_set_fullscreen(false);
        window_set_caption(game_display_name);
        global.zoom = global.zoomDefault;
    }
    
    alarm[0] = 11;
    ini_open("settings.ini");
    ini_write_real("display", "fullScreen", global.fullScreen);
    ini_write_real("display", "zoom", global.zoom);
    ini_close();
};

resize = function(arg0 = global.fullScreen)
{
    global.windowWidth = global.gameWidth * global.zoom;
    global.windowHeight = global.gameHeight * global.zoom;
    global.windowWidth = max(global.windowWidth, global.gameWidth);
    global.windowHeight = max(global.windowHeight, global.gameHeight);
    
    if (!arg0)
        window_set_size(global.windowWidth, global.windowHeight);
    
    var _aspect = global.windowWidth / global.windowHeight;
    
    if (_aspect > global.aspectRatio)
    {
        global.gameDrawHeight = global.windowHeight;
        global.gameDrawWidth = global.gameDrawHeight * global.aspectRatio;
    }
    else
    {
        global.gameDrawWidth = global.windowWidth;
        global.gameDrawHeight = global.gameDrawWidth / global.aspectRatio;
    }
    
    global.gameDrawOffsetX = (global.windowWidth - global.gameDrawWidth) / 2;
    global.gameDrawOffsetY = (global.windowHeight - global.gameDrawHeight) / 2;
    surface_resize(application_surface, global.gameDrawWidth, global.gameDrawHeight);
    
    if (surface_exists(surf_crt))
        surface_resize(surf_crt, global.gameDrawWidth, global.gameDrawHeight);
    else
        surf_crt = surface_create(global.gameDrawWidth, global.gameDrawHeight);
    
    if (surface_exists(surf_chroma))
        surface_resize(surf_chroma, global.gameDrawWidth, global.gameDrawHeight);
    else
        surf_chroma = surface_create(global.gameDrawWidth, global.gameDrawHeight);
    
    if (surface_exists(surfGui))
        surface_resize(surfGui, global.gameDrawWidth, global.gameDrawHeight);
    else
        surfGui = surface_create(global.gameDrawWidth, global.gameDrawHeight);
    
    if (surface_exists(surfBlurTv))
        surface_resize(surfBlurTv, global.gameDrawWidth, global.gameDrawHeight);
    else
        surfBlurTv = surface_create(global.gameDrawWidth, global.gameDrawHeight);
    
    display_set_gui_size(global.gameDrawWidth, global.gameDrawHeight);
    rescale_font();
    global.zoomPrevious = global.zoom;
};

application_surface_draw_enable(false);
surfBlurTv = -1;
surf_crt = -1;
surf_chroma = -1;
surfGui = -1;
view_enabled = true;
cam3D = camera_create();
view_visible[0] = true;
view_wport[0] = global.gameWidth;
view_hport[0] = global.gameHeight;
var projmat = matrix_build_projection_perspective(global.gameWidth, global.gameHeight, global.gameWidth, 0);
camera_set_proj_mat(cam3D, projmat);
var viewmat = matrix_build_lookat(x3d, y3d, z3d, x3dLookat, y3dLookat, z3dLookat, 0, 1, 0);
camera_set_view_mat(cam3D, viewmat);
xView = camera_get_view_x(cam3D);
yView = camera_get_view_y(cam3D);
shakeTimer = new myTimer(id, 0.5);
shakeX = 0;
shakeY = 0;
u_time = shader_get_uniform(shCrt, "u_time");
u_resolution = shader_get_uniform(shCrt, "u_resolution");
u_zoom = shader_get_uniform(shCrt, "u_zoom");
u_brightness = shader_get_uniform(shCrt, "u_brightness");
u_contrast = shader_get_uniform(shCrt, "u_contrast");
u_line = shader_get_uniform(shCrt, "u_line");
u_crt_effect = shader_get_uniform(shCrt, "u_crt_effect");
u_chroma_strenght = shader_get_uniform(shChroma, "u_strenght");
u_chroma_res = shader_get_uniform(shChroma, "u_res");
u_chroma_time = shader_get_uniform(shChroma, "u_time");
global.chromaStrenght = 0;
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_texrepeat(true);
resize(false);
window_center();
distortion_stage = shader_get_sampler_index(shDistortNormalMap, "distortion_texture_page");
surface_distort = -1;
