xInit = x;
yInit = y;
offsetCloverX = 0;
offsetCloverY = 0;
distanceMax = 40;
offsetMouseX = 0;
offsetMouseY = 0;
particlesSystem = part_system_create();
part_system_automatic_draw(particlesSystem, false);
part_system_depth(particlesSystem, global.depthManager.get_depth("clover"));
particlesType = part_type_create();
part_type_shape(particlesType, 0);
part_type_size(particlesType, 1, 1, 0, 0);
part_type_scale(particlesType, 1, 1);
part_type_orientation(particlesType, 0, 0, 0, 0, 0);
part_type_color3(particlesType, global.color.yellow1, global.color.green1, global.color.green2);
part_type_alpha3(particlesType, 1, 1, 0);
part_type_blend(particlesType, 0);
part_type_life(particlesType, 32, 48);
part_type_speed(particlesType, 0.25, 0.75, 0, 0);
part_type_direction(particlesType, 90, 90, 0, 0);
part_type_gravity(particlesType, 0, 0);
particlesEmmiter = part_emitter_create(particlesSystem);
part_emitter_region(particlesSystem, particlesEmmiter, x - 8, x + 8, y - 8, y + 8, 1, 0);
add_to_clean_up(particlesSystem, UnknownEnum.Value_4);
add_to_clean_up(particlesEmmiter, UnknownEnum.Value_5, particlesSystem);
add_to_clean_up(particlesType, UnknownEnum.Value_6);

enum UnknownEnum
{
    Value_4 = 4,
    Value_5,
    Value_6
}
