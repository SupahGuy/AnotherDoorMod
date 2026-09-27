if (room == roomStage)
{
    upscale_pixelart_start();
    
    if (cardIdLand != -4 && instance_exists(cardIdLand))
    {
        if (cardIdLand.x != cardIdLand.xprevious)
            xDraw += (cardIdLand.x - cardIdLand.xprevious);
        
        if (cardIdLand.y != cardIdLand.yprevious)
            yDraw += (cardIdLand.y - cardIdLand.yprevious);
        
        var _cardCenterX = (cardIdLand.x + (cardIdLand.width / 2)) - cardIdLand.sprite_xoffset;
        var _cardCenterY = (cardIdLand.y + (cardIdLand.height / 2)) - cardIdLand.sprite_yoffset;
        var _cardAngle = cardIdLand.image_angle + cardIdLand.wiggle.get_angle();
        var _coordinateRelativeCard = getCoordinatesRotatedPoint(_cardCenterX + (_cardCenterX - xDraw), _cardCenterY + (_cardCenterY - yDraw), _cardCenterX, _cardCenterY, -_cardAngle);
        draw_sprite_ext(sprite_index, image_index, _coordinateRelativeCard[0], _coordinateRelativeCard[1], image_xscale, image_yscale, _cardAngle, image_blend, image_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, xDraw, yDraw, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    
    upscale_pixelart_end();
}
else if (room == roomStart)
{
    upscale_pixelart_start();
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    upscale_pixelart_end();
}
