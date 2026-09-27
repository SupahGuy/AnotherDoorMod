:[0]
b [361]

> gml_Script_players_manager (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.playersList
b [10]

> gml_Script_anon@360@players_manager@players_manager (locals=2, argc=1)
:[2]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._char
pushloc.v local._char
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [8]

:[3]
pushi.e 0
pop.v.i local._i

:[4]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [8]

:[5]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.v arg.argument0
cmp.v.v EQ
bf [7]

:[6]
pushloc.v local._i
ret.v

:[7]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [4]

:[8]
pushi.e -1
conv.i.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_anon@360@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.who_has_token_type
b [19]

> gml_Script_anon@929@players_manager@players_manager (locals=2, argc=1)
:[11]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._char
pushloc.v local._char
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [17]

:[12]
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [17]

:[14]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.v arg.argument0
cmp.v.v EQ
bf [16]

:[15]
pushi.e 1
conv.b.v
ret.v

:[16]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[17]
pushi.e 0
conv.b.v
ret.v

:[18]
exit.i

:[19]
push.i [function]gml_Script_anon@929@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.someone_has_token_type
b [30]

> gml_Script_anon@1433@players_manager@players_manager (locals=2, argc=0)
:[20]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._characters
pushi.e 0
pop.v.i local._i

:[21]
pushloc.v local._i
pushloc.v local._characters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [28]

:[22]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [24]

:[23]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._characters
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 17
cmp.l.v NEQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 1
conv.b.v
ret.v

:[27]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [21]

:[28]
pushi.e 0
conv.b.v
ret.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_anon@1433@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_anyone_fighting
b [38]

> gml_Script_anon@1724@players_manager@players_manager (locals=2, argc=0)
:[31]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._characters
pushi.e 0
pop.v.i local._i

:[32]
pushloc.v local._i
pushloc.v local._characters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [36]

:[33]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
not.b
bf [35]

:[34]
pushi.e 0
conv.b.v
ret.v

:[35]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [32]

:[36]
pushi.e 1
conv.b.v
ret.v

:[37]
exit.i

:[38]
push.i [function]gml_Script_anon@1724@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_everybody_fighthing
b [46]

> gml_Script_anon@1956@players_manager@players_manager (locals=2, argc=0)
:[39]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._characters
pushi.e 0
pop.v.i local._i

:[40]
pushloc.v local._i
pushloc.v local._characters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [44]

:[41]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._characters
dup.v 0 8
dup.v 0
push.v stacktop.is_alive
callv.v 0
conv.v.b
not.b
bf [43]

:[42]
pushi.e 0
conv.b.v
ret.v

:[43]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [40]

:[44]
pushi.e 1
conv.b.v
ret.v

:[45]
exit.i

:[46]
push.i [function]gml_Script_anon@1956@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_everybody_alive
b [54]

> gml_Script_anon@2274@players_manager@players_manager (locals=2, argc=0)
:[47]
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._characters
pushi.e 0
pop.v.i local._i

:[48]
pushloc.v local._i
pushloc.v local._characters
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [52]

:[49]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._characters
pushi.e -9
push.v [stacktop]self.hp
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
pushi.e 1
conv.b.v
ret.v

:[51]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [48]

:[52]
pushi.e 0
conv.b.v
ret.v

:[53]
exit.i

:[54]
push.i [function]gml_Script_anon@2274@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.does_anyone_have_hp
b [57]

> gml_Script_anon@2517@players_manager@players_manager (locals=0, argc=1)
:[55]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.hasActed
ret.v

:[56]
exit.i

:[57]
push.i [function]gml_Script_anon@2517@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.has_acted
b [65]

> gml_Script_anon@2610@players_manager@players_manager (locals=1, argc=0)
:[58]
pushi.e 0
pop.v.i local._i

:[59]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [63]

:[60]
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.has_acted
callv.v 1
conv.v.b
not.b
bf [62]

:[61]
pushi.e 0
conv.b.v
ret.v

:[62]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [59]

:[63]
pushi.e 1
conv.b.v
ret.v

:[64]
exit.i

:[65]
push.i [function]gml_Script_anon@2610@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.has_everyone_acted
b [81]

> gml_Script_anon@3045@players_manager@players_manager (locals=1, argc=1)
:[66]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [68]

:[67]
pushi.e 0
pop.v.b builtin.argument0

:[68]
pushi.e 0
pop.v.i local._i

:[69]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [79]

:[70]
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.has_acted
callv.v 1
conv.v.b
not.b
bf [75]

:[71]
push.v arg.argument0
conv.v.b
bf [73]

:[72]
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
push.v [stacktop]self.theType
push.l 3
cmp.l.v EQ
b [74]

:[73]
push.e 0

:[74]
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 0
conv.b.v
ret.v

:[78]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [69]

:[79]
pushi.e 1
conv.b.v
ret.v

:[80]
exit.i

:[81]
push.i [function]gml_Script_anon@3045@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.has_every_fighters_acted
b [95]

> gml_Script_anon@3403@players_manager@players_manager (locals=3, argc=1)
:[82]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.effect_index
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.tapeworm
dup.e 2 8
callv.v 1
pushi.e -1
cmp.i.v NEQ
bf [84]

:[83]
pushi.e 1
conv.b.v
ret.v

:[84]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
pop.v.v local._theChoice
call.i @@This@@(argc=0)
push.v builtin.get_fighters
callv.v 0
pop.v.v local._fighters
pushi.e 0
pop.v.i local._i

:[85]
pushloc.v local._i
pushloc.v local._fighters
call.i array_length(argc=1)
cmp.v.v LT
bf [93]

:[86]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -4
cmp.i.v NEQ
bf [89]

:[87]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
cmp.v.v NEQ
bf [89]

:[88]
pushloc.v local._theChoice
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._fighters
pushi.e -9
push.v [stacktop]self.number
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
cmp.v.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 1
conv.b.v
ret.v

:[92]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [85]

:[93]
pushi.e 0
conv.b.v
ret.v

:[94]
exit.i

:[95]
push.i [function]gml_Script_anon@3403@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.someone_is_on_same_card
b [98]

> gml_Script_anon@4075@players_manager@players_manager (locals=0, argc=1)
:[96]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.action
ret.v

:[97]
exit.i

:[98]
push.i [function]gml_Script_anon@4075@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_action
b [101]

> gml_Script_anon@4163@players_manager@players_manager (locals=0, argc=1)
:[99]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.actionTurnId
ret.v

:[100]
exit.i

:[101]
push.i [function]gml_Script_anon@4163@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_action_turn
b [119]

> gml_Script_anon@4385@players_manager@players_manager (locals=2, argc=1)
:[102]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
dup.v 0
push.l 3
cmp.l.v EQ
bt [108]

:[103]
dup.v 0
push.l 4
cmp.l.v EQ
bt [109]

:[104]
dup.v 0
push.l 5
cmp.l.v EQ
bt [110]

:[105]
dup.v 0
push.l 6
cmp.l.v EQ
bt [111]

:[106]
b [112]

:[107]
b [114]

:[108]
pushi.e 0
pop.v.i local._cardNumber
b [114]

:[109]
pushi.e 1
pop.v.i local._cardNumber
b [114]

:[110]
pushi.e 2
pop.v.i local._cardNumber
b [114]

:[111]
pushi.e 3
pop.v.i local._cardNumber
b [114]

:[112]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
push.v local.$$$$temp$$$$
ret.v

:[113]
b [114]

:[114]
popz.v
pushglb.v global.actionCards
pushi.e -9
push.v [stacktop]self.theHand
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushloc.v local._cardNumber
cmp.v.v GTE
bf [117]

:[115]
pushglb.v global.actionCards
pushi.e -9
pushloc.v local._cardNumber
conv.v.i
push.v [array]self.theHand
pushi.e -9
push.v [stacktop]self.isRightmostCard
conv.v.b
bf [117]

:[116]
pushi.e 1
conv.b.v
ret.v

:[117]
pushi.e 0
conv.b.v
ret.v

:[118]
exit.i

:[119]
push.i [function]gml_Script_anon@4385@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_action_rightmost_choice
b [137]

> gml_Script_anon@5126@players_manager@players_manager (locals=2, argc=1)
:[120]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
dup.v 0
push.l 3
cmp.l.v EQ
bt [126]

:[121]
dup.v 0
push.l 4
cmp.l.v EQ
bt [127]

:[122]
dup.v 0
push.l 5
cmp.l.v EQ
bt [128]

:[123]
dup.v 0
push.l 6
cmp.l.v EQ
bt [129]

:[124]
b [130]

:[125]
b [132]

:[126]
pushi.e 0
pop.v.i local._cardNumber
b [132]

:[127]
pushi.e 1
pop.v.i local._cardNumber
b [132]

:[128]
pushi.e 2
pop.v.i local._cardNumber
b [132]

:[129]
pushi.e 3
pop.v.i local._cardNumber
b [132]

:[130]
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
push.v local.$$$$temp$$$$
ret.v

:[131]
b [132]

:[132]
popz.v
pushglb.v global.actionCards
pushi.e -9
push.v [stacktop]self.theHand
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pushloc.v local._cardNumber
cmp.v.v GTE
bf [135]

:[133]
pushglb.v global.actionCards
pushi.e -9
pushloc.v local._cardNumber
conv.v.i
push.v [array]self.theHand
pushi.e -9
push.v [stacktop]self.isLeftmostCard
conv.v.b
bf [135]

:[134]
pushi.e 1
conv.b.v
ret.v

:[135]
pushi.e 0
conv.b.v
ret.v

:[136]
exit.i

:[137]
push.i [function]gml_Script_anon@5126@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_action_leftmost_choice
b [140]

> gml_Script_anon@5817@players_manager@players_manager (locals=0, argc=1)
:[138]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
push.l 1
cmp.l.v EQ
conv.b.v
ret.v

:[139]
exit.i

:[140]
push.i [function]gml_Script_anon@5817@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_leaving
b [148]

> gml_Script_anon@5920@players_manager@players_manager (locals=1, argc=0)
:[141]
pushi.e 0
pop.v.i local._p

:[142]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [146]

:[143]
pushloc.v local._p
call.i @@This@@(argc=0)
push.v builtin.is_leaving
callv.v 1
conv.v.b
bf [145]

:[144]
pushi.e 1
conv.b.v
ret.v

:[145]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [142]

:[146]
pushi.e 0
conv.b.v
ret.v

:[147]
exit.i

:[148]
push.i [function]gml_Script_anon@5920@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_anyone_leaving
b [151]

> gml_Script_anon@6163@players_manager@players_manager (locals=0, argc=1)
:[149]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
push.l 2
cmp.l.v EQ
conv.b.v
ret.v

:[150]
exit.i

:[151]
push.i [function]gml_Script_anon@6163@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_staying
b [159]

> gml_Script_anon@6269@players_manager@players_manager (locals=1, argc=0)
:[152]
pushi.e 0
pop.v.i local._p

:[153]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [157]

:[154]
pushloc.v local._p
call.i @@This@@(argc=0)
push.v builtin.is_staying
callv.v 1
conv.v.b
bf [156]

:[155]
pushi.e 1
conv.b.v
ret.v

:[156]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [153]

:[157]
pushi.e 0
conv.b.v
ret.v

:[158]
exit.i

:[159]
push.i [function]gml_Script_anon@6269@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_anyone_staying
b [170]

> gml_Script_anon@6465@players_manager@players_manager (locals=1, argc=1)
:[160]
pushi.e -4
pop.v.i local._cursor
push.v builtin.playersList
call.i array_length(argc=1)
push.v arg.argument0
pushi.e 1
add.i.v
cmp.v.v GTE
bf [162]

:[161]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [163]

:[162]
push.e 0

:[163]
bf [168]

:[164]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.cursor
call.i instance_exists(argc=1)
conv.v.b
bf [166]

:[165]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.cursor
b [167]

:[166]
pushi.e -4
conv.i.v

:[167]
pop.v.v local._cursor

:[168]
pushloc.v local._cursor
ret.v

:[169]
exit.i

:[170]
push.i [function]gml_Script_anon@6465@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_cursor
b [178]

> gml_Script_anon@6949@players_manager@players_manager (locals=0, argc=1)
:[171]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [173]

:[172]
pushi.e -1
pop.v.i builtin.argument0

:[173]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [176]

:[174]
push.v builtin.playersList
ret.v

:[175]
b [177]

:[176]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
ret.v

:[177]
exit.i

:[178]
push.i [function]gml_Script_anon@6949@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_players
b [202]

> gml_Script_anon@7301@players_manager@players_manager (locals=3, argc=1)
:[179]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [181]

:[180]
pushi.e -1
pop.v.i builtin.argument0

:[181]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [192]

:[182]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayCharacters
pushi.e 0
pop.v.i local._i

:[183]
pushloc.v local._i
push.v builtin.playersList
call.i array_length(argc=1)
cmp.v.v LT
bf [190]

:[184]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [186]

:[185]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.character
pushi.e -4
cmp.i.v NEQ
b [187]

:[186]
push.e 0

:[187]
bf [189]

:[188]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.character
pushloc.v local._arrayCharacters
call.i array_push(argc=2)
popz.v

:[189]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [183]

:[190]
pushloc.v local._arrayCharacters
ret.v

:[191]
b [201]

:[192]
pushi.e -4
pop.v.i local._char
push.v builtin.playersList
call.i array_length(argc=1)
push.v arg.argument0
pushi.e 1
add.i.v
cmp.v.v GTE
bf [194]

:[193]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [195]

:[194]
push.e 0

:[195]
bf [200]

:[196]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.character
call.i instance_exists(argc=1)
conv.v.b
bf [198]

:[197]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.character
b [199]

:[198]
pushi.e -4
conv.i.v

:[199]
pop.v.v local._char

:[200]
pushloc.v local._char
ret.v

:[201]
exit.i

:[202]
push.i [function]gml_Script_anon@7301@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_characters
b [210]

> gml_Script_anon@7936@players_manager@players_manager (locals=3, argc=0)
:[203]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._fighters
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 0
pop.v.v local._chars
pushi.e 0
pop.v.i local._f

:[204]
pushloc.v local._f
pushloc.v local._chars
call.i array_length(argc=1)
cmp.v.v LT
bf [208]

:[205]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._chars
dup.v 0 8
dup.v 0
push.v stacktop.is_in_fight
callv.v 0
conv.v.b
bf [207]

:[206]
pushi.e -7
pushloc.v local._f
conv.v.i
push.v [array]self._chars
pushloc.v local._fighters
call.i array_push(argc=2)
popz.v

:[207]
push.v local._f
push.e 1
add.i.v
pop.v.v local._f
b [204]

:[208]
pushloc.v local._fighters
ret.v

:[209]
exit.i

:[210]
push.i [function]gml_Script_anon@7936@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_fighters
b [215]

> gml_Script_anon@8466@players_manager@players_manager (locals=0, argc=1)
:[211]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [213]

:[212]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[213]
pushi.e 1
conv.i.v
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_first_or_last_player_to_act
callv.v 2
ret.v

:[214]
exit.i

:[215]
push.i [function]gml_Script_anon@8466@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_first_player_to_act
b [220]

> gml_Script_anon@8840@players_manager@players_manager (locals=0, argc=1)
:[216]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [218]

:[217]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[218]
pushi.e -1
conv.i.v
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_first_or_last_player_to_act
callv.v 2
ret.v

:[219]
exit.i

:[220]
push.i [function]gml_Script_anon@8840@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_last_player_to_act
b [249]

> gml_Script_anon@9352@players_manager@players_manager (locals=5, argc=2)
:[221]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [223]

:[222]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[223]
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._playersArray
call.i @@This@@(argc=0)
push.v builtin.get_players
callv.v 0
call.i array_length(argc=1)
pushi.e 0
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.get_players
callv.v 0
pushi.e 0
conv.i.v
pushloc.v local._playersArray
call.i array_copy(argc=5)
popz.v
pushloc.v local._playersArray
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._p

:[224]
pushloc.v local._p
pushi.e 0
cmp.i.v GTE
bf [231]

:[225]
pushi.e -7
pushloc.v local._p
conv.v.i
push.v [array]self._playersArray
pushi.e -9
push.v [stacktop]self.number
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
pop.v.v local._typeOfAction
pushloc.v local._typeOfAction
push.l 13
cmp.l.v EQ
bt [227]

:[226]
pushloc.v local._typeOfAction
push.l 14
cmp.l.v EQ
b [228]

:[227]
push.e 1

:[228]
bf [230]

:[229]
pushi.e 1
conv.i.v
pushloc.v local._p
pushloc.v local._playersArray
call.i array_delete(argc=3)
popz.v

:[230]
push.v local._p
push.e 1
sub.i.v
pop.v.v local._p
b [224]

:[231]
pushloc.v local._playersArray
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [233]

:[232]
pushi.e -1
conv.i.v
ret.v

:[233]
b [236]

> gml_Script_anon@10158@anon@9352@players_manager@players_manager (locals=0, argc=2)
:[234]
push.v builtin._firstOrLast
push.s "actedTime"@7661
conv.s.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_array_sort_by_struct(argc=4)
ret.v

:[235]
exit.i

:[236]
push.i [function]gml_Script_anon@10158@anon@9352@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v arg.argument1
b [238]

> gml_Script____struct___304@anon@9352@players_manager@players_manager (locals=0, argc=0)
:[237]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self._firstOrLast
exit.i

:[238]
push.i [function]gml_Script____struct___304@anon@9352@players_manager@players_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___304
call.i @@NewGMLObject@@(argc=2)
call.i method(argc=2)
pushloc.v local._playersArray
call.i array_sort(argc=2)
popz.v
pushi.e -1
pop.v.i local._playerNumberFound
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [245]

:[239]
pushi.e 0
pop.v.i local._i

:[240]
pushloc.v local._i
pushloc.v local._playersArray
call.i array_length(argc=1)
cmp.v.v LT
bf [244]

:[241]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._playersArray
pushi.e -9
push.v [stacktop]self.number
call.i @@This@@(argc=0)
push.v builtin.get_action
callv.v 1
push.v arg.argument0
cmp.v.v EQ
bf [243]

:[242]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._playersArray
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._playerNumberFound
b [244]

:[243]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [240]

:[244]
b [247]

:[245]
pushloc.v local._playersArray
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [247]

:[246]
pushi.e -7
pushi.e 0
push.v [array]self._playersArray
pushi.e -9
push.v [stacktop]self.number
pop.v.v local._playerNumberFound

:[247]
pushloc.v local._playerNumberFound
ret.v

:[248]
exit.i

:[249]
push.i [function]gml_Script_anon@9352@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_first_or_last_player_to_act
b [257]

> gml_Script_anon@10795@players_manager@players_manager (locals=0, argc=2)
:[250]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [252]

:[251]
pushi.e 0
pop.v.b builtin.argument1

:[252]
push.v arg.argument1
conv.v.b
bf [255]

:[253]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.nameToDraw
ret.v

:[254]
b [256]

:[255]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.name
ret.v

:[256]
exit.i

:[257]
push.i [function]gml_Script_anon@10795@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_name
b [260]

> gml_Script_anon@11089@players_manager@players_manager (locals=0, argc=1)
:[258]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.actedTime
ret.v

:[259]
exit.i

:[260]
push.i [function]gml_Script_anon@11089@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_acted_time
b [272]

> gml_Script_anon@11318@players_manager@players_manager (locals=4, argc=1)
:[261]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [263]

:[262]
pushi.e 0
conv.i.v
call.i device_mouse_x_to_gui(argc=1)
pushglb.v global.zoom
div.v.v
pop.v.v local._x
pushi.e 0
conv.i.v
call.i device_mouse_y_to_gui(argc=1)
pushglb.v global.zoom
div.v.v
pop.v.v local._y
b [264]

:[263]
pushglb.v global.gameWidth
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._x
pushglb.v global.gameHeight
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._y

:[264]
push.v arg.argument0
b [266]

> gml_Script____struct___305@anon@11318@players_manager@players_manager (locals=0, argc=0)
:[265]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
exit.i

:[266]
push.i [function]gml_Script____struct___305@anon@11318@players_manager@players_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___305
call.i @@NewGMLObject@@(argc=2)
pushref.i 11
pushglb.v global.depthManager
push.s "cursor"@4987
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._y
pushloc.v local._x
call.i instance_create_depth(argc=5)
pop.v.v local._cursor
push.v arg.argument0
push.i [function]gml_Script_cPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v local._player
pushloc.v local._cursor
pushloc.v local._player
pushi.e -9
pop.v.v [stacktop]self.cursor
pushloc.v local._player
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.playersList
push.v global.playersCount
push.e 1
add.i.v
pop.v.v global.playersCount
pushref.i 45
call.i instance_exists(argc=1)
conv.v.b
bf [271]

:[267]
pushref.i 45
pushi.e -9
pushenv [270]

:[268]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v GT
bf [270]

:[269]
push.v builtin.btnLaunchGame
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[270]
popenv [268]

:[271]
exit.i

:[272]
push.i [function]gml_Script_anon@11318@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.create_player
b [285]

> gml_Script_anon@12274@players_manager@players_manager (locals=1, argc=3)
:[273]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [275]

:[274]
push.l 0
pop.v.l builtin.argument1

:[275]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [277]

:[276]
pushi.e 0
pop.v.b builtin.argument2

:[277]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_action_turn
callv.v 1
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.turnId
cmp.v.v EQ
bf [279]

:[278]
exit.i

:[279]
pushglb.v global.playersManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [281]

:[280]
pushi.e 0
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.b [stacktop]self.hostValidate
push.l 4
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.l [stacktop]self.stateNext

:[281]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
bf [283]

:[282]
pushglb.v global.networkingManager
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
dup.v 3 8
dup.v 0
push.v stacktop.send_action
callv.v 3
popz.v
b [284]

:[283]
pushbltn.v builtin.current_time
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.apply_action
callv.v 4
popz.v

:[284]
exit.i

:[285]
push.i [function]gml_Script_anon@12274@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.send_action
b [319]

> gml_Script_anon@13252@players_manager@players_manager (locals=2, argc=4)
:[286]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [288]

:[287]
push.l 0
pop.v.l builtin.argument1

:[288]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [290]

:[289]
pushi.e 0
pop.v.b builtin.argument2

:[290]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [292]

:[291]
pushi.e 0
pop.v.i builtin.argument3

:[292]
pushglb.v global.playersManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._char
push.v arg.argument1
push.l 0
cmp.l.v EQ
bf [296]

:[293]
pushi.e 0
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.b [stacktop]self.hasActed
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [295]

:[294]
pushi.e 1
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.b [stacktop]self.hostValidate
push.l 0
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.l [stacktop]self.stateNext

:[295]
b [316]

:[296]
push.v arg.argument1
push.l 14
cmp.l.v EQ
bf [300]

:[297]
pushi.e 1
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.b [stacktop]self.hasActed
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [299]

:[298]
pushi.e 1
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.b [stacktop]self.hostValidate
push.l 6
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.l [stacktop]self.stateNext

:[299]
b [316]

:[300]
pushi.e 1
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.b [stacktop]self.hasActed
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [302]

:[301]
push.v arg.argument2
conv.v.b
b [303]

:[302]
push.e 0

:[303]
bf [305]

:[304]
pushi.e 1
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.b [stacktop]self.hostValidate
push.l 4
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -9
pop.v.l [stacktop]self.stateNext

:[305]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -4
cmp.i.v NEQ
bf [307]

:[306]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.encounter
pushi.e -9
push.v [stacktop]self.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.babayaga
cmp.v.v EQ
b [308]

:[307]
push.e 0

:[308]
bf [316]

:[309]
pushref.i 47
pushi.e -9
pushenv [315]

:[310]
pushi.e 0
pop.v.i local._i

:[311]
pushloc.v local._i
push.v builtin.babaHands
call.i array_length(argc=1)
cmp.v.v LT
bf [315]

:[312]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.babaHands
pushi.e -9
push.v [stacktop]self.number
push.v arg.argument0
cmp.v.v EQ
bf [314]

:[313]
pushi.e 1
conv.b.v
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.move_hand_isba
callv.v 2
popz.v
b [315]

:[314]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [311]

:[315]
popenv [310]

:[316]
push.v arg.argument1
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.action
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.turnId
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.actionTurnId
push.v arg.argument3
pushi.e 0
cmp.i.v NEQ
bf [318]

:[317]
pushbltn.v builtin.current_time
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.actedTime

:[318]
exit.i

:[319]
push.i [function]gml_Script_anon@13252@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_action
b [321]

> gml_Script_anon@15007@players_manager@players_manager (locals=0, argc=2)
:[320]
push.v arg.argument1
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.cursor
exit.i

:[321]
push.i [function]gml_Script_anon@15007@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_cursor
b [325]

> gml_Script_anon@15310@players_manager@players_manager (locals=0, argc=2)
:[322]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [324]

:[323]
pushi.e -4
pop.v.i builtin.argument1

:[324]
push.v arg.argument1
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.character
exit.i

:[325]
push.i [function]gml_Script_anon@15310@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_character
b [329]

> gml_Script_anon@15411@players_manager@players_manager (locals=1, argc=2)
:[326]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [328]

:[327]
push.s ""@61
pop.v.s builtin.argument1

:[328]
push.v arg.argument1
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._currentName
push.s "[["@7691
conv.s.v
push.s "["@572
conv.s.v
pushloc.v local._currentName
call.i string_replace_all(argc=3)
pop.v.v local._currentName
pushloc.v local._currentName
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.name
push.v arg.argument0
push.s "name{0}"@7692
conv.s.v
call.i @@string@@(argc=2)
pushloc.v local._currentName
push.v arg.argument0
push.s "[p{0}]{1}[/c]"@7693
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=2)
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.nameToDraw
exit.i

:[329]
push.i [function]gml_Script_anon@15411@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_name
b [337]

> gml_Script_anon@15876@players_manager@players_manager (locals=1, argc=0)
:[330]
pushi.e 0
pop.v.i local._i

:[331]
pushloc.v local._i
push.v builtin.playersList
call.i array_length(argc=1)
cmp.v.v LT
bf [336]

:[332]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [334]

:[333]
b [335]

:[334]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.nameToDraw
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v
pushloc.v local._i
push.s "name{0}"@7692
conv.s.v
call.i @@string@@(argc=2)
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushi.e -9
push.v [stacktop]self.name
pushloc.v local._i
push.s "[p{0}]{1}[/c]"@7693
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=2)
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.nameToDraw

:[335]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [331]

:[336]
exit.i

:[337]
push.i [function]gml_Script_anon@15876@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text
b [360]

> gml_Script_anon@16446@players_manager@players_manager (locals=4, argc=1)
:[338]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [340]

:[339]
push.v builtin.playersList
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.argument0

:[340]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [342]

:[341]
pushloc.v local._cursor
call.i instance_destroy(argc=1)
popz.v

:[342]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 1
pop.v.v local._character
pushloc.v local._character
pushi.e -4
cmp.i.v NEQ
bf [346]

:[343]
pushloc.v local._character
pushi.e -9
push.v [stacktop]self.token
pushi.e -4
cmp.i.v NEQ
bf [345]

:[344]
pushloc.v local._character
pushi.e -9
push.v [stacktop]self.token
call.i instance_destroy(argc=1)
popz.v

:[345]
pushloc.v local._character
dup.v 0 8
dup.v 0
push.v stacktop.delete_effect
callv.v 0
popz.v
pushloc.v local._character
call.i instance_destroy(argc=1)
popz.v

:[346]
pushi.e 1
conv.i.v
push.v arg.argument0
push.v builtin.playersList
call.i array_delete(argc=3)
popz.v
push.v global.playersCount
push.e 1
sub.i.v
pop.v.v global.playersCount
pushref.i 45
call.i instance_exists(argc=1)
conv.v.b
bf [351]

:[347]
pushref.i 45
pushi.e -9
pushenv [350]

:[348]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v LTE
bf [350]

:[349]
push.v builtin.btnLaunchGame
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[350]
popenv [348]

:[351]
pushglb.v global.__ElementController
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.reset
callv.v 1
popz.v
push.v arg.argument0
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
pushi.e 0
pop.v.i local._pn

:[352]
pushloc.v local._pn
pushglb.v global.playersCount
cmp.v.v LT
bf [359]

:[353]
pushloc.v local._pn
pushi.e -1
pushloc.v local._pn
conv.v.i
push.v [array]self.playersList
pushi.e -9
pop.v.v [stacktop]self.number
pushloc.v local._pn
call.i @@This@@(argc=0)
push.v builtin.get_characters
callv.v 1
pop.v.v local._char
pushloc.v local._char
pushi.e -4
cmp.i.v NEQ
bf [356]

:[354]
pushloc.v local._pn
pushloc.v local._char
pushi.e -9
pop.v.v [stacktop]self.number
pushloc.v local._char
dup.v 0 8
dup.v 0
push.v stacktop.set_sprite
callv.v 0
popz.v
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushi.e -4
cmp.i.v NEQ
bf [356]

:[355]
pushloc.v local._char
pushi.e -9
push.v [stacktop]self.token
pushloc.v local._pn
dup.v 1 8
dup.v 0
push.v stacktop.set_number
callv.v 1
popz.v

:[356]
pushloc.v local._pn
call.i @@This@@(argc=0)
push.v builtin.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [358]

:[357]
pushloc.v local._pn
pushloc.v local._cursor
pushi.e -9
pop.v.v [stacktop]self.number
pushloc.v local._cursor
dup.v 0 8
dup.v 0
push.v stacktop.set_sprite
callv.v 0
popz.v
pushloc.v local._cursor
dup.v 0 8
dup.v 0
push.v stacktop.update_text
callv.v 0
popz.v

:[358]
push.v local._pn
push.e 1
add.i.v
pop.v.v local._pn
b [352]

:[359]
call.i @@This@@(argc=0)
push.v builtin.update_text
callv.v 0
popz.v
exit.i

:[360]
push.i [function]gml_Script_anon@16446@players_manager@players_manager
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.remove
exit.i

:[361]
push.i [function]gml_Script_players_manager
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.players_manager
popz.v
b [363]

> gml_Script_cPlayer (locals=0, argc=1)
:[362]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.number
push.s ""@61
pop.v.s builtin.name
push.v builtin.number
push.s "name{0}"@7692
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.name
push.v builtin.number
push.s "[p{0}]{1}[/c]"@7693
conv.s.v
call.i @@string@@(argc=3)
call.i gml_Script_scribble(argc=2)
pop.v.v builtin.nameToDraw
pushi.e 1
pop.v.b builtin.isConnected
pushi.e 0
pop.v.b builtin.hasActed
pushbltn.v builtin.undefined
pop.v.v builtin.actedTime
push.l 0
pop.v.l builtin.action
pushi.e 0
pop.v.i builtin.actionTurnId
pushi.e -4
pop.v.i builtin.cursor
pushi.e -4
pop.v.i builtin.character
exit.i

:[363]
push.i [function]gml_Script_cPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cPlayer
popz.v

:[end]