:[0]
b [7]

> gml_Script___scribble_config_colours (locals=0, argc=0)
:[1]
isstaticok.e
bt [5]

:[2]
setstatic.e
push.i 15018832
conv.i.v
call.i gml_Script_scribble_rgb_to_bgr(argc=1)
push.i 7571064
conv.i.v
call.i gml_Script_scribble_rgb_to_bgr(argc=1)
push.i 5294197
conv.i.v
call.i gml_Script_scribble_rgb_to_bgr(argc=1)
push.i 16726016
conv.i.v
call.i gml_Script_scribble_rgb_to_bgr(argc=1)
b [4]

> gml_Script____struct___49@__scribble_config_colours@__scribble_config_colours (locals=0, argc=0)
:[3]
call.i @@SetStatic@@(argc=0)
push.i 16776960
pop.v.i self.c_aqua
pushi.e 0
pop.v.i self.c_black
push.i 16711680
pop.v.i self.c_blue
push.i 4210752
pop.v.i self.c_dkgray
push.i 4210752
pop.v.i self.c_dkgrey
push.i 16711935
pop.v.i self.c_fuchsia
push.i 8421504
pop.v.i self.c_gray
push.i 32768
pop.v.i self.c_green
push.i 8421504
pop.v.i self.c_gray
push.i 8421504
pop.v.i self.c_grey
push.i 65280
pop.v.i self.c_lime
push.i 12632256
pop.v.i self.c_ltgray
push.i 12632256
pop.v.i self.c_ltgrey
pushi.e 128
pop.v.i self.c_maroon
push.i 8388608
pop.v.i self.c_navy
push.i 32896
pop.v.i self.c_olive
push.i 4235519
pop.v.i self.c_orange
push.i 8388736
pop.v.i self.c_purple
pushi.e 255
pop.v.i self.c_red
push.i 12632256
pop.v.i self.c_silver
push.i 8421376
pop.v.i self.c_teal
push.i 16777215
pop.v.i self.c_white
push.i 65535
pop.v.i self.c_yellow
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.c_coquelicot
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.c_smaragdine
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.c_xanadu
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.c_amaranth
exit.i

:[4]
push.i [function]gml_Script____struct___49@__scribble_config_colours@__scribble_config_colours
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___49
call.i @@NewGMLObject@@(argc=5)
pop.v.v static._colours

:[5]
push.v static._colours
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___scribble_config_colours
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_config_colours
popz.v

:[end]