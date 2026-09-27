if (!is_visible())
    exit;

upscale_pixelart_start();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
upscale_pixelart_end();
