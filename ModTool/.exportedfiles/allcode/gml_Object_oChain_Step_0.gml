chainNoise += chainWindInc;
chainWind = perlin_noise(chainNoise) / 100;
var _chainAngleAcceleration = -0.2 * dcos(chainAngle);
chainAngleVelocity += (_chainAngleAcceleration + chainWind);
chainAngle += chainAngleVelocity;
chainAngleVelocity *= chainResistance;
distanceTraveled += abs(chainAngleVelocity);

if (distanceTraveled > distanceToReachMax && abs(chainAngleVelocity) > 0.3)
{
    distanceTraveled = 0;
    var _sound = choose(sndChain_01, sndChain_02, sndChain_03, sndChain_04, sndChain_05, sndChain_06);
    
    if (!audio_is_playing(_sound))
        audio_play_sound(_sound, 1, false);
}

chainEndX = chainStartX + lengthdir_x(chainLength, chainAngle);
chainEndY = chainStartY + lengthdir_y(chainLength, chainAngle);
image_angle = point_direction(chainEndX, chainEndY, chainStartX, chainStartY);

with (token)
{
    x = other.chainEndX;
    y = other.chainEndY;
    xDraw = x;
    yDraw = y;
    image_angle = other.image_angle - 90;
}
