if (!is_visible())
    exit;

event_inherited();
upscale_pixelart_start();

if (radioChecked)
    draw_sprite(sprButtonRadioElementActive, 0, x + (padLeft / 2), y + (theHeight / 2));
else
    draw_sprite(sprButtonRadioElement, 0, x + (padLeft / 2), y + (theHeight / 2));

upscale_pixelart_end();
labelDraw.draw((x + padLeft) * global.zoom, (y + (theHeight / 2)) * global.zoom);
