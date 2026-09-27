; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.sprite_index
call.i sprite_get_speed(argc=1)
pop.v.v local._spriteSpeed
push.v builtin.sprite_index
call.i sprite_get_number(argc=1)
pop.v.v local._spriteLength
pushloc.v local._spriteLength
pushloc.v local._spriteSpeed
div.v.v
pop.v.v local._totalTime
push.s "ease-out"@8749
conv.s.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._totalTime
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v builtin.deleteTimer
push.v builtin.deleteTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v

:[end]