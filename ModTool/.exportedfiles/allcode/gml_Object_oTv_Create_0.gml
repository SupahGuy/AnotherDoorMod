depth = 0;
screenState = undefined;
screenStatePrev = undefined;
screenStateNext = UnknownEnum.Value_17;
screenAfterTurnOn = UnknownEnum.Value_22;
screenFromCallback = undefined;
theCallbackTimer = new myTimer(id, random_range(0.1, 0.3), undefined, 1);

callbackSwitchScreen = function()
{
    screenStateNext = screenFromCallback;
};

spriteX = round(objWidth / 2);
spriteY = round(objHeight / 2);
image_xscale = 1;
image_yscale = 1;
spriteToDraw = -1;
colorToDraw = global.color.blue6;
typistActivated = false;
typist = scribble_typist();
typist.in(1 * global.dialogueTextSpeed, 0);
textToDraw = -1;
textLabel = "";
textScale = 1;

if (global.currentLanguage == 3)
{
    textFont = "ftFusionJP";
    textTitleFont = "ftFusionJPTitle";
}
else if (global.currentLanguage == 4)
{
    textFont = "ftFusionSC";
    textTitleFont = "ftFusionSCTitle";
}
else
{
    textFont = "ftMonobit";
    textTitleFont = "ftAlkhemikal";
}

textAlignH = 1;
textAlignV = 1;
typistCurrentOffset = 8;
textColor = global.color.grey8;
image_index = 0;
image_speed = 1;

reset_var_to_draw = function()
{
    spriteToDraw = -1;
    spriteX = round(objWidth / 2);
    spriteY = round(objHeight / 2);
    image_xscale = 1;
    image_yscale = 1;
    colorToDraw = global.color.blue6;
    typistActivated = false;
    typist.in(1 * global.dialogueTextSpeed, 0);
    typist.reset();
    textToDraw = -1;
    textLabel = "";
    textScale = 1;
    textColor = global.color.grey1;
    
    if (global.currentLanguage == 3)
    {
        textFont = "ftFusionJP";
        textTitleFont = "ftFusionJPTitle";
    }
    else if (global.currentLanguage == 4)
    {
        textFont = "ftFusionSC";
        textTitleFont = "ftFusionSCTitle";
    }
    else if (global.currentLanguage == 7)
    {
        textFont = "ftPixeloidSans";
        textTitleFont = "ftPixeloidSans";
    }
    else
    {
        textFont = "ftMonobit";
        textTitleFont = "ftAlkhemikal";
    }
    
    textAlignH = 1;
    textAlignV = 1;
    typistCurrentOffset = 8;
    image_index = 0;
    image_speed = 1;
    part_emitter_stream(tvParticlesSys, tvEmmiter, pTvGemParticle, 0);
};

turnOnTimer = new myTimer(id, irandom_range(0.1, 0.4), undefined, 1);
u_resolution = shader_get_uniform(shTest, "u_resolution");
xInit = x;
yInit = y;
zInit = z1;
numberOfGemParticles = -60;
tvParticlesSys = part_system_create();
tvEmmiter = part_emitter_create(tvParticlesSys);
part_system_automatic_draw(tvParticlesSys, false);
part_system_depth(tvParticlesSys, depth);
pTvGemParticle = part_type_create();
part_type_sprite(pTvGemParticle, sprTvRewardGem, false, true, true);
part_type_size(pTvGemParticle, 1, 1, 0, 0);
part_type_scale(pTvGemParticle, 1, 1);
part_type_orientation(pTvGemParticle, 0, 0, 0, 0, 0);
part_type_alpha1(pTvGemParticle, 1);
part_type_blend(pTvGemParticle, false);
part_type_life(pTvGemParticle, 250, 250);
part_type_speed(pTvGemParticle, 0, 0, 0, 0);
part_type_direction(pTvGemParticle, 0, 0, 0, 0);
part_type_gravity(pTvGemParticle, 0.025, 270);
part_emitter_region(tvParticlesSys, tvEmmiter, 0, objWidth, -24, -24, 0, 0);
add_to_clean_up(tvParticlesSys, UnknownEnum.Value_4);
add_to_clean_up(tvEmmiter, UnknownEnum.Value_5, tvParticlesSys);
add_to_clean_up(pTvGemParticle, UnknownEnum.Value_6);

if (number == 6)
{
    monsterTotal = 0;
    monsterByLine = 4;
    spriteAnnouncementMonster = [sprTvMonsterForest];
    gSpeedMonster = game_get_speed(gamespeed_fps);
    sSpeedMonster = sprite_get_speed(spriteAnnouncementMonster[0]);
    spriteWMonster = sprite_get_width(spriteAnnouncementMonster[0]);
    spriteOffsetXMonster = sprite_get_xoffset(spriteAnnouncementMonster[0]);
    spriteHMonster = sprite_get_height(spriteAnnouncementMonster[0]);
    spriteOffsetYMonster = sprite_get_yoffset(spriteAnnouncementMonster[0]);
    lengthAnimMonster = gSpeedMonster / sSpeedMonster / 10;
    
    update_monsters_number = function()
    {
        monsterTotal = global.loopManager.get_current_door_length();
        
        switch (monsterTotal)
        {
            case 1:
            case 2:
            case 3:
            case 4:
            case 7:
            case 8:
                monsterByLine = 4;
                break;
            
            case 5:
            case 6:
                monsterByLine = 3;
                break;
            
            default:
                monsterByLine = 4;
                break;
        }
        
        spriteAnnouncementMonster = [];
        
        for (var _d = 0; _d < monsterTotal; _d++)
        {
            switch (global.loopManager.get_monster_at_position(_d).category)
            {
                case UnknownEnum.Value_0:
                    if (global.loopManager.get_monster_at_position(_d) == global.monsters.statueForest)
                        spriteAnnouncementMonster[_d] = sprTvMonsterStatue;
                    else
                        spriteAnnouncementMonster[_d] = sprTvMonsterForest;
                    
                    break;
                
                case UnknownEnum.Value_1:
                    spriteAnnouncementMonster[_d] = sprTvMonsterCity;
                    break;
                
                case UnknownEnum.Value_6:
                    spriteAnnouncementMonster[_d] = sprTvMonsterFaun;
                    break;
                
                case UnknownEnum.Value_7:
                    spriteAnnouncementMonster[_d] = sprTvMonsterShop;
                    break;
                
                case UnknownEnum.Value_4:
                    spriteAnnouncementMonster[_d] = sprTvMonsterHenry;
                    break;
                
                case UnknownEnum.Value_5:
                    spriteAnnouncementMonster[_d] = sprTvMonsterBaba;
                    break;
                
                case UnknownEnum.Value_3:
                    spriteAnnouncementMonster[_d] = sprTvMonsterHeal;
                    break;
                
                default:
                    spriteAnnouncementMonster[_d] = sprTvMonsterForest;
                    break;
            }
        }
    };
}

vBuffFace = vertex_create_buffer();
textureFace = sprite_get_texture(sprAise, 0);
vertex_begin(vBuffFace, global.vFormat);
vertex_create_face(vBuffFace, new Vec3(x, y, z1), new Vec3(x + objWidth, y, z2), new Vec3(x + objWidth, y + objHeight, z3), new Vec3(x, y + objHeight, z4), -1, 1, objWidth, objHeight);
vertex_end(vBuffFace);
vertex_freeze(vBuffFace);
surfTv = -1;
surfaceCrt = -1;
tex = surface_get_texture(surfTv);
frame_size_uniform = shader_get_uniform(shCleanPixel, "frame_size");
whichOne = -1;
displaceValue = 1;
p1x = 0;
p1y = 0;
p1z = 0;
p2x = 0;
p2y = 0;
p2z = 0;
p3x = 0;
p3y = 0;
p3z = 0;
p4x = 0;
p4y = 0;
p4z = 0;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_17 = 17,
    Value_22 = 22
}
