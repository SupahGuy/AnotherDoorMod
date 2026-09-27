function InputSetHotswap(arg0)
{
    static _system = __InputSystem();
    
    with (_system)
    {
        if (arg0 == __hotswap)
            exit;
        
        if (arg0)
        {
            var _i = 1;
            
            repeat (3)
            {
                InputPlayerSetDevice(-666, _i);
                _i++;
            }
            
            __hotswap = true;
        }
        else
        {
            __hotswap = false;
        }
    }
}
