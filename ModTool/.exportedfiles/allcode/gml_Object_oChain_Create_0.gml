if (!variable_instance_exists(id, "token"))
    token = -4;

if (!variable_instance_exists(id, "chainNoise"))
    chainNoise = random(1000);

chainLength = sprite_get_height(sprite_index);
chainStartX = x;
chainStartY = y;
chainEndX = x;
chainEndY = y + chainLength;
chainAngleVelocity = 0;
chainAngle = -90;
image_angle = point_direction(chainEndX, chainEndY, chainStartX, chainStartY);
chainResistance = random_range(0.99, 0.995);
chainWindInc = 0.1;
chainWind = perlin_noise(chainNoise);
distanceTraveled = 0;
distanceToReachMax = random_range(20, 30);
