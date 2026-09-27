:[0]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushglb.v global.particlesSys
call.i part_system_drawit(argc=1)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]