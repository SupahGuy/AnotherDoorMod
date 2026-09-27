upscale_pixelart_start(((x + (width / 2)) - sprite_xoffset) * global.zoom, ((y + (height / 2)) - sprite_yoffset) * global.zoom, 0, 0, 0, wiggle.get_angle());

if (!firstCreationVisual)
{
    var _offsetX = 0;
    var _offsetY = 0;
    
    if (vfxActivation)
    {
        var _int = (cos(current_time / 150) + 1) / 2;
        pNoiseActivated += pNoiseInc;
        _offsetX = perlin_noise(pNoiseActivated) * 2 * _int;
        _offsetY = perlin_noise(pNoiseActivated + 100) * 2 * _int;
    }
    
    draw_sprite(sprite_index, 0, _offsetX, _offsetY);
}

upscale_pixelart_end();
var wm = matrix_get(2);
matrix_set(2, matrix_build(((x + (width / 2)) - sprite_xoffset) * global.zoom, ((y + (height / 2)) - sprite_yoffset) * global.zoom, 0, 0, 0, wiggle.get_angle(), 1, 1, 1));

if (!firstCreationVisual)
{
    if (stackVisual > 1)
        stackTxt.draw(8 * global.zoom, -12 * global.zoom);
}

matrix_set(2, wm);
