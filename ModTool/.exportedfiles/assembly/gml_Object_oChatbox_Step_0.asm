:[0]
pushref.i 11
pushi.e -9
pushenv [11]

:[1]
push.v builtin.chatBoxCreatedThisStep
conv.v.b
bf [3]

:[2]
popenv <drop>
exit.i

:[3]
push.v other.number
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
bf [5]

:[4]
popenv <drop>
exit.i

:[5]
push.v other.theButton
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[6]
push.v other.theButton
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bt [8]

:[7]
push.l 1
conv.l.v
push.l 10
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.is_verb_active
callv.v 2
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
call.i @@Other@@(argc=0)
dup.v 0 8
dup.v 0
push.v stacktop.send_message
callv.v 0
popz.v
call.i @@Other@@(argc=0)
call.i instance_destroy(argc=1)
popz.v

:[11]
popenv [1]

:[end]