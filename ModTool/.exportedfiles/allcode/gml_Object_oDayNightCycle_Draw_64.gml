if (room == roomStage)
{
    upscale_pixelart_start();
    draw_sprite(currentSprite, 0, 0, 0);
    draw_sprite(sprRoundEmpty, 0, 25, 8);
    
    switch (global.runCounter)
    {
        case 2:
            draw_sprite(sprRoundFull, 0, 25, 27);
        
        case 1:
            draw_sprite(sprRoundFull, 0, 33, 19);
        
        case 0:
            draw_sprite(sprRoundFull, 0, 34, 8);
            break;
    }
    
    upscale_pixelart_end();
}
