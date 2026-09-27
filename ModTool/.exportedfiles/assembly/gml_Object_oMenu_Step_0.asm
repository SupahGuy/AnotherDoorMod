; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [18]

:[1]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [5]

:[2]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.turn_off
callv.v 0
popz.v
pushref.i 44
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[4]
popenv [3]
pushi.e 0
pop.v.b builtin.clickToJoinTxtShow
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
push.v builtin.btnCreateGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnJoinGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnSettings
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnCredits
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnQuit
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnDiscord
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnWihslist
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v

:[5]
push.v builtin.btnCreateGame
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [7]

:[6]
push.l 1
pop.v.l builtin.stateNext

:[7]
push.v builtin.btnJoinGame
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [9]

:[8]
push.l 5
pop.v.l builtin.stateNext

:[9]
push.v builtin.btnSettings
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [13]

:[10]
push.l 7
pop.v.l builtin.stateNext
pushref.i 54
pushi.e -9
pushenv [12]

:[11]
call.i @@This@@(argc=0)
push.v builtin.switch_state
callv.v 0
popz.v

:[12]
popenv [11]

:[13]
push.v builtin.btnCredits
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [15]

:[14]
push.l 9
pop.v.l builtin.stateNext

:[15]
push.v builtin.btnQuit
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [17]

:[16]
call.i game_end(argc=0)
popz.v

:[17]
b [118]

:[18]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [32]

:[19]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [23]

:[20]
pushref.i 44
pushi.e -9
pushenv [22]

:[21]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[22]
popenv [21]
pushi.e 0
pop.v.b builtin.clickToJoinTxtShow
pushi.e 0
pushglb.v global.networkingManager
pushi.e -9
pop.v.b [stacktop]self.isNetworkGame
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
push.v builtin.btnChooseLocal
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnChooseOnline
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnReturn
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.turn_off
callv.v 0
popz.v

:[23]
push.v builtin.btnChooseLocal
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [25]

:[24]
push.l 2
pop.v.l builtin.stateNext

:[25]
push.v builtin.btnChooseOnline
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [29]

:[26]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.is_steam_init
callv.v 0
conv.v.b
bf [28]

:[27]
push.l 3
pop.v.l builtin.stateNext
b [29]

:[28]
push.l 8
pop.v.l builtin.stateNext
push.s "lobby._steamDisconnected"@10086
pop.v.s builtin.errorMessageLabel
push.l 1
pop.v.l builtin.errorCallbackState

:[29]
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [31]

:[30]
push.l 0
pop.v.l builtin.stateNext

:[31]
b [118]

:[32]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [45]

:[33]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [37]

:[34]
pushref.i 44
pushi.e -9
pushenv [36]

:[35]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[36]
popenv [35]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
push.v builtin.btnLaunchGame
pushglb.v global.uiPos
pushi.e -9
pushi.e 3
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v
push.v builtin.btnLaunchGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnReturn
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
pushi.e 1
pop.v.b builtin.clickToJoinTxtShow
pushi.e 1
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v

:[37]
push.v builtin.btnLaunchGame
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [39]

:[38]
call.i @@This@@(argc=0)
push.v builtin.launch_game
callv.v 0
popz.v

:[39]
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [44]

:[40]
pushglb.v global.playersCount
pushi.e 1
sub.i.v
pop.v.v local._i

:[41]
pushloc.v local._i
pushi.e 1
cmp.i.v GTE
bf [43]

:[42]
pushloc.v local._i
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.remove
callv.v 1
popz.v
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
b [41]

:[43]
pushi.e 0
conv.b.v
call.i gml_Script_InputPartySetJoin(argc=1)
popz.v
push.l 1
pop.v.l builtin.stateNext

:[44]
b [118]

:[45]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [49]

:[46]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [48]

:[47]
pushref.i 49
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[48]
b [118]

:[49]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [68]

:[50]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [56]

:[51]
call.i @@This@@(argc=0)
push.v builtin.update_screen_players
callv.v 0
popz.v
pushref.i 44
pushi.e -9
pushenv [53]

:[52]
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[53]
popenv [52]
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
pushglb.v global.isHost
conv.v.b
bf [55]

:[54]
push.v builtin.btnLaunchGame
pushglb.v global.uiPos
pushi.e -9
pushi.e 2
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v
push.v builtin.btnLaunchGame
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnInviteFriends
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v

:[55]
push.v builtin.btnReturn
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.uiPos
pushi.e -9
pushi.e 0
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.x
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v

:[56]
push.v builtin.btnLaunchGame
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [58]

:[57]
call.i @@This@@(argc=0)
push.v builtin.launch_game
callv.v 0
popz.v

:[58]
push.v builtin.btnInviteFriends
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [62]

:[59]
call.i steam_is_overlay_enabled(argc=0)
conv.v.b
bf [61]

:[60]
call.i steam_lobby_activate_invite_overlay(argc=0)
popz.v
b [62]

:[61]
pushi.e 0
conv.i.v
call.i steam_activate_overlay(argc=1)
popz.v

:[62]
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [67]

:[63]
pushglb.v global.isHost
conv.v.b
bf [65]

:[64]
push.l 1
pop.v.l builtin.stateNext
b [66]

:[65]
push.l 5
pop.v.l builtin.stateNext

:[66]
pushglb.v global.networkingManager
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v

:[67]
b [118]

:[68]
push.v builtin.state
push.l 5
cmp.l.v EQ
bf [77]

:[69]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [73]

:[70]
pushglb.v global.tvState
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.turn_off
callv.v 1
popz.v
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
pushref.i 41
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v
pushref.i 44
pushi.e -9
pushenv [72]

:[71]
pushi.e 0
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.switch_light
callv.v 1
popz.v

:[72]
popenv [71]

:[73]
pushref.i 41
call.i instance_exists(argc=1)
conv.v.b
bf [76]

:[74]
pushref.i 41
pushi.e -9
push.v [stacktop]self.btnReturnFromLobby
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [76]

:[75]
pushref.i 41
dup.v 0 8
dup.v 0
push.v stacktop.clean_lobby_element
callv.v 0
popz.v
push.l 0
pop.v.l builtin.stateNext

:[76]
b [118]

:[77]
push.v builtin.state
push.l 6
cmp.l.v EQ
bf [83]

:[78]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [82]

:[79]
pushref.i 41
call.i instance_exists(argc=1)
conv.v.b
bf [81]

:[80]
pushref.i 41
dup.v 0 8
dup.v 0
push.v stacktop.clean_lobby_element
callv.v 0
popz.v

:[81]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.noise
callv.v 0
popz.v

:[82]
b [118]

:[83]
push.v builtin.state
push.l 7
cmp.l.v EQ
bf [85]

:[84]
b [118]

:[85]
push.v builtin.state
push.l 8
cmp.l.v EQ
bf [91]

:[86]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [90]

:[87]
pushglb.v global.tvState
dup.v 0 8
dup.v 0
push.v stacktop.lobby_error
callv.v 0
popz.v
push.v builtin.errorMessageLabel
push.v builtin.errorCallbackState
b [89]

> gml_Script____struct___443@gml_Object_oMenu_Step_0 (locals=0, argc=0)
:[88]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.errorCallbackState
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.errorMessageLabel
exit.i

:[89]
push.i [function]gml_Script____struct___443@gml_Object_oMenu_Step_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___443
call.i @@NewGMLObject@@(argc=3)
pushref.i 20
pushglb.v global.depthManager
push.s "errorModal"@10420
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
popz.v

:[90]
b [118]

:[91]
push.v builtin.state
push.l 9
cmp.l.v EQ
bf [118]

:[92]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [94]

:[93]
call.i @@This@@(argc=0)
push.v builtin.hide_btn
callv.v 0
popz.v
pushi.e 0
pop.v.i builtin.offsetCredit
pushi.e 0
pop.v.i builtin.creditTokenCounter
pushi.e 0
pop.v.i builtin.creditClickHidden
push.v builtin.btnDiscord
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v builtin.btnWihslist
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v builtin.btnReturn
pushglb.v global.uiPos
pushi.e -9
pushi.e 4
push.v [array]self.menuBtn
pushi.e -9
push.v [stacktop]self.y
pushbltn.v builtin.room_width
pushi.e 32
sub.i.v
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
sub.v.v
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v

:[94]
pushref.i 11
pushi.e -9
pushenv [105]

:[95]
push.l 1
conv.l.v
push.l 6
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [101]

:[96]
push.v other.creditClickHidden
push.e 1
add.i.v
pop.v.v other.creditClickHidden
push.v other.creditClickHidden
pushi.e 3
cmp.i.v EQ
bf [100]

:[97]
pushbltn.v builtin.room_width
pushi.e 80
add.i.v
pop.v.v local._x
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._y
push.l 12
conv.l.v
pushi.e -1
conv.i.v
b [99]

> gml_Script____struct___444@gml_Object_oMenu_Step_0 (locals=0, argc=0)
:[98]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.theType
exit.i

:[99]
push.i [function]gml_Script____struct___444@gml_Object_oMenu_Step_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___444
call.i @@NewGMLObject@@(argc=3)
pushref.i 60
pushglb.v global.depthManager
push.s "token"@4998
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushloc.v local._y
pushloc.v local._x
call.i instance_create_depth(argc=5)
popz.v
call.i @@Other@@(argc=0)
dup.v 0 8
dup.v 0
push.v stacktop.throw_token
callv.v 0
popz.v

:[100]
b [105]

:[101]
push.l 1
conv.l.v
push.l 0
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [103]

:[102]
push.v other.offsetCredit
pushi.e 10
add.i.v
pop.v.v other.offsetCredit
b [105]

:[103]
push.l 1
conv.l.v
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
bf [105]

:[104]
push.v other.offsetCredit
pushi.e 10
sub.i.v
pop.v.v other.offsetCredit

:[105]
popenv [95]
pushref.i 60
pushi.e -9
pushenv [111]

:[106]
call.i @@This@@(argc=0)
push.v builtin.is_pressed
callv.v 0
conv.v.b
bf [108]

:[107]
push.v builtin.state
push.l 2
cmp.l.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
call.i @@Other@@(argc=0)
dup.v 0 8
dup.v 0
push.v stacktop.throw_token
callv.v 0
popz.v
push.v other.creditTokenCounter
push.e 1
add.i.v
pop.v.v other.creditTokenCounter

:[111]
popenv [106]
push.v builtin.offsetCredit
push.d 0.25
sub.d.v
pop.v.v builtin.offsetCredit
push.v builtin.offsetCredit
pushi.e 0
conv.i.v
call.i min(argc=2)
pop.v.v builtin.offsetCredit
push.v builtin.btnReturn
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bt [113]

:[112]
push.v builtin.offsetCredit
push.v builtin.creditTxt
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
pushbltn.v builtin.room_height
add.v.v
pushi.e 96
add.i.v
pushi.e 100
add.i.v
add.v.v
pushi.e 0
cmp.i.v LT
b [114]

:[113]
push.e 1

:[114]
bf [118]

:[115]
push.l 0
pop.v.l builtin.stateNext
pushref.i 60
pushi.e -9
pushenv [117]

:[116]
call.i instance_destroy(argc=0)
popz.v

:[117]
popenv [116]
pushi.e 0
pop.v.i builtin.offsetCredit
pushi.e 0
pop.v.i builtin.creditClickHidden

:[118]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state
push.v builtin.btnDiscord
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [120]

:[119]
push.s "https://discord.gg/jcuFKMrrEG"@10423
conv.s.v
call.i url_open(argc=1)
popz.v

:[120]
push.v builtin.btnWihslist
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [end]

:[121]
push.s "https://store.steampowered.com/app/2786760/Another_Door/"@10425
conv.s.v
call.i url_open(argc=1)
popz.v

:[end]