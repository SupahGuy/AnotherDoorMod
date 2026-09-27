if (live_call())
    return global.live_result;

if (false && room == roomStage)
{
    upscale_pixelart_start();
    draw_rectangle(16, 16, 40, 40, true);
    draw_sprite(sprUniqueGiftSmall, 0, 28, 28);
    draw_rectangle(16, 48, 40, 72, true);
    draw_sprite(sprExplosionSmall, 0, 28, 60);
    draw_rectangle(16, 80, 40, 104, true);
    draw_sprite(sprBrokenShieldSmall, 0, 28, 92);
    draw_rectangle(16, 112, 40, 136, true);
    draw_sprite(sprHeartSmall, 0, 28, 124);
    draw_rectangle(16, 144, 40, 168, true);
    draw_sprite(sprGemSmall, 0, 28, 156);
    draw_rectangle(16, 176, 40, 200, true);
    draw_sprite(sprTrappedSmall, 0, 28, 188);
    upscale_pixelart_end();
    exit;
    scribble($"Seed: {global.seed_number}").draw(200, 50);
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        for (var _j = 0; _j < array_length(global.playersManager.get_characters(_i).hpPreviousTurn); _j++)
        {
            var _e = global.playersManager.get_characters(_i).hpPreviousTurn[_j];
            
            if ((global.fightManager.get_fight_counter() - 10) == _j)
                scribble(_e).draw(110 + (_i * 50), 100 + (_j * 16));
            else
                scribble(_e).draw(100 + (_i * 50), 100 + (_j * 16));
        }
    }
}
