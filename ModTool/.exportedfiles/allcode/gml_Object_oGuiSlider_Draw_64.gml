event_inherited();

if (!is_visible())
    exit;

upscale_pixelart_start();
draw_sprite(sprSliderDot, 0, x + sliderDotX, y + 2);
upscale_pixelart_end();
valueTxt.draw((x + get_width()) * global.zoom, y * global.zoom);
