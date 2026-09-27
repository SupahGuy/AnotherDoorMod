upscale_pixelart_start();
draw_self();
upscale_pixelart_end();

if (!surface_exists(surface_mirror))
    surface_mirror = surface_create(sprite_width * global.zoom, sprite_height * global.zoom);

surface_set_target(surface_mirror);
draw_clear_alpha(c_black, 0);
upscale_pixelart_start();

with (oPendulum)
    draw_sprite_ext(sprite_index, 0, (x - (other.x - sprite_get_xoffset(other.sprite_index))) + 4, y - (other.y - sprite_get_yoffset(other.sprite_index)) - 4, 1, 1, image_angle, c_white, 0.75);

upscale_pixelart_end();
surface_reset_target();

if (cursorColliding)
{
    if (!surface_exists(surface_mirror2))
        surface_mirror2 = surface_create(sprite_width * global.zoom, sprite_height * global.zoom);
    
    surface_set_target(surface_mirror2);
    draw_clear_alpha(c_black, 0);
    upscale_pixelart_start();
    
    with (oCursor)
        draw_sprite_ext(sprite_index, image_index, (x - (other.x - sprite_get_xoffset(other.sprite_index))) + 4, y - (other.y - sprite_get_yoffset(other.sprite_index)) - 4, 1, 1, 0, c_white, 0.75);
    
    gpu_set_blendmode(bm_subtract);
    
    with (oPendulum)
    {
        draw_sprite_ext(sprite_index, 1, x - (other.x - sprite_get_xoffset(other.sprite_index)), y - (other.y - sprite_get_yoffset(other.sprite_index)), 1, 1, image_angle, c_white, 0.75);
        draw_sprite_ext(sprite_index, 1, (x - (other.x - sprite_get_xoffset(other.sprite_index))) + 4, y - (other.y - sprite_get_yoffset(other.sprite_index)) - 4, 1, 1, image_angle, c_white, 1);
    }
    
    gpu_set_blendmode(bm_normal);
    upscale_pixelart_end();
    surface_reset_target();
}

draw_surface(surface_mirror, (x - (sprite_width / 2)) * global.zoom, (y - (sprite_height / 2)) * global.zoom);

if (cursorColliding)
    draw_surface(surface_mirror2, (x - (sprite_width / 2)) * global.zoom, (y - (sprite_height / 2)) * global.zoom);
