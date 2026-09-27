function cEffect(arg0, arg1, arg2, arg3, arg4 = UnknownEnum.Value_0, arg5 = -1, arg6 = -1, arg7 = sprItemPlaceholder) constructor
{
    name = arg0;
    desc = arg1;
    sprite = arg2;
    condition = arg3;
    effectRarity = arg4;
    amount = is_array(arg5) ? arg5 : [arg5];
    chance = arg6;
    doesChanceAddUp = (amount == [-1]) ? true : false;
    spriteItemLinked = arg7;
    stack = 1;
    linkedEffectTooltip = [];
    structName = "";
}

global.effect = {};

function create_s_effect()
{
    global.effect = 
    {
        allPoisonToGem: new cEffect("", "", sprMaskDisabled, [UnknownEnum.Value_0], undefined, 1),
        antidote: new cEffect("antidote", "antidote", sprMaskDisabled, [UnknownEnum.Value_0], undefined, 5),
        attack: new cEffect("effect._attack", "effect._attackDesc", sprMaskDisabled, [UnknownEnum.Value_0]),
        attackMaybeSheep: new cEffect("attackMaybeSheep", "attackMaybeSheepDesc", sprMaskDisabled, [UnknownEnum.Value_0], undefined, 5),
        attackMultiple: new cEffect("attackMultiple", "attackMultiple", sprMaskDisabled, [UnknownEnum.Value_0]),
        beeehToGem: new cEffect("beeehToGem", "beeehToGem", sprMaskDisabled, [UnknownEnum.Value_0], undefined, 1),
        beeehToHeal: new cEffect("beeehToHeal", "beeehToHeal", sprMaskDisabled, [UnknownEnum.Value_0], undefined, 10),
        convertHPRandomized: new cEffect("convertHPRandomized", "convertHPRandomized", sprMaskDisabled, [UnknownEnum.Value_0]),
        commonPot: new cEffect("commonPot", "commonPot", sprMaskDisabled, [UnknownEnum.Value_0]),
        deleteBeeeh: new cEffect("deleteBeeeh", "deleteBeeeh", sprMaskDisabled, [UnknownEnum.Value_0]),
        deleteRandomEffect: new cEffect("deleteRandomEffect", "deleteRandomEffect", sprMaskDisabled, [UnknownEnum.Value_0]),
        deleteMother: new cEffect("deleteMother", "deleteMother", sprMaskDisabled, [UnknownEnum.Value_0]),
        effectToDamage: new cEffect("effectToDamage", "effectToDamage", sprMaskDisabled, [UnknownEnum.Value_0]),
        effectToGem: new cEffect("effectToGem", "effectToGem", sprMaskDisabled, [UnknownEnum.Value_0]),
        fountainFilled: new cEffect("fountainFilled", "fountainFilled", sprMaskDisabled, [UnknownEnum.Value_0]),
        gem: new cEffect("effect._gem", "effect._gemDesc", sprMaskDisabled, [UnknownEnum.Value_0]),
        heal: new cEffect("effect._heal", "effect._healDesc", sprMaskDisabled, [UnknownEnum.Value_0]),
        healMultiple: new cEffect("healMultiple", "healMultiple", sprMaskDisabled, [UnknownEnum.Value_0]),
        healSoft: new cEffect("healSoft", "healSoft", sprMaskDisabled, [UnknownEnum.Value_0]),
        hybridExchange: new cEffect("hybridExchange", "hybridExchange", sprMaskDisabled, [UnknownEnum.Value_0]),
        loseGem: new cEffect("loseGem", "loseGem", sprMaskDisabled, [UnknownEnum.Value_0]),
        multiplyEffect: new cEffect("multiplyEffect", "multiplyEffect", sprMaskDisabled, [UnknownEnum.Value_0]),
        nothing: new cEffect("effect._nothing", "effect._nothingDesc", sprMaskDisabled, [UnknownEnum.Value_0]),
        redPill: new cEffect("redPill", "redPill", sprMaskDisabled, [UnknownEnum.Value_0]),
        removeEffect: new cEffect("removeEffect", "removeEffect", sprMaskDisabled, [UnknownEnum.Value_0]),
        rezurrection: new cEffect("rezurrection", "rezurrection", sprMaskDisabled, [UnknownEnum.Value_0]),
        secureGem: new cEffect("secureGem", "secureGem", sprMaskDisabled, [UnknownEnum.Value_0]),
        tutorial: new cEffect("effect._tutorial", "effect._tutorialDesc", sprMaskDisabled, [UnknownEnum.Value_0]),
        trueDamage: new cEffect("effect._trueDamage", "effect._trueDamageDesc", sprMaskDisabled, [UnknownEnum.Value_16]),
        autocracy: new cEffect("autocracy", "autocracy", sprGemSmall, [UnknownEnum.Value_7]),
        blessed: new cEffect("token._blessed", "token._blessedDesc", sprGemSmall, [UnknownEnum.Value_32], undefined, [150, 2]),
        cloverToken: new cEffect("token._fourLeaf", "token._fourLeafDesc", sprGemSmall, [UnknownEnum.Value_2], undefined, 5),
        cursedLoverSameChoice: new cEffect("cursedLoverSameChoice", "cursedLoverSameChoice", sprGemSmall, [UnknownEnum.Value_2], undefined, 3),
        cursedLoverDeath: new cEffect("cursedLoverDeath", "cursedLoverDeath", sprGemSmall, [UnknownEnum.Value_27, UnknownEnum.Value_9], undefined, 100),
        calculatedRisk: new cEffect("token._calculatedRisk", "token._calculatedRiskDesc", sprGemSmall, [UnknownEnum.Value_11], undefined, 5),
        kaboom: new cEffect("effect._kaboom", "effect._kaboomDesc", sprExplosionSmall, [UnknownEnum.Value_1], undefined, 25),
        foreverKing: new cEffect("token._foreverKing", "token._foreverKingDesc", sprGemSmall, [UnknownEnum.Value_31], undefined, 25),
        gnomish: new cEffect("token._gnomish", "token._gnomishDesc", -1, [UnknownEnum.Value_17], undefined, 1),
        loniless: new cEffect("token._loniless", "token._lonilessDesc", sprGemSmall, [UnknownEnum.Value_32], undefined, 3),
        necrotic: new cEffect("token._necrotic", "token._necroticDesc", sprGemSmall, [UnknownEnum.Value_11], undefined, [50]),
        philosopherToken: new cEffect("token._philosopher", "token._philosopherDesc", sprItemPhilosopherStoneSmall, [UnknownEnum.Value_28], undefined, 50),
        tocanToken: new cEffect("token._can", "token._canDesc", sprGemSmall, [UnknownEnum.Value_27, UnknownEnum.Value_9], undefined, 30),
        valor: new cEffect("token._valor", "token._valorDesc", sprGemSmall, [UnknownEnum.Value_17, UnknownEnum.Value_24], undefined, [10, 1]),
        vulture: new cEffect("token._vulture", "token._vultureDesc", -1, [UnknownEnum.Value_26, UnknownEnum.Value_10], undefined, 30),
        aliveBox: new cEffect("effect._aliveBox", "effect._aliveBoxDesc", sprAliveBoxSmall, [UnknownEnum.Value_5]),
        anotherFace: new cEffect("effect._anotherFace", "effect._anotherFaceDesc", sprAnotherFaceSmall, [UnknownEnum.Value_5]),
        badTrip: new cEffect("effect._badTrip", "effect._badTripDesc", sprHallucinogenicVisionSmall, [UnknownEnum.Value_5], undefined, 1),
        beeeh: new cEffect("effect._beeeh", "effect._beeehDesc", sprWoolSmall, [UnknownEnum.Value_35, UnknownEnum.Value_11], undefined, 3),
        badBlood: new cEffect("effect._badBlood", "effect._badBloodDesc", sprBadBloodSmall, [UnknownEnum.Value_1, UnknownEnum.Value_11], undefined, [1]),
        confusion: new cEffect("effect._confusion", "effect._confusionDesc", sprConfusedSmall, [UnknownEnum.Value_5], undefined, 1),
        confusedMoon: new cEffect("effect._litha", "effect._lithaDesc", sprEyeSmall, [UnknownEnum.Value_5], undefined, 1),
        deadBox: new cEffect("effect._deadBox", "effect._deadBoxDesc", sprDeadBoxSmall, [UnknownEnum.Value_5]),
        dictatorship: new cEffect("effect._dictatorship", "effect._dictatorshipDesc", sprDictatorshipSmall, [UnknownEnum.Value_2], undefined, 5),
        frostbite: new cEffect("effect._frostbite", "effect._frostbiteDesc", sprFrostbiteSmall, [UnknownEnum.Value_2], undefined, 5),
        hallucinogenicVision: new cEffect("effect._hallucinogenicVision", "effect._hallucinogenicVisionDesc", sprBadTripSmall, [UnknownEnum.Value_4]),
        hazardousTransport: new cEffect("effect._hazardousTransport", "effect._hazardousTransportDesc", sprEggSmall, [UnknownEnum.Value_1, UnknownEnum.Value_11], undefined, [100, 3]),
        loyalty: new cEffect("effect._loyalty", "effect._loyaltyDesc", sprLoyaltySmall, [UnknownEnum.Value_35, UnknownEnum.Value_11], undefined, [2, 2]),
        manant: new cEffect("effect._manant", "effect._manantDesc", sprManantSmall, [UnknownEnum.Value_1], undefined, [3]),
        plague: new cEffect("effect._plague", "effect._plagueDesc", sprPlagueSmall, [UnknownEnum.Value_1, UnknownEnum.Value_9], undefined, [2]),
        poison: new cEffect("effect._poison", "effect._poisonDesc", sprPoisonSmall, [UnknownEnum.Value_1], undefined, 1),
        pigeonEgg: new cEffect("effect._pigeonEgg", "effect._pigeonEggDesc", sprEggSmall, [UnknownEnum.Value_1], undefined, [100]),
        trapped: new cEffect("effect._trapped", "effect._trappedDesc", sprTrappedSmall, [UnknownEnum.Value_6], undefined, 1),
        dragonSkin: new cEffect("effect._dragonSkin", "effect._dragonSkinDesc", sprDragonSkinSmall, [UnknownEnum.Value_20], UnknownEnum.Value_1, 1, -1, sprItemPrisonerChestMushroom),
        finalThread: new cEffect("effect._finalThread", "effect._finalThreadDesc", sprSpiderSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [1, 2], -1, sprItemMommyMushroom),
        goldCoin: new cEffect("effect._goldCoin", "effect._goldCoinDesc", sprGoldCoinSmall, [UnknownEnum.Value_27, UnknownEnum.Value_9], UnknownEnum.Value_1, [1], -1, sprItemGuardRight),
        goldTicket: new cEffect("effect._goldTicket", "effect._goldTicketDesc", sprGoldenTicketSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [1], -1, sprItemOperaGhostLeft),
        goldenSap: new cEffect("effect._goldenSap", "effect._goldenSapDesc", sprGoldenSapSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [25, 5], -1, sprItemSquirrelKingMushroom),
        ladybug: new cEffect("effect._ladybug", "effect._ladybugDesc", sprLadybugSmall, [UnknownEnum.Value_11], UnknownEnum.Value_1, 1, -1, sprItemFrogMushroom),
        pearlyPerl: new cEffect("effect._pearlyPerl", "effect._pearlyPerlDesc", sprPearlyPerlSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, 2, -1, sprItemWatcherMushroom),
        zlataLiquor: new cEffect("effect._zlataLiquor", "effect._zlataLiquorDesc", sprZlataLiquorSmall, [UnknownEnum.Value_11], UnknownEnum.Value_1, 1, -1, sprItemMadScientistLeft),
        mother: new cEffect("effect._mother", "effect._motherDesc", sprFawnSmall, [UnknownEnum.Value_35, UnknownEnum.Value_6, UnknownEnum.Value_11], UnknownEnum.Value_1, [10, 10], undefined, sprItemHoof),
        motherCurse: new cEffect("effect._motherCurse", "effect._motherCurseDesc", sprMotherCurseSmall, [UnknownEnum.Value_26, UnknownEnum.Value_10], UnknownEnum.Value_1, 20, -1, sprItemMotherDeadBodyMushroom),
        nudge: new cEffect("effect._nudge", "effect._nudgeDesc", sprNudgeSmall, [UnknownEnum.Value_31], UnknownEnum.Value_1, 1, -1, sprItemDogHandMushroom),
        oracleBlessing: new cEffect("effect._oracleBlessing", "effect._oracleBlessingDesc", sprBenedictionOracleSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [1, 100], 1, sprItemSleepParalysisRight),
        slimeBall: new cEffect("effect._slimeBall", "effect._slimeBallDesc", sprSlimeBallSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, 1, -1, sprItemSlimeLeft),
        stoneLife: new cEffect("effect._stoneLife", "effect._stoneLifeDesc", sprStoneLifeSmall, [UnknownEnum.Value_25], UnknownEnum.Value_1, 1, 50, sprTutorialEffectRight),
        uniqueGift: new cEffect("effect._uniqueGift", "effect._uniqueGiftDesc", sprUniqueGiftSmall, [UnknownEnum.Value_9, UnknownEnum.Value_27], undefined, 30, -1, sprItemKeeperMushroom),
        bellRevolt: new cEffect("effect._bellRevolt", "effect._bellRevoltDesc", sprBellRevoltSmall, [UnknownEnum.Value_2], UnknownEnum.Value_1, 2, -1, sprItemBellBoyRight),
        bluePill: new cEffect("effect._bluePill", "effect._bluePillDesc", sprBluePillSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [10, 10], -1, sprItemLostTimeWatcherRight),
        greenPill: new cEffect("effect._greenPill", "effect._greenPillDesc", sprGreenPillSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, 1, -1, sprItemLostTimeWatcherMushroom),
        hazelnut: new cEffect("effect._hazelnut", "effect._hazelnutDesc", sprHazelnutSmall, [UnknownEnum.Value_20], UnknownEnum.Value_1, [1], -1, sprItemSquirrelKingLeft),
        peacefulMind: new cEffect("effect._peacefulMind", "effect._peacefulMindDesc", sprPeacefulMindSmall, [UnknownEnum.Value_25], UnknownEnum.Value_1, 1, 11, sprItemPeacefulMind),
        philosopherStone: new cEffect("effect._philosopherStone", "effect._philosopherStoneDesc", sprItemPhilosopherStoneSmall, [UnknownEnum.Value_28], UnknownEnum.Value_1, 1, undefined, sprItemPhilosopherStone),
        pieceOfCloth: new cEffect("effect._pieceOfCloth", "effect._pieceOfClothDesc", sprPieceOfClothSmall, [UnknownEnum.Value_12], UnknownEnum.Value_1, -1, 5.5, sprItemShepherdessMushroom),
        predatoryInstinct: new cEffect("effect._predatoryInstinct", "effect._predatoryInstinctDesc", sprPredatoryInstinctSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, [15, 20], -1, sprItemPredatoryInstinct),
        radiance: new cEffect("effect._radiance", "effect._radianceDesc", sprRadianceSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, 1, -1, sprItemRadiance),
        rabbitFoot: new cEffect("effect._rabbitFoot", "effect._rabbitFootDesc", sprRabbitFootSmall, [UnknownEnum.Value_2], UnknownEnum.Value_1, 3, -1, sprItemCreepyRabbitMushroom),
        armor: new cEffect("effect._armor", "effect._armorDesc", sprEffectArmorSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, 5, -1, sprItemMushroomKnightMushroom),
        grapeDrink: new cEffect("effect._grapeDrink", "effect._grapeDrinkDesc", sprGrapeDrinkSmall, [UnknownEnum.Value_22, UnknownEnum.Value_14], UnknownEnum.Value_1, [2], -1, sprItemHunterMushroom),
        magicStick: new cEffect("effect._magicStick", "effect._magicStickDesc", sprMagicStickSmall, [UnknownEnum.Value_12], UnknownEnum.Value_1, -1, 11, sprItemMagicStumpMushroom),
        damagedShell: new cEffect("effect._damagedShell", "effect._damagedShellDesc", sprDamagedShellSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, [25], -1, sprItemSnailMushroom),
        sock: new cEffect("effect._sock", "effect._sockDesc", sprSockSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, [10], -1, sprItemSouillonRight),
        sweetDreams: new cEffect("effect._sweetDreams", "effect._sweetDreamsDesc", sprSweetDreamsSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [3, 6], -1, sprItemSweetDreams),
        powerlessShot: new cEffect("effect._powerlessShot", "effect._powerlessShotDesc", sprWoodenSpoonSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, [50, 10], -1, sprWoodenSpoon),
        darkWhispers: new cEffect("effect._darkWhispers", "effect._darkWhispersDesc", sprEyeSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, -1, -1, sprItemUnconsolableFawnLeft),
        magnyfyingGlass: new cEffect("effect._magnyfyingGlass", "effect._magnyfyingGlassDesc", sprMagnyfyingGlassSmall, [UnknownEnum.Value_30], UnknownEnum.Value_1, 1, -1, sprItemDollyMushroom),
        lute: new cEffect("effect._lute", "effect._luteDesc", sprLuteSmall, [UnknownEnum.Value_15], UnknownEnum.Value_1, 1, -1, sprItemMinstrelRight),
        murkyWater: new cEffect("effect._murkyWater", "effect._murkyWaterDesc", sprMurkyWaterSmall, [UnknownEnum.Value_30], UnknownEnum.Value_1, 1, -1, sprItemMurkyWater),
        babyBottle: new cEffect("effect._babyBottle", "effect._babyBottleDesc", sprBabyBottleSmall, [UnknownEnum.Value_27, UnknownEnum.Value_9], UnknownEnum.Value_1, 1, undefined, sprItemTwoHeadedFawnMushroom),
        bandage: new cEffect("effect._bandage", "effect._bandageDesc", sprBandageSmall, [UnknownEnum.Value_24], UnknownEnum.Value_1, 1, undefined, sprBandage),
        dynamite: new cEffect("effect._dynamite", "effect._dynamiteDesc", sprItemDynamiteSmall, [UnknownEnum.Value_27, UnknownEnum.Value_9], UnknownEnum.Value_1, 1, undefined, sprItemDynamite),
        feverishDefence: new cEffect("effect._feverishDefence", "effect._feverishDefenceDesc", sprBrokenShieldSmall, [UnknownEnum.Value_13], UnknownEnum.Value_1, 10, undefined, sprItemFeverishDefense),
        tapeworm: new cEffect("effect._tapeworm", "effect._tapewormDesc", sprTapewormSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [1], undefined, sprItemBoarMushroom),
        ratTail: new cEffect("effect._ratTail", "effect._ratTailDesc", sprRatTailSmall, [UnknownEnum.Value_9, UnknownEnum.Value_27], UnknownEnum.Value_1, 5, undefined, sprItemRatTail),
        starShapedNose: new cEffect("effect._starShapedNose", "effect._starShapedNoseDesc", sprStarShapedNoseSmall, [UnknownEnum.Value_21], UnknownEnum.Value_1, 1, undefined, sprItemStarMoleRight),
        straw: new cEffect("effect._straw", "effect._strawDesc", sprStraSmall, [UnknownEnum.Value_26, UnknownEnum.Value_10], UnknownEnum.Value_1, 3, undefined, sprTutorialEffectLeft),
        thorn: new cEffect("effect._thorn", "effect._thornDesc", sprThornSmall, [UnknownEnum.Value_2], UnknownEnum.Value_1, 1, 10, sprItemHedgehogMushroom),
        tooth: new cEffect("effect._tooth", "effect._toothDesc", sprToothSmall, [UnknownEnum.Value_35, UnknownEnum.Value_30, UnknownEnum.Value_36], UnknownEnum.Value_1, 1, -1, sprItemHybridMushroom),
        pigeonHead: new cEffect("effect._pigeonHead", "effect._pigeonHeadDesc", sprPigeonHeadSmall, [UnknownEnum.Value_1], UnknownEnum.Value_1, [13, 37, 15], -1, sprItemPigeonLeft)
    };
    var _effectDisabledDemo = [global.effect.feverishDefence, global.effect.rabbitFoot, global.effect.darkWhispers];
    global.effectRandom = [];
    var _effectKey = variable_struct_get_names(global.effect);
    array_sort(_effectKey, true);
    
    for (var _i = 0; _i < get_size(global.effect); _i++)
    {
        var _k = _effectKey[_i];
        var _v = variable_struct_get(global.effect, _k);
        _v.structName = _k;
        var _add = true;
        
        for (var _c = 0; _c < array_length(_v.condition); _c++)
        {
            if (_v.condition[_c] == UnknownEnum.Value_0)
            {
                _add = false;
            }
            else
            {
            }
        }
        
        if (_v.effectRarity == UnknownEnum.Value_0)
            _add = false;
        
        if (array_contains(_effectDisabledDemo, _v))
            _add = false;
        
        if (_add)
            array_push(global.effectRandom, _v);
    }
    
    global.effect.badTrip.linkedEffectTooltip = [global.effect.hallucinogenicVision];
    global.effect.dynamite.linkedEffectTooltip = [global.effect.kaboom];
    global.effect.thorn.linkedEffectTooltip = [global.effect.poison];
    global.effect.ratTail.linkedEffectTooltip = [global.effect.poison];
    global.effect.goldCoin.linkedEffectTooltip = [global.effect.dictatorship];
    global.effect.babyBottle.linkedEffectTooltip = [global.effect.confusion];
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_4 = 4,
    Value_5,
    Value_6,
    Value_7,
    Value_9 = 9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_20 = 20,
    Value_21,
    Value_22,
    Value_24 = 24,
    Value_25,
    Value_26,
    Value_27,
    Value_28,
    Value_30 = 30,
    Value_31,
    Value_32,
    Value_35 = 35,
    Value_36
}
