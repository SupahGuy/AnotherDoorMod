with (oMainScene)
    switch_light(true);

dialogueAlignY = UnknownEnum.Value_0;
dialogueAlignX = UnknownEnum.Value_2;
dialogueSound = UnknownEnum.Value_2;
dialogueClose = UnknownEnum.Value_1;
timerBios = new myTimer(id, 2, 0, 1);
timerTvNoise = new myTimer(id, 3, 0, 1);

welcome_another_door = function()
{
    global.tvState.welcome(undefined, 2);
    global.tvState.suspicious(2);
};

narrator_laughing_alone = function()
{
    global.tvState.laughing(6);
};

narrator_laughing = function()
{
    global.tvState.laughing(6);
    global.tvState.noise(undefined, 6);
};

narrator_suspicious = function()
{
    global.tvState.suspicious(2);
    global.tvState.noise(undefined, 2);
};

var _introductionMusicCallback = function()
{
    global.nextMusic = Another_Door;
    global.audio.fade_in();
    
    if (part_system_exists(global.particlesSys))
    {
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiBlue, global.particles.ptConfettiBlue, -2);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiRed, global.particles.ptConfettiRed, -2);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiYellow, global.particles.ptConfettiYellow, -2);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiGreen, global.particles.ptConfettiGreen, -2);
    }
};

_stopParticles = function()
{
    if (part_system_exists(global.particlesSys))
    {
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiBlue, global.particles.ptConfettiBlue, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiRed, global.particles.ptConfettiRed, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiYellow, global.particles.ptConfettiYellow, 0);
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiGreen, global.particles.ptConfettiGreen, 0);
    }
};

_launchParticles1 = function()
{
    _stopParticles();
    
    if (part_system_exists(global.particlesSys))
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiBlue, global.particles.ptConfettiBlue, 4);
};

_launchParticles2 = function()
{
    _stopParticles();
    
    if (part_system_exists(global.particlesSys))
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiYellow, global.particles.ptConfettiYellow, 4);
};

_launchParticles3 = function()
{
    _stopParticles();
    
    if (part_system_exists(global.particlesSys))
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiGreen, global.particles.ptConfettiGreen, 4);
};

_launchParticles4 = function()
{
    _stopParticles();
    
    if (part_system_exists(global.particlesSys))
        part_emitter_stream(global.particlesSys, global.particles.partEmitConfettiRed, global.particles.ptConfettiRed, 4);
};

if (global.isTutorialDone)
    firstDialogueList = [new cDialogue("narrator._introduction_7", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, _introductionMusicCallback, undefined, [_stopParticles, narrator_suspicious])];
else
    firstDialogueList = [new cDialogue("narrator._introduction_1", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, [narrator_laughing_alone]), new cDialogue("narrator._introduction_2", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_3", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, narrator_laughing), new cDialogue("narrator._introduction_4", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, [_introductionMusicCallback, welcome_another_door]), new cDialogue("narrator._introduction_5", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_6", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_7", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, undefined, undefined, [_stopParticles, narrator_suspicious])];

set_list_of_tooltip(firstDialogueList);

callbackP1 = function()
{
    global.tvState.p1(undefined, [2]);
    global.tvState.suspicious(2);
    _launchParticles1();
};

callbackP2 = function()
{
    global.tvState.p2(undefined, [2]);
    global.tvState.suspicious(2);
    _launchParticles2();
};

callbackP3 = function()
{
    global.tvState.p3(undefined, [2]);
    global.tvState.suspicious(2);
    _launchParticles3();
};

callbackP4 = function()
{
    global.tvState.p4(undefined, [2]);
    global.tvState.suspicious(2);
    _launchParticles4();
};

tricycleTv = function()
{
    global.tvState.reward();
    global.tvState.suspicious(2);
};

narrator_top = function()
{
    global.tvState.suspicious(2);
    global.tvState.noise(undefined, 2);
};

monsters = function()
{
    global.tvState.noise(undefined, [2, 6]);
    global.tvState.suspicious(2);
    global.tvState.monsters_announcement(6);
};

exit_door = function()
{
    global.doorExit.openDoor(50);
    global.tvState.noise(undefined, [2]);
    global.tvState.suspicious(2);
    global.tvState.monsters_announcement(6);
    global.tvState.rule_exit([0, 1, 5]);
};

continue_door = function()
{
    global.doorExit.closeDoor();
    global.doorContinue.openDoor(50);
    global.tvState.noise(undefined, [2]);
    global.tvState.suspicious(2);
    global.tvState.monsters_announcement(6);
    global.tvState.rule_continue([3, 4, 7]);
};

both_door = function()
{
    global.doorContinue.closeDoor();
    global.tvState.noise(undefined, [2]);
    global.tvState.suspicious(2);
    global.tvState.monsters_announcement(6);
};

rule_gem = function()
{
    global.tvState.rule_gem(undefined, 6);
    global.tvState.laughing(6);
};

secondDialogueList = [new cDialogue("narrator._introduction_8", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, undefined, undefined, callbackP1), new cDialogue("narrator._introduction_13", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_14", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, tricycleTv), new cDialogue("narrator._introduction_15", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_16", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, narrator_top), new cDialogue("narrator._introduction_17", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue($"narrator._introduction_18#{global.loopManager.get_current_door_length()}", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, monsters), new cDialogue("narrator._introduction_19", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, exit_door), new cDialogue("narrator._introduction_20", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_21", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, continue_door), new cDialogue("narrator._introduction_22", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose), new cDialogue("narrator._introduction_23", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, both_door)];

add_dialogue_character = function()
{
    var _startingIndex = 1;
    
    for (var _i = 0; _i < global.playersCount; _i++)
    {
        var _callback;
        
        if (_i == (global.playersCount - 1))
            _callback = [rule_gem, _stopParticles];
        else if (_i == 0)
            _callback = callbackP2;
        else if (_i == 1)
            _callback = callbackP3;
        else if (_i == 2)
            _callback = callbackP4;
        
        var _name = string_concat($"[p{_i}]", global.playersManager.get_name(_i), "[/c]");
        array_insert(secondDialogueList, _startingIndex + _i, new cDialogue($"narrator._introduction_{9 + _i}#{_name}", dialogueAlignX, dialogueAlignY, dialogueSound, dialogueClose, undefined, undefined, undefined, _callback));
    }
    
    set_list_of_tooltip(secondDialogueList);
    instance_create_depth(room_width / 2, room_height - 32, 0, oDialogue, secondDialogueList[0]);
};

depth = global.depthManager.get_depth("intro");
global.emStamp = part_emitter_create(global.particlesSys);
stampsW = sprite_get_width(sprCursorStamp1);
stampsH = sprite_get_height(sprCursorStamp1);

send_stamp = function(arg0, arg1, arg2, arg3)
{
    if (global.networkingManager.isNetworkGame)
        global.networkingManager.send_stamp(arg0, arg1, arg2, arg3);
    else
        add_stamp(arg0, arg1, arg2, arg3);
};

add_stamp = function(arg0, arg1, arg2, arg3)
{
    var _action = global.playersManager.get_action(arg2);
    
    if ((_action == UnknownEnum.Value_3 && arg3 == 0) || (_action == UnknownEnum.Value_4 && arg3 == 1) || (_action == UnknownEnum.Value_5 && arg3 == 2) || (_action == UnknownEnum.Value_6 && arg3 == 3) || (_action == UnknownEnum.Value_7 && arg3 == 4) || (_action == UnknownEnum.Value_8 && arg3 == 5) || _action == UnknownEnum.Value_0)
    {
        audio_play_sound(sndStamp, 1, false, undefined, undefined, random_range(0.9, 1.1));
        var _theDepth = depth - 10;
        
        for (var _s = 0; _s < instance_number(oStampAnimated); _s++)
        {
            var _id = instance_find(oStampAnimated, _s);
            
            if (_id.number == arg2)
                _theDepth--;
        }
        
        instance_create_depth(arg0, round(arg1), _theDepth, oStampAnimated, 
        {
            sprite_index: asset_get_index($"sprStampAnimated{arg2 + 1}"),
            number: arg2
        });
        arg0 += (stampsW / 2 / global.zoom);
        arg1 += (stampsH / 2 / global.zoom);
        
        for (var _i = 0; _i < irandom_range(0, 4); _i++)
        {
            var _coord = get_coordinates_around_point(arg0, arg1, stampsW, stampsH, undefined, "edge-2-circle");
            var _dir = point_direction(arg0, arg1, _coord.x, _coord.y);
            part_type_direction(global.particles.partStamp, _dir, _dir, 0, 0);
            part_type_sprite(global.particles.partStamp, asset_get_index("sprStampDropAnimated" + string(arg2 + 1)), true, true, false);
            part_emitter_region(global.particlesSys, global.emStamp, _coord.x, _coord.x, _coord.y, _coord.y, 3, 0);
            part_emitter_burst(global.particlesSys, global.emStamp, global.particles.partStamp, 1);
        }
    }
};

generate_characters = function()
{
    for (var _p = 0; _p < global.playersCount; _p++)
    {
        var _charToAttribute = 0;
        
        switch (global.playersManager.get_action(_p))
        {
            case UnknownEnum.Value_3:
            default:
                _charToAttribute = 0;
                break;
            
            case UnknownEnum.Value_4:
                _charToAttribute = 1;
                break;
            
            case UnknownEnum.Value_5:
                _charToAttribute = 2;
                break;
            
            case UnknownEnum.Value_6:
                _charToAttribute = 3;
                break;
            
            case UnknownEnum.Value_7:
                _charToAttribute = 4;
                break;
            
            case UnknownEnum.Value_8:
                _charToAttribute = 5;
                break;
        }
        
        var _classList = global.mercenaries[_charToAttribute];
        _classList.number = _p;
        var _sprProfile = asset_get_index("sprProfileCharacter");
        var _sprProfileBgW = sprite_get_width(_sprProfile);
        var _sprProfileBgH = sprite_get_height(_sprProfile);
        var _x = _p * _sprProfileBgW;
        var _totalSize = global.playersCount * _sprProfileBgW;
        _x += round((global.gameWidth - _totalSize) / 2);
        var _y = global.gameHeight - _sprProfileBgH - 4;
        var _character = instance_create_depth(_x, _y, global.depthManager.get_depth("fighters"), oEntitie, _classList);
        global.playersManager.set_character(_p, _character);
        var _token = instance_create_depth(_character.xUi + global.uiPos.tokenInUi.x, _character.yUi + global.uiPos.tokenInUi.y, global.depthManager.get_depth("token"), oToken, 
        {
            number: _p,
            theType: UnknownEnum.Value_14
        });
        _character.token = _token;
        _character.token.set_disabled(true);
        global.playersManager.set_name(_p, _classList.className);
    }
};

bookTimer = new myTimer(id, 2, undefined, undefined, "ease-in-out");
bookFinishedTimerActive = false;
bookFinishedTimer = new myTimer(id, 2, undefined, undefined, "ease-in-out");
bookOffsetYMax = (room_height / 2) + (sprite_get_height(sprBookCharacters) / 2);
bookOffsetY = bookOffsetYMax + (cos(current_time / 750) * 4);
bookPositionList = [[164, 110], [234, 110], [338, 110], [408, 110], [164, 190], [234, 190]];
stampToDraw = [];
state = undefined;
statePrev = undefined;
stateNext = UnknownEnum.Value_1;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_14 = 14
}
