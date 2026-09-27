:[0]
push.s "__prng_ready"@11589
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pop.v.b global.__prng_ready
push.s "PRNG/WELL512"@11590
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__ptrt_WELL512
push.s "PRNG/MINSTD"@11591
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__ptrt_MINSTD
push.s "PRNG/Xorshift64"@11592
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__ptrt_Xorshift64
push.s "PRNG/Xorshift32"@11593
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__ptrt_Xorshift32
push.s "PRNG/Rand0"@11594
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v global.__ptrt_Rand0

:[end]