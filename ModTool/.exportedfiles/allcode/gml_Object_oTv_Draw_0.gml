if (!surface_exists(surfTv))
    surfTv = surface_create(objWidth, objHeight);

surface_set_target(surfTv);
draw_clear_alpha(c_black, 0);

if (colorToDraw != -1)
    draw_rectangle_color(0, 0, objWidth, objHeight, colorToDraw, colorToDraw, colorToDraw, colorToDraw, false);

if (spriteToDraw != -1)
    draw_sprite_ext(sprite_index, image_index, spriteX, spriteY, image_xscale, image_yscale, image_angle, c_white, 1);

if (number == 6 && (screenState == UnknownEnum.Value_7 || screenState == UnknownEnum.Value_29 || screenState == UnknownEnum.Value_30 || screenState == UnknownEnum.Value_31 || screenState == UnknownEnum.Value_28 || screenState == UnknownEnum.Value_33))
{
    var _animationFrame = (((current_time / 400) % lengthAnimMonster) * sprite_get_number(spriteAnnouncementMonster[0])) / lengthAnimMonster;
    
    if (screenState != UnknownEnum.Value_7)
    {
        var _shdMonsterColor = global.color.red1;
        
        switch (screenState)
        {
            case UnknownEnum.Value_31:
                _shdMonsterColor = global.color.blue1;
                break;
            
            case UnknownEnum.Value_33:
                _shdMonsterColor = global.color.purple2;
                break;
            
            case UnknownEnum.Value_29:
                _shdMonsterColor = global.color.orange1;
                break;
            
            case UnknownEnum.Value_30:
                _shdMonsterColor = global.color.grey1;
                break;
            
            case UnknownEnum.Value_28:
                _shdMonsterColor = global.color.yellow1;
                break;
        }
        
        shader_set(shOverlay);
        shader_set_uniform_f(shader_get_uniform(shOverlay, "u_colour"), colour_get_red(_shdMonsterColor) / 255, colour_get_green(_shdMonsterColor) / 255, colour_get_blue(_shdMonsterColor) / 255, 1);
    }
    
    for (var _n = 0; _n < monsterTotal; _n++)
    {
        var _percentageCompletionLine = min(floor(_n / monsterByLine) + 1, monsterTotal / monsterByLine);
        _percentageCompletionLine -= floor(_n / monsterByLine);
        var _x = (objWidth - (spriteWMonster * (monsterByLine * _percentageCompletionLine))) / 2;
        _x += (spriteWMonster * (_n % monsterByLine));
        _x += spriteOffsetXMonster;
        var _y = (objHeight - (spriteHMonster * ceil(monsterTotal / monsterByLine))) / 2;
        _y += (spriteHMonster * floor(_n / monsterByLine));
        _y += spriteOffsetYMonster;
        draw_sprite(spriteAnnouncementMonster[_n], _animationFrame, _x, _y);
    }
    
    if (screenState != UnknownEnum.Value_7)
        shader_reset();
}
else if (screenState == UnknownEnum.Value_20 && (global.displayControllerAsset == UnknownEnum.Value_0 || (global.displayControllerAsset != UnknownEnum.Value_0 && number != 1)))
{
    part_system_drawit(tvParticlesSys);
}
else if (screenState == UnknownEnum.Value_21 && (global.displayControllerAsset == UnknownEnum.Value_0 || (global.displayControllerAsset != UnknownEnum.Value_0 && number != 3)))
{
    part_system_drawit(tvParticlesSys);
}

if (textToDraw != -1)
{
    if (typistActivated)
    {
        var _height = textToDraw.get_bbox_revealed(0, 0, typist).height;
        var _currentOffsetTextTo;
        
        if (_height < objHeight)
            _currentOffsetTextTo = 8;
        else
            _currentOffsetTextTo = ((8 - _height) + objHeight) - 7;
        
        typistCurrentOffset = lerp(typistCurrentOffset, _currentOffsetTextTo, 0.4);
        textToDraw.wrap(objWidth - 12).align(0, 0).draw(8, typistCurrentOffset, typist);
    }
    else
    {
        textToDraw.draw(objWidth / 2, objHeight / 2);
    }
}

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
var _transformRotate = matrix_multiply(_matrixToOrigin, _matrixRotate);
var _transformFinal = matrix_multiply(_transformRotate, _matrixTranslate);
matrix_set(2, _transformFinal);
shader_set(shCleanPixel);
shader_set_uniform_f(frame_size_uniform, objWidth, objHeight);
gpu_set_tex_filter(true);
tex = surface_get_texture(surfaceCrt);
vertex_submit(vBuffFace, pr_trianglestrip, tex);
gpu_set_tex_filter(false);
shader_reset();
matrix_set(2, matrix_build_identity());

enum UnknownEnum
{
    Value_0,
    Value_7 = 7,
    Value_20 = 20,
    Value_21,
    Value_28 = 28,
    Value_29,
    Value_30,
    Value_31,
    Value_33 = 33
}
