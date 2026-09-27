if (variable_global_exists("__prng_ready"))
    exit;

global.__prng_ready = true;
global.__ptrt_WELL512 = ["PRNG/WELL512"];
global.__ptrt_MINSTD = ["PRNG/MINSTD"];
global.__ptrt_Xorshift64 = ["PRNG/Xorshift64"];
global.__ptrt_Xorshift32 = ["PRNG/Xorshift32"];
global.__ptrt_Rand0 = ["PRNG/Rand0"];
