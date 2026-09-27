event_inherited();
wiggle.step();

if (is_hover_enter())
    wiggle.run();

offsetJiggleItemY = cos((cardNumber - 1) + (current_time * 0.002));
offsetJiggleY = cos(cardNumber + (current_time * 0.002)) * 2;
y = yTo + offsetJiggleY + offsetMoveUpY;
x = xTo;
var _angleTo = 0;

switch (state)
{
    case UnknownEnum.Value_0:
        break;
    
    case UnknownEnum.Value_1:
        if (statePrev != state)
        {
            set_disabled(false);
            show();
            
            if (global.fightManager.encounter.structMonster != global.monsters.babayaga)
                animMoveUp.run();
        }
        
        if (animMoveUp.is_running())
        {
            offsetMoveUpY = map_value(animMoveUp.get_cur_length_normalize(), 0, 1, 16, 0);
            image_alpha = animMoveUp.get_cur_length_normalize();
        }
        
        if (animMoveUp.is_finished())
        {
            offsetMoveUpY = 0;
            image_alpha = 1;
        }
        
        with (oCursor)
        {
            var _char = global.playersManager.get_characters(number);
            var _withDefaultToken = global.fightManager.state == UnknownEnum.Value_5;
            var _withLostInTimeToken = _char.token.theType == UnknownEnum.Value_3;
            var _isInFight = _char.isInFight;
            
            if ((_withDefaultToken || _withLostInTimeToken) && !other.is_disabled() && _isInFight)
            {
                var _verbPressed = false;
                
                if (InputPlayerUsingKbm(number))
                    _verbPressed = other.has_number_clicked(number);
                else if (InputPlayerUsingGamepad(number))
                    _verbPressed = is_verb_active(other.gamepadBtnLinked, UnknownEnum.Value_1);
                
                var _validMushroomInput = _verbPressed && !global.playersManager.has_acted(number) && other.cardType == UnknownEnum.Value_4 && _char.effect_index(global.effect.hallucinogenicVision) != -1;
                var _validInputDefault = _verbPressed && !global.playersManager.has_acted(number) && (other.cardType == UnknownEnum.Value_1 || other.cardType == UnknownEnum.Value_2 || other.cardType == UnknownEnum.Value_9);
                
                if (_validInputDefault || _validMushroomInput)
                    global.playersManager.send_action(number, other.id.actionType, true);
            }
        }
        
        break;
    
    case UnknownEnum.Value_3:
        global.cardExecutionManager.loop(id, nbrCharLinked);
        
        if (global.waitingList.is_waiting_list_empty() && global.cardExecutionManager.is_finished())
            stateNext = UnknownEnum.Value_4;
        
        break;
    
    case UnknownEnum.Value_6:
    case UnknownEnum.Value_10:
        if (statePrev != state)
        {
            animAttackMomentum.reset();
            animAttackMomentum.run();
            global.waitingList.set(id);
        }
        
        if (animAttackMomentum.is_running())
            yTo = map_value(animAttackMomentum.get_cur_length_normalize(), 0, 1, yAnimFrom, yAnimTo);
        
        if (animAttackMomentum.is_finished())
        {
            animAttackMomentum.reset();
            
            if (state == UnknownEnum.Value_6)
                stateNext = UnknownEnum.Value_7;
            else
                stateNext = UnknownEnum.Value_11;
        }
        
        break;
    
    case UnknownEnum.Value_7:
        if (statePrev != state)
        {
            animAttackHit.run();
            xAnimFrom = xTo;
            yAnimFrom = yTo;
            xAnimTo = (animTarget.xUi + 33) - (width / 2);
            yAnimTo = (animTarget.yUi + 24) - height;
        }
        
        if (animAttackHit.is_running())
        {
            xTo = map_value(animAttackHit.get_cur_length_normalize(), 0, 1, xAnimFrom, xAnimTo);
            yTo = map_value(animAttackHit.get_cur_length_normalize(), 0, 1, yAnimFrom, yAnimTo);
            _angleTo = sign(xAnimFrom - xAnimTo) * 64;
        }
        
        if (animAttackHit.is_finished())
        {
            animAttackHit.reset();
            stateNext = UnknownEnum.Value_9;
            
            if (animTarget != -4 && animDamageAmount != -1)
            {
                for (var _a = 0; _a < animDamageTime; _a++)
                    animTarget.receive_damage(true, animDamageAmount);
            }
            else
            {
                animTarget.miss();
            }
        }
        
        break;
    
    case UnknownEnum.Value_9:
        if (statePrev != state)
            animAttackReset.run();
        
        if (animAttackReset.is_running())
        {
            xTo = map_value(animAttackReset.get_cur_length_normalize(), 0, 1, xAnimTo, xInit);
            yTo = map_value(animAttackReset.get_cur_length_normalize(), 0, 1, yAnimTo, yInit);
        }
        
        if (animAttackReset.is_finished())
        {
            animAttackReset.reset();
            global.waitingList.remove(id);
            stateNext = UnknownEnum.Value_3;
        }
        
        break;
    
    case UnknownEnum.Value_4:
        if (statePrev != state)
            depth = global.depthManager.get_depth("cards");
        
        break;
    
    case UnknownEnum.Value_11:
        if (statePrev != state)
        {
            animEffectHit.run();
            wiggle.run();
            
            if (animTarget != -4 && animEffectStack != -1)
                animTarget.receive_effect(animEffect, animEffectStack, launchEffectX, launchEffectY);
            else
                animTarget.miss();
        }
        
        if (animEffectHit.is_finished())
        {
            animEffectHit.reset();
            stateNext = UnknownEnum.Value_9;
        }
        
        break;
    
    case UnknownEnum.Value_5:
        if (statePrev != state)
        {
            if (image_alpha == 0)
                instance_destroy();
            else
                timerDestroy.run();
        }
        
        if (timerDestroy.is_running() || timerDestroy.is_finished())
            image_alpha = 1 - timerDestroy.get_cur_length_normalize();
        
        if (timerDestroy.is_finished())
            instance_destroy();
        
        break;
}

image_angle = lerp(image_angle, _angleTo, 0.1);
statePrev = state;
state = stateNext;

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
    Value_9 = 9,
    Value_10,
    Value_11
}
