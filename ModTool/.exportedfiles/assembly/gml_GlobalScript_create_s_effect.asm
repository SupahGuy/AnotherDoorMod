:[0]
b [16]

> gml_Script_cEffect (locals=0, argc=8)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
push.l 0
pop.v.l builtin.argument4

:[3]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.argument5

:[5]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i builtin.argument6

:[7]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushref.i 16777554
pop.v.v builtin.argument7

:[9]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.name
push.v arg.argument1
pop.v.v builtin.desc
push.v arg.argument2
pop.v.v builtin.sprite
push.v arg.argument3
pop.v.v builtin.condition
push.v arg.argument4
pop.v.v builtin.effectRarity
push.v arg.argument5
call.i is_array(argc=1)
conv.v.b
bf [11]

:[10]
push.v arg.argument5
b [12]

:[11]
push.v arg.argument5
call.i @@NewGMLArray@@(argc=1)

:[12]
pop.v.v builtin.amount
push.v arg.argument6
pop.v.v builtin.chance
push.v builtin.amount
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
cmp.v.v EQ
bf [14]

:[13]
pushi.e 1
conv.b.v
b [15]

:[14]
pushi.e 0
conv.b.v

:[15]
pop.v.v builtin.doesChanceAddUp
push.v arg.argument7
pop.v.v builtin.spriteItemLinked
pushi.e 1
pop.v.i builtin.stack
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.linkedEffectTooltip
push.s ""@61
pop.v.s builtin.structName
exit.i

:[16]
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cEffect
popz.v
call.i @@NewGMLObject@@(argc=0)
pop.v.v global.effect
b [34]

> gml_Script_create_s_effect (locals=7, argc=0)
:[17]
pushref.i 16777552
pushi.e -1
conv.i.v
pushi.e 15
conv.i.v
pushi.e 37
conv.i.v
pushi.e 13
conv.i.v
call.i @@NewGMLArray@@(argc=3)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777744
push.s "effect._pigeonHeadDesc"@4634
conv.s.v
push.s "effect._pigeonHead"@4635
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777495
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 36
conv.l.v
push.l 30
conv.l.v
push.l 35
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushref.i 16777902
push.s "effect._toothDesc"@4636
conv.s.v
push.s "effect._tooth"@4637
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777488
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777847
push.s "effect._thornDesc"@4638
conv.s.v
push.s "effect._thorn"@4639
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777904
pushbltn.v builtin.undefined
pushi.e 3
conv.i.v
push.l 1
conv.l.v
push.l 10
conv.l.v
push.l 26
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777840
push.s "effect._strawDesc"@4640
conv.s.v
push.s "effect._straw"@4641
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777598
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 21
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777834
push.s "effect._starShapedNoseDesc"@4642
conv.s.v
push.s "effect._starShapedNose"@4643
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777563
pushbltn.v builtin.undefined
pushi.e 5
conv.i.v
push.l 1
conv.l.v
push.l 27
conv.l.v
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777789
push.s "effect._ratTailDesc"@4644
conv.s.v
push.s "effect._ratTail"@4645
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777441
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777844
push.s "effect._tapewormDesc"@4646
conv.s.v
push.s "effect._tapeworm"@4647
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777470
pushbltn.v builtin.undefined
pushi.e 10
conv.i.v
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777272
push.s "effect._feverishDefenceDesc"@4648
conv.s.v
push.s "effect._feverishDefence"@4649
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777468
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 9
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777469
push.s "effect._dynamiteDesc"@4650
conv.s.v
push.s "effect._dynamite"@4651
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777249
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 24
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777250
push.s "effect._bandageDesc"@4652
conv.s.v
push.s "effect._bandage"@4653
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777608
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 9
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777246
push.s "effect._babyBottleDesc"@4654
conv.s.v
push.s "effect._babyBottle"@4655
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777538
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 30
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777726
push.s "effect._murkyWaterDesc"@4656
conv.s.v
push.s "effect._murkyWater"@4657
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777529
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 15
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777631
push.s "effect._luteDesc"@4658
conv.s.v
push.s "effect._lute"@4659
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777466
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 30
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777633
push.s "effect._magnyfyingGlassDesc"@4660
conv.s.v
push.s "effect._magnyfyingGlass"@4661
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777610
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777392
push.s "effect._darkWhispersDesc"@4662
conv.s.v
push.s "effect._darkWhispers"@4663
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16778009
pushi.e -1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16778010
push.s "effect._powerlessShotDesc"@4664
conv.s.v
push.s "effect._powerlessShot"@4665
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777601
pushi.e -1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777842
push.s "effect._sweetDreamsDesc"@4666
conv.s.v
push.s "effect._sweetDreams"@4667
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777591
pushi.e -1
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777818
push.s "effect._sockDesc"@4668
conv.s.v
push.s "effect._sock"@4669
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777588
pushi.e -1
conv.i.v
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777373
push.s "effect._damagedShellDesc"@4670
conv.s.v
push.s "effect._damagedShell"@4671
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777521
pushi.e 11
conv.i.v
pushi.e -1
conv.i.v
push.l 1
conv.l.v
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777632
push.s "effect._magicStickDesc"@4672
conv.s.v
push.s "effect._magicStick"@4673
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777492
pushi.e -1
conv.i.v
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 14
conv.l.v
push.l 22
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777418
push.s "effect._grapeDrinkDesc"@4674
conv.s.v
push.s "effect._grapeDrink"@4675
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777540
pushi.e -1
conv.i.v
pushi.e 5
conv.i.v
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777388
push.s "effect._armorDesc"@4676
conv.s.v
push.s "effect._armor"@4677
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777458
pushi.e -1
conv.i.v
pushi.e 3
conv.i.v
push.l 1
conv.l.v
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777787
push.s "effect._rabbitFootDesc"@4678
conv.s.v
push.s "effect._rabbitFoot"@4679
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777562
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777788
push.s "effect._radianceDesc"@4680
conv.s.v
push.s "effect._radiance"@4681
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777556
pushi.e -1
conv.i.v
pushi.e 20
conv.i.v
pushi.e 15
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 13
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777774
push.s "effect._predatoryInstinctDesc"@4682
conv.s.v
push.s "effect._predatoryInstinct"@4683
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777577
push.d 5.5
conv.d.v
pushi.e -1
conv.i.v
push.l 1
conv.l.v
push.l 12
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777743
push.s "effect._pieceOfClothDesc"@4684
conv.s.v
push.s "effect._pieceOfCloth"@4685
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777550
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 28
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777551
push.s "effect._philosopherStoneDesc"@4686
conv.s.v
push.s "effect._philosopherStone"@4687
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777549
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 25
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777741
push.s "effect._peacefulMindDesc"@4688
conv.s.v
push.s "effect._peacefulMind"@4689
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777593
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 20
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777421
push.s "effect._hazelnutDesc"@4690
conv.s.v
push.s "effect._hazelnut"@4691
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777513
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777419
push.s "effect._greenPillDesc"@4692
conv.s.v
push.s "effect._greenPill"@4693
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777514
pushi.e -1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777265
push.s "effect._bluePillDesc"@4694
conv.s.v
push.s "effect._bluePill"@4695
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777439
pushi.e -1
conv.i.v
pushi.e 2
conv.i.v
push.l 1
conv.l.v
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777255
push.s "effect._bellRevoltDesc"@4696
conv.s.v
push.s "effect._bellRevolt"@4697
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777500
pushi.e -1
conv.i.v
pushi.e 30
conv.i.v
pushbltn.v builtin.undefined
push.l 27
conv.l.v
push.l 9
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777989
push.s "effect._uniqueGiftDesc"@4698
conv.s.v
push.s "effect._uniqueGift"@4699
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777905
pushi.e 50
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 25
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777839
push.s "effect._stoneLifeDesc"@4700
conv.s.v
push.s "effect._stoneLife"@4701
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777584
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777806
push.s "effect._slimeBallDesc"@4702
conv.s.v
push.s "effect._slimeBall"@4703
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777583
pushi.e 1
conv.i.v
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777256
push.s "effect._oracleBlessingDesc"@4704
conv.s.v
push.s "effect._oracleBlessing"@4705
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777463
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 31
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777739
push.s "effect._nudgeDesc"@4706
conv.s.v
push.s "effect._nudge"@4707
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777535
pushi.e -1
conv.i.v
pushi.e 20
conv.i.v
push.l 1
conv.l.v
push.l 10
conv.l.v
push.l 26
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777722
push.s "effect._motherCurseDesc"@4708
conv.s.v
push.s "effect._motherCurse"@4709
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777490
pushbltn.v builtin.undefined
pushi.e 10
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 11
conv.l.v
push.l 6
conv.l.v
push.l 35
conv.l.v
call.i @@NewGMLArray@@(argc=3)
pushref.i 16777394
push.s "effect._motherDesc"@4710
conv.s.v
push.s "effect._mother"@4711
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777518
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 11
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16778018
push.s "effect._zlataLiquorDesc"@4712
conv.s.v
push.s "effect._zlataLiquor"@4713
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777617
pushi.e -1
conv.i.v
pushi.e 2
conv.i.v
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777742
push.s "effect._pearlyPerlDesc"@4714
conv.s.v
push.s "effect._pearlyPerl"@4715
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777475
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 11
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777624
push.s "effect._ladybugDesc"@4716
conv.s.v
push.s "effect._ladybug"@4717
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777594
pushi.e -1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 25
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777416
push.s "effect._goldenSapDesc"@4718
conv.s.v
push.s "effect._goldenSap"@4719
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777544
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777417
push.s "effect._goldTicketDesc"@4720
conv.s.v
push.s "effect._goldTicket"@4721
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777486
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.l 1
conv.l.v
push.l 9
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777415
push.s "effect._goldCoinDesc"@4722
conv.s.v
push.s "effect._goldCoin"@4723
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777531
pushi.e -1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777821
push.s "effect._finalThreadDesc"@4724
conv.s.v
push.s "effect._finalThread"@4725
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushref.i 16777558
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
push.l 1
conv.l.v
push.l 20
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777387
push.s "effect._dragonSkinDesc"@4726
conv.s.v
push.s "effect._dragonSkin"@4727
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 6
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777903
push.s "effect._trappedDesc"@4728
conv.s.v
push.s "effect._trapped"@4729
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777389
push.s "effect._pigeonEggDesc"@4730
conv.s.v
push.s "effect._pigeonEgg"@4731
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777773
push.s "effect._poisonDesc"@4732
conv.s.v
push.s "effect._poison"@4733
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 9
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777746
push.s "effect._plagueDesc"@4734
conv.s.v
push.s "effect._plague"@4735
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 3
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777647
push.s "effect._manantDesc"@4736
conv.s.v
push.s "effect._manant"@4737
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 11
conv.l.v
push.l 35
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777630
push.s "effect._loyaltyDesc"@4738
conv.s.v
push.s "effect._loyalty"@4739
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 3
conv.i.v
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 11
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777389
push.s "effect._hazardousTransportDesc"@4740
conv.s.v
push.s "effect._hazardousTransport"@4741
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 4
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777248
push.s "effect._hallucinogenicVisionDesc"@4742
conv.s.v
push.s "effect._hallucinogenicVision"@4743
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777410
push.s "effect._frostbiteDesc"@4744
conv.s.v
push.s "effect._frostbite"@4745
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777380
push.s "effect._dictatorshipDesc"@4746
conv.s.v
push.s "effect._dictatorship"@4747
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777374
push.s "effect._deadBoxDesc"@4748
conv.s.v
push.s "effect._deadBox"@4749
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777392
push.s "effect._lithaDesc"@4750
conv.s.v
push.s "effect._litha"@4751
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777352
push.s "effect._confusionDesc"@4752
conv.s.v
push.s "effect._confusion"@4753
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 11
conv.l.v
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777247
push.s "effect._badBloodDesc"@4754
conv.s.v
push.s "effect._badBlood"@4755
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 3
conv.i.v
pushbltn.v builtin.undefined
push.l 11
conv.l.v
push.l 35
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16778011
push.s "effect._beeehDesc"@4756
conv.s.v
push.s "effect._beeeh"@4757
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777420
push.s "effect._badTripDesc"@4758
conv.s.v
push.s "effect._badTrip"@4759
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777242
push.s "effect._anotherFaceDesc"@4760
conv.s.v
push.s "effect._anotherFace"@4761
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 5
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777241
push.s "effect._aliveBoxDesc"@4762
conv.s.v
push.s "effect._aliveBox"@4763
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 30
conv.i.v
pushbltn.v builtin.undefined
push.l 10
conv.l.v
push.l 26
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
push.s "token._vultureDesc"@4764
conv.s.v
push.s "token._vulture"@4765
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 24
conv.l.v
push.l 17
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777414
push.s "token._valorDesc"@4766
conv.s.v
push.s "token._valor"@4767
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 30
conv.i.v
pushbltn.v builtin.undefined
push.l 9
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777414
push.s "token._canDesc"@4768
conv.s.v
push.s "token._can"@4769
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 50
conv.i.v
pushbltn.v builtin.undefined
push.l 28
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777551
push.s "token._philosopherDesc"@4770
conv.s.v
push.s "token._philosopher"@4771
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 50
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pushbltn.v builtin.undefined
push.l 11
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._necroticDesc"@4772
conv.s.v
push.s "token._necrotic"@4773
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 3
conv.i.v
pushbltn.v builtin.undefined
push.l 32
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._lonilessDesc"@4774
conv.s.v
push.s "token._loniless"@4775
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 17
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushi.e -1
conv.i.v
push.s "token._gnomishDesc"@4776
conv.s.v
push.s "token._gnomish"@4777
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 25
conv.i.v
pushbltn.v builtin.undefined
push.l 31
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._foreverKingDesc"@4778
conv.s.v
push.s "token._foreverKing"@4779
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 25
conv.i.v
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777391
push.s "effect._kaboomDesc"@4780
conv.s.v
push.s "effect._kaboom"@4781
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 11
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._calculatedRiskDesc"@4782
conv.s.v
push.s "token._calculatedRisk"@4783
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 100
conv.i.v
pushbltn.v builtin.undefined
push.l 9
conv.l.v
push.l 27
conv.l.v
call.i @@NewGMLArray@@(argc=2)
pushref.i 16777414
push.s "cursedLoverDeath"@4784
conv.s.v
push.s "cursedLoverDeath"@4784
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 3
conv.i.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "cursedLoverSameChoice"@4785
conv.s.v
push.s "cursedLoverSameChoice"@4785
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._fourLeafDesc"@4786
conv.s.v
push.s "token._fourLeaf"@4787
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 2
conv.i.v
pushi.e 150
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushbltn.v builtin.undefined
push.l 32
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "token._blessedDesc"@4788
conv.s.v
push.s "token._blessed"@4789
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 7
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777414
push.s "autocracy"@4790
conv.s.v
push.s "autocracy"@4790
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 16
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._trueDamageDesc"@4791
conv.s.v
push.s "effect._trueDamage"@4792
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._tutorialDesc"@4793
conv.s.v
push.s "effect._tutorial"@4794
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "secureGem"@4795
conv.s.v
push.s "secureGem"@4795
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "rezurrection"@4796
conv.s.v
push.s "rezurrection"@4796
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "removeEffect"@4797
conv.s.v
push.s "removeEffect"@4797
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "redPill"@4798
conv.s.v
push.s "redPill"@4798
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._nothingDesc"@4799
conv.s.v
push.s "effect._nothing"@4800
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "multiplyEffect"@4801
conv.s.v
push.s "multiplyEffect"@4801
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "loseGem"@4802
conv.s.v
push.s "loseGem"@4802
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "hybridExchange"@4803
conv.s.v
push.s "hybridExchange"@4803
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "healSoft"@4804
conv.s.v
push.s "healSoft"@4804
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "healMultiple"@4805
conv.s.v
push.s "healMultiple"@4805
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._healDesc"@4806
conv.s.v
push.s "effect._heal"@4807
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._gemDesc"@4808
conv.s.v
push.s "effect._gem"@4809
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "fountainFilled"@4810
conv.s.v
push.s "fountainFilled"@4810
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effectToGem"@4811
conv.s.v
push.s "effectToGem"@4811
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effectToDamage"@4812
conv.s.v
push.s "effectToDamage"@4812
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "deleteMother"@4813
conv.s.v
push.s "deleteMother"@4813
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "deleteRandomEffect"@4814
conv.s.v
push.s "deleteRandomEffect"@4814
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "deleteBeeeh"@4815
conv.s.v
push.s "deleteBeeeh"@4815
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "commonPot"@4423
conv.s.v
push.s "commonPot"@4423
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "convertHPRandomized"@4816
conv.s.v
push.s "convertHPRandomized"@4816
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 10
conv.i.v
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "beeehToHeal"@4817
conv.s.v
push.s "beeehToHeal"@4817
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "beeehToGem"@4818
conv.s.v
push.s "beeehToGem"@4818
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "attackMultiple"@4819
conv.s.v
push.s "attackMultiple"@4819
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "attackMaybeSheepDesc"@4820
conv.s.v
push.s "attackMaybeSheep"@4821
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "effect._attackDesc"@4822
conv.s.v
push.s "effect._attack"@4823
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pushi.e 5
conv.i.v
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s "antidote"@4824
conv.s.v
push.s "antidote"@4824
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pushref.i 16777648
push.s ""@61
conv.s.v
push.s ""@61
conv.s.v
push.i [function]gml_Script_cEffect
conv.i.v
call.i @@NewGMLObject@@(argc=7)
b [19]

> gml_Script____struct___68@create_s_effect@create_s_effect (locals=0, argc=0)
:[18]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.allPoisonToGem
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.antidote
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.attack
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.attackMaybeSheep
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.attackMultiple
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.beeehToGem
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.beeehToHeal
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.convertHPRandomized
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.commonPot
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v self.deleteBeeeh
pushi.e -15
pushi.e 10
push.v [array]self.argument
pop.v.v self.deleteRandomEffect
pushi.e -15
pushi.e 11
push.v [array]self.argument
pop.v.v self.deleteMother
pushi.e -15
pushi.e 12
push.v [array]self.argument
pop.v.v self.effectToDamage
pushi.e -15
pushi.e 13
push.v [array]self.argument
pop.v.v self.effectToGem
pushi.e -15
pushi.e 14
push.v [array]self.argument
pop.v.v self.fountainFilled
pushi.e -15
pushi.e 15
push.v [array]self.argument
pop.v.v self.gem
pushi.e -15
pushi.e 16
push.v [array]self.argument
pop.v.v self.heal
pushi.e -15
pushi.e 17
push.v [array]self.argument
pop.v.v self.healMultiple
pushi.e -15
pushi.e 18
push.v [array]self.argument
pop.v.v self.healSoft
pushi.e -15
pushi.e 19
push.v [array]self.argument
pop.v.v self.hybridExchange
pushi.e -15
pushi.e 20
push.v [array]self.argument
pop.v.v self.loseGem
pushi.e -15
pushi.e 21
push.v [array]self.argument
pop.v.v self.multiplyEffect
pushi.e -15
pushi.e 22
push.v [array]self.argument
pop.v.v self.nothing
pushi.e -15
pushi.e 23
push.v [array]self.argument
pop.v.v self.redPill
pushi.e -15
pushi.e 24
push.v [array]self.argument
pop.v.v self.removeEffect
pushi.e -15
pushi.e 25
push.v [array]self.argument
pop.v.v self.rezurrection
pushi.e -15
pushi.e 26
push.v [array]self.argument
pop.v.v self.secureGem
pushi.e -15
pushi.e 27
push.v [array]self.argument
pop.v.v self.tutorial
pushi.e -15
pushi.e 28
push.v [array]self.argument
pop.v.v self.trueDamage
pushi.e -15
pushi.e 29
push.v [array]self.argument
pop.v.v self.autocracy
pushi.e -15
pushi.e 30
push.v [array]self.argument
pop.v.v self.blessed
pushi.e -15
pushi.e 31
push.v [array]self.argument
pop.v.v self.cloverToken
pushi.e -15
pushi.e 32
push.v [array]self.argument
pop.v.v self.cursedLoverSameChoice
pushi.e -15
pushi.e 33
push.v [array]self.argument
pop.v.v self.cursedLoverDeath
pushi.e -15
pushi.e 34
push.v [array]self.argument
pop.v.v self.calculatedRisk
pushi.e -15
pushi.e 35
push.v [array]self.argument
pop.v.v self.kaboom
pushi.e -15
pushi.e 36
push.v [array]self.argument
pop.v.v self.foreverKing
pushi.e -15
pushi.e 37
push.v [array]self.argument
pop.v.v self.gnomish
pushi.e -15
pushi.e 38
push.v [array]self.argument
pop.v.v self.loniless
pushi.e -15
pushi.e 39
push.v [array]self.argument
pop.v.v self.necrotic
pushi.e -15
pushi.e 40
push.v [array]self.argument
pop.v.v self.philosopherToken
pushi.e -15
pushi.e 41
push.v [array]self.argument
pop.v.v self.tocanToken
pushi.e -15
pushi.e 42
push.v [array]self.argument
pop.v.v self.valor
pushi.e -15
pushi.e 43
push.v [array]self.argument
pop.v.v self.vulture
pushi.e -15
pushi.e 44
push.v [array]self.argument
pop.v.v self.aliveBox
pushi.e -15
pushi.e 45
push.v [array]self.argument
pop.v.v self.anotherFace
pushi.e -15
pushi.e 46
push.v [array]self.argument
pop.v.v self.badTrip
pushi.e -15
pushi.e 47
push.v [array]self.argument
pop.v.v self.beeeh
pushi.e -15
pushi.e 48
push.v [array]self.argument
pop.v.v self.badBlood
pushi.e -15
pushi.e 49
push.v [array]self.argument
pop.v.v self.confusion
pushi.e -15
pushi.e 50
push.v [array]self.argument
pop.v.v self.confusedMoon
pushi.e -15
pushi.e 51
push.v [array]self.argument
pop.v.v self.deadBox
pushi.e -15
pushi.e 52
push.v [array]self.argument
pop.v.v self.dictatorship
pushi.e -15
pushi.e 53
push.v [array]self.argument
pop.v.v self.frostbite
pushi.e -15
pushi.e 54
push.v [array]self.argument
pop.v.v self.hallucinogenicVision
pushi.e -15
pushi.e 55
push.v [array]self.argument
pop.v.v self.hazardousTransport
pushi.e -15
pushi.e 56
push.v [array]self.argument
pop.v.v self.loyalty
pushi.e -15
pushi.e 57
push.v [array]self.argument
pop.v.v self.manant
pushi.e -15
pushi.e 58
push.v [array]self.argument
pop.v.v self.plague
pushi.e -15
pushi.e 59
push.v [array]self.argument
pop.v.v self.poison
pushi.e -15
pushi.e 60
push.v [array]self.argument
pop.v.v self.pigeonEgg
pushi.e -15
pushi.e 61
push.v [array]self.argument
pop.v.v self.trapped
pushi.e -15
pushi.e 62
push.v [array]self.argument
pop.v.v self.dragonSkin
pushi.e -15
pushi.e 63
push.v [array]self.argument
pop.v.v self.finalThread
pushi.e -15
pushi.e 64
push.v [array]self.argument
pop.v.v self.goldCoin
pushi.e -15
pushi.e 65
push.v [array]self.argument
pop.v.v self.goldTicket
pushi.e -15
pushi.e 66
push.v [array]self.argument
pop.v.v self.goldenSap
pushi.e -15
pushi.e 67
push.v [array]self.argument
pop.v.v self.ladybug
pushi.e -15
pushi.e 68
push.v [array]self.argument
pop.v.v self.pearlyPerl
pushi.e -15
pushi.e 69
push.v [array]self.argument
pop.v.v self.zlataLiquor
pushi.e -15
pushi.e 70
push.v [array]self.argument
pop.v.v self.mother
pushi.e -15
pushi.e 71
push.v [array]self.argument
pop.v.v self.motherCurse
pushi.e -15
pushi.e 72
push.v [array]self.argument
pop.v.v self.nudge
pushi.e -15
pushi.e 73
push.v [array]self.argument
pop.v.v self.oracleBlessing
pushi.e -15
pushi.e 74
push.v [array]self.argument
pop.v.v self.slimeBall
pushi.e -15
pushi.e 75
push.v [array]self.argument
pop.v.v self.stoneLife
pushi.e -15
pushi.e 76
push.v [array]self.argument
pop.v.v self.uniqueGift
pushi.e -15
pushi.e 77
push.v [array]self.argument
pop.v.v self.bellRevolt
pushi.e -15
pushi.e 78
push.v [array]self.argument
pop.v.v self.bluePill
pushi.e -15
pushi.e 79
push.v [array]self.argument
pop.v.v self.greenPill
pushi.e -15
pushi.e 80
push.v [array]self.argument
pop.v.v self.hazelnut
pushi.e -15
pushi.e 81
push.v [array]self.argument
pop.v.v self.peacefulMind
pushi.e -15
pushi.e 82
push.v [array]self.argument
pop.v.v self.philosopherStone
pushi.e -15
pushi.e 83
push.v [array]self.argument
pop.v.v self.pieceOfCloth
pushi.e -15
pushi.e 84
push.v [array]self.argument
pop.v.v self.predatoryInstinct
pushi.e -15
pushi.e 85
push.v [array]self.argument
pop.v.v self.radiance
pushi.e -15
pushi.e 86
push.v [array]self.argument
pop.v.v self.rabbitFoot
pushi.e -15
pushi.e 87
push.v [array]self.argument
pop.v.v self.armor
pushi.e -15
pushi.e 88
push.v [array]self.argument
pop.v.v self.grapeDrink
pushi.e -15
pushi.e 89
push.v [array]self.argument
pop.v.v self.magicStick
pushi.e -15
pushi.e 90
push.v [array]self.argument
pop.v.v self.damagedShell
pushi.e -15
pushi.e 91
push.v [array]self.argument
pop.v.v self.sock
pushi.e -15
pushi.e 92
push.v [array]self.argument
pop.v.v self.sweetDreams
pushi.e -15
pushi.e 93
push.v [array]self.argument
pop.v.v self.powerlessShot
pushi.e -15
pushi.e 94
push.v [array]self.argument
pop.v.v self.darkWhispers
pushi.e -15
pushi.e 95
push.v [array]self.argument
pop.v.v self.magnyfyingGlass
pushi.e -15
pushi.e 96
push.v [array]self.argument
pop.v.v self.lute
pushi.e -15
pushi.e 97
push.v [array]self.argument
pop.v.v self.murkyWater
pushi.e -15
pushi.e 98
push.v [array]self.argument
pop.v.v self.babyBottle
pushi.e -15
pushi.e 99
push.v [array]self.argument
pop.v.v self.bandage
pushi.e -15
pushi.e 100
push.v [array]self.argument
pop.v.v self.dynamite
pushi.e -15
pushi.e 101
push.v [array]self.argument
pop.v.v self.feverishDefence
pushi.e -15
pushi.e 102
push.v [array]self.argument
pop.v.v self.tapeworm
pushi.e -15
pushi.e 103
push.v [array]self.argument
pop.v.v self.ratTail
pushi.e -15
pushi.e 104
push.v [array]self.argument
pop.v.v self.starShapedNose
pushi.e -15
pushi.e 105
push.v [array]self.argument
pop.v.v self.straw
pushi.e -15
pushi.e 106
push.v [array]self.argument
pop.v.v self.thorn
pushi.e -15
pushi.e 107
push.v [array]self.argument
pop.v.v self.tooth
pushi.e -15
pushi.e 108
push.v [array]self.argument
pop.v.v self.pigeonHead
exit.i

:[19]
push.i [function]gml_Script____struct___68@create_s_effect@create_s_effect
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___68
call.i @@NewGMLObject@@(argc=110)
pop.v.v global.effect
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.darkWhispers
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.rabbitFoot
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.feverishDefence
call.i @@NewGMLArray@@(argc=3)
pop.v.v local._effectDisabledDemo
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.effectRandom
pushglb.v global.effect
call.i variable_struct_get_names(argc=1)
pop.v.v local._effectKey
pushi.e 1
conv.b.v
pushloc.v local._effectKey
call.i array_sort(argc=2)
popz.v
pushi.e 0
pop.v.i local._i

:[20]
pushloc.v local._i
pushglb.v global.effect
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [33]

:[21]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._effectKey
pop.v.v local._k
pushloc.v local._k
pushglb.v global.effect
call.i variable_struct_get(argc=2)
pop.v.v local._v
pushloc.v local._k
pushloc.v local._v
pushi.e -9
pop.v.v [stacktop]self.structName
pushi.e 1
pop.v.b local._add
pushi.e 0
pop.v.i local._c

:[22]
pushloc.v local._c
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.condition
call.i array_length(argc=1)
cmp.v.v LT
bf [26]

:[23]
pushloc.v local._v
pushi.e -9
pushloc.v local._c
conv.v.i
push.v [array]self.condition
push.l 0
cmp.l.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.b local._add
b [25]

:[25]
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [22]

:[26]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.effectRarity
push.l 0
cmp.l.v EQ
bf [28]

:[27]
pushi.e 0
pop.v.b local._add

:[28]
pushloc.v local._v
pushloc.v local._effectDisabledDemo
call.i array_contains(argc=2)
conv.v.b
bf [30]

:[29]
pushi.e 0
pop.v.b local._add

:[30]
pushloc.v local._add
conv.v.b
bf [32]

:[31]
pushloc.v local._v
pushglb.v global.effectRandom
call.i array_push(argc=2)
popz.v

:[32]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [20]

:[33]
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.kaboom
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dynamite
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.thorn
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.poison
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.ratTail
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.dictatorship
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldCoin
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusion
call.i @@NewGMLArray@@(argc=1)
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.babyBottle
pushi.e -9
pop.v.v [stacktop]self.linkedEffectTooltip
exit.i

:[34]
push.i [function]gml_Script_create_s_effect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.create_s_effect
popz.v

:[end]