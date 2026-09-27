function add_var_to_text(arg0, arg1 = -1, arg2 = -1, arg3 = -1)
{
    if (arg1 == -1)
        arg1 = arg0.stack;
    
    if (arg2 == -1)
        arg2 = arg0.amount;
    
    if (arg3 == -1)
        arg3 = arg0.chance;
    
    switch (arg0)
    {
        case global.effect.poison:
        case global.effect.manant:
        case global.effect.dynamite:
        case global.effect.nudge:
        case global.effect.greenPill:
        case global.effect.aliveBox:
        case global.effect.deadBox:
        case global.effect.pearlyPerl:
        case global.effect.radiance:
        case global.effect.straw:
        case global.effect.zlataLiquor:
        case global.effect.dragonSkin:
        case global.effect.rabbitFoot:
        case global.effect.magnyfyingGlass:
        case global.effect.bandage:
        case global.effect.motherCurse:
        case global.effect.bellRevolt:
        case global.effect.ratTail:
        case global.effect.ladybug:
        case global.effect.starShapedNose:
        case global.effect.slimeBall:
        case global.effect.dictatorship:
        case global.effect.badBlood:
        case global.effect.babyBottle:
        case global.effect.goldTicket:
        case global.effect.goldCoin:
        case global.effect.grapeDrink:
        case global.effect.philosopherStone:
        case global.effect.uniqueGift:
        case global.effect.hazelnut:
        case global.effect.tapeworm:
        case global.effect.pigeonEgg:
            return string_concat(arg0.desc, $"#{arg1 * arg2[0]}");
            break;
        
        case global.effect.hazardousTransport:
            return string_concat(arg0.desc, $"#{arg2[0]}", $"#{arg1 * arg2[1]}");
            break;
        
        case global.effect.lute:
            return string_concat(arg0.desc, $"#{(arg1 * arg2[0]) + 1}");
            break;
        
        case global.effect.pigeonHead:
            return string_concat(arg0.desc, $"#{arg2[0]}", $"#{arg2[1]}", $"#{arg1 * arg2[2]}");
            break;
        
        case global.effect.armor:
        case global.effect.damagedShell:
        case global.effect.sock:
        case global.effect.feverishDefence:
            return string_concat(arg0.desc, $"#{arg1 * arg2[0]}", $"#{arg1}");
            break;
        
        case global.effect.powerlessShot:
        case global.effect.predatoryInstinct:
            return string_concat(arg0.desc, $"#{arg2[0]}", $"#{arg1 * arg2[1]}", $"#{arg1}");
            break;
        
        case global.effect.magicStick:
        case global.effect.pieceOfCloth:
            return string_concat(arg0.desc, $"#{round(get_stacking_percentage(arg3, arg1))}");
            break;
        
        case global.effect.peacefulMind:
            return string_concat(arg0.desc, $"#{round(get_stacking_percentage(arg3, arg1))}", $"#{arg2[0]}");
            break;
        
        case global.effect.finalThread:
        case global.effect.sweetDreams:
            return string_concat(arg0.desc, $"#{arg1 * arg2[0]}", $"#{arg1 * arg2[1]}");
            break;
        
        case global.effect.bluePill:
        case global.effect.valor:
        case global.effect.plague:
        case global.effect.blessed:
        case global.effect.goldenSap:
        case global.effect.mother:
        case global.effect.loyalty:
            return string_concat(arg0.desc, $"#{arg2[0]}", $"#{arg2[1]}");
            break;
        
        case global.effect.thorn:
        case global.effect.stoneLife:
            return string_concat(arg0.desc, $"#{arg3}", $"#{arg1 * arg2[0]}");
            break;
        
        case global.effect.oracleBlessing:
            return string_concat(arg0.desc, $"#{arg1 * arg2[0]}", $"#{arg3}", $"#{arg1 * arg2[1]}");
            break;
        
        case global.effect.kaboom:
        case global.effect.gnomish:
        case global.effect.loniless:
        case global.effect.philosopherToken:
        case global.effect.tocanToken:
        case global.effect.vulture:
        case global.effect.calculatedRisk:
        case global.effect.foreverKing:
        case global.effect.cloverToken:
        case global.effect.beeeh:
        case global.effect.necrotic:
            return string_concat(arg0.desc, $"#{arg2[0]}");
            break;
        
        case global.cards.maybeSheepLeft:
        case global.cards.maybeSheepMushroom:
        case global.cards.snailLeft:
        case global.cards.snailRight:
        case global.cards.snailMushroom:
        case global.cards.shoeshinerLeft:
        case global.cards.shoeshinerRight:
        case global.cards.motherLeft2:
        case global.cards.motherRight2:
        case global.cards.innkeeperLeft:
        case global.cards.innkeeperRight:
            var _text = arg0.desc;
            
            if (oFightManager.nbrFightersAtCardDraw == 1)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][0][0] * global.bloodMoonMultiplier}#1");
                _text += "#";
                _text += "#";
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 2)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][1][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][1][1] * global.bloodMoonMultiplier}#2");
                _text += "#";
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 3)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][2][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][2][1] * global.bloodMoonMultiplier}#2");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][2][2] * global.bloodMoonMultiplier}#3");
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 4)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][3][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][3][1] * global.bloodMoonMultiplier}#2");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][3][2] * global.bloodMoonMultiplier}#3");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg2[0][3][3] * global.bloodMoonMultiplier}#4");
            }
            
            _text += "#";
            return _text;
            break;
        
        case global.cards.dollyLeft:
        case global.cards.dollyRight:
            var _text = arg0.desc;
            
            if (oFightManager.nbrFightersAtCardDraw == 1)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][0][0] * global.bloodMoonMultiplier}#1");
                _text += "#";
                _text += "#";
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 2)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][1][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][1][1] * global.bloodMoonMultiplier}#2");
                _text += "#";
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 3)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][2][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][2][1] * global.bloodMoonMultiplier}#2");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][2][2] * global.bloodMoonMultiplier}#3");
                _text += "#";
            }
            else if (oFightManager.nbrFightersAtCardDraw == 4)
            {
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][3][0] * global.bloodMoonMultiplier}#1");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][3][1] * global.bloodMoonMultiplier}#2");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][3][2] * global.bloodMoonMultiplier}#3");
                _text += "#\n";
                _text += LocPreprocessor($"player._damageForMultiplePlayers2#{arg1[0][3][3] * global.bloodMoonMultiplier}#4");
            }
            
            _text += "#";
            return _text;
            break;
        
        case global.cards.tutorialDead:
        case global.cards.fountainSorrowEmptyLeft:
        case global.cards.hedgehogLeft:
        case global.cards.hedgehogMushroom:
        case global.cards.lostTimeWatcherRight:
        case global.cards.lamplighterLeft:
            return string_concat(arg0.desc, $"#{arg2[0][0] * global.bloodMoonMultiplier}#{arg2[0][1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.shepherdessMushroom:
            return string_concat(arg0.desc, $"#{arg2[0][0] * global.bloodMoonMultiplier}#{arg2[0][1] * global.bloodMoonMultiplier}#{arg2[1][0] * global.bloodMoonMultiplier}#{arg2[1][1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.creepyRabbitRight:
        case global.cards.mushroomKnightRight:
        case global.cards.unicornLeft:
        case global.cards.unicornRight:
        case global.cards.funFairPileOfGem:
        case global.cards.funFairGemPurse:
        case global.cards.funFairGemBag:
        case global.cards.funFairGemPurse2:
        case global.cards.wildBoarLeft:
        case global.cards.wildBoarRight:
        case global.cards.wildBoarMushroom:
        case global.cards.mommyLeft:
        case global.cards.watcherLeft:
        case global.cards.watcherRight:
        case global.cards.slimeLeft:
        case global.cards.slimeRight:
        case global.cards.dogHandLeft:
        case global.cards.dogHandRight:
        case global.cards.dogHandMushroom:
        case global.cards.lostTimeWatcherLeft:
        case global.cards.squirrelKingLeft:
        case global.cards.squirrelKingRight:
        case global.cards.squirrelKingMushroom:
        case global.cards.oracleLeft:
        case global.cards.oracleRight:
        case global.cards.fountainSorrowLeft:
        case global.cards.shepherdessLeft:
        case global.cards.shepherdessRight:
        case global.cards.babayagaStop:
        case global.cards.hunterLeft:
        case global.cards.hunterRight:
        case global.cards.hunterMushroom:
        case global.cards.tutorialDamageLeft:
        case global.cards.tutorialDamageRight:
        case global.cards.magicStumpRight:
        case global.cards.magicStumpLeft:
        case global.cards.tutorialVoteLeft:
        case global.cards.tutorialVoteRight:
        case global.cards.tutorialReplayCenter:
        case global.cards.starMoleRight:
        case global.cards.starMoleLeft:
        case global.cards.hedgehogRight:
        case global.cards.bellBoyLeft:
        case global.cards.bellBoyRight:
        case global.cards.statueRight:
        case global.cards.bankerLeft:
        case global.cards.operaGhostLeft:
        case global.cards.operaGhostRight:
        case global.cards.ocularistLeft:
        case global.cards.ocularistRight:
        case global.cards.lamplighterRight:
        case global.cards.lampostOnLeft:
        case global.cards.lampostOnRight:
        case global.cards.lampostOffLeft:
        case global.cards.lampostOffRight:
        case global.cards.luckyChestLeft:
        case global.cards.libarianRight:
        case global.cards.dictatorLeft:
        case global.cards.dictatorRight:
        case global.cards.revolutionaryLeft:
        case global.cards.carriageMadManLeft:
        case global.cards.carriageMadManRight:
        case global.cards.sandwichManRight:
        case global.cards.statueLeft:
        case global.cards.creepyRabbitMushroom:
        case global.cards.frogMushroom:
        case global.cards.starMoleMushroom:
        case global.cards.luckyChestMushroom:
        case global.cards.magicStumpMushroom:
        case global.cards.motherMushroom:
        case global.cards.watcherMushroom:
        case global.cards.lostTimeWatcherMushroom:
        case global.cards.maybeSheepRight:
        case global.cards.motherLeft1:
        case global.cards.motherRight1:
        case global.cards.motherLeft3:
        case global.cards.motherRight3:
        case global.cards.twoHeadedFawnLeft:
        case global.cards.unconsolableFawnLeft:
        case global.cards.unconsolableFawnRight:
        case global.cards.unconsolableFawnMushroom:
        case global.cards.sheepRight:
        case global.cards.statueForestLeft:
        case global.cards.graveyardKeeperLeft:
        case global.cards.costumerRight:
        case global.cards.keyMasterRight:
        case global.cards.keyMasterLeft:
        case global.cards.catDeadRight:
        case global.cards.catAliveRight:
        case global.cards.pupperteerRight:
        case global.cards.pigeonLeft:
            return string_concat(arg0.desc, $"#{round(arg2[0] * global.bloodMoonMultiplier)}");
            break;
        
        case global.cards.prisonerChestLeft:
        case global.cards.prisonerChestRight:
        case global.cards.creepyRabbitLeft:
        case global.cards.keeperMushroom:
        case global.cards.slimeMushroom:
        case global.cards.costumerLeft:
        case global.cards.catAliveLeft:
        case global.cards.catDeadLeft:
            return string_concat(arg0.desc, $"#{arg2[0] * global.bloodMoonMultiplier}#{arg2[1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.keeperLeft:
        case global.cards.sandwichManLeft:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg2[0] * global.bloodMoonMultiplier}#{arg2[1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.keeperRight:
            return string_concat(arg0.desc, $"#{arg2[0] * global.bloodMoonMultiplier}#{arg2[1][0] * global.bloodMoonMultiplier}#{arg2[1][1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.luckyChestRight:
        case global.cards.hybridLeft:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg1[0] * global.bloodMoonMultiplier}#{arg2[1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.minstrelLeft:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg2[0] * global.bloodMoonMultiplier}#{arg2[1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.sleepParalysisLeft:
        case global.cards.sleepParalysisRight:
        case global.cards.statueForestRight:
        case global.cards.sleepParalysisMushroom:
        case global.cards.libarianLeft:
        case global.cards.twoHeadedFawnRight:
        case global.cards.twoHeadedFawnMushroom:
        case global.cards.pupperteerLeft:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg2[0] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.butcherLeft:
        case global.cards.butcherRight:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg0.damageTimes[0]}#{arg2[0] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.rattenLeft:
        case global.cards.madScientistRight:
        case global.cards.souillonLeft:
        case global.cards.hybridMushroom:
        case global.cards.mommyMushroom:
        case global.cards.guardRight:
            return string_concat(arg0.desc, $"#{round(arg3[0])}#{arg1[0] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.fountainSorrowEmptyMushroom:
            return string_concat(arg0.desc, $"#{round(arg3[0])}");
            break;
        
        case global.cards.mushroomKnightLeft:
        case global.cards.mushroomKnightMushroom:
        case global.cards.madScientistLeft:
        case global.cards.rattenRight:
        case global.cards.animalBinderRight:
        case global.cards.animalBinderLeft:
        case global.cards.animalBinderMushroom:
        case global.cards.sheepLeft:
        case global.cards.dollyMushroom:
        case global.cards.mommyRight:
        case global.cards.pigeonRight:
        case global.cards.oracleMushroom:
        case global.cards.sheepMushroom:
        case global.cards.frogLeft:
        case global.cards.frogRight:
        case global.cards.townCrierRight:
        case global.cards.townCrierLeft:
        case global.cards.graveyardKeeperRight:
        case global.cards.beggarLeft:
        case global.cards.beggarRight:
        case global.cards.souillonRight:
        case global.cards.guardLeft:
        case global.cards.catUndeadLeft:
        case global.cards.catUndeadRight:
        case global.cards.frozenStatueRight:
        case global.cards.commonPot:
            return string_concat(arg0.desc, $"#{arg1[0] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.unicornMushroom:
            return string_concat(arg0.desc, $"#{arg2[0] * global.bloodMoonMultiplier}#{arg1[1] * global.bloodMoonMultiplier}");
            break;
        
        case global.cards.shopItem1:
        case global.cards.shopItem2:
        case global.cards.shopItem3:
        case global.cards.shopItem4:
            var _name = LocPreprocessor(arg0.actionType[0].name);
            return string_concat(arg0.desc, $"#{arg1[0] * global.bloodMoonMultiplier}#{_name}");
            break;
        
        default:
            return string(arg0.desc);
            break;
    }
}
