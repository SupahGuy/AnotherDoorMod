function InputPlayerSwap(arg0, arg1)
{
    static _playerArray = __InputSystemPlayerArray();
    
    var _originalA = _playerArray[arg0];
    var _originalB = _playerArray[arg1];
    _originalA.__playerIndex = arg1;
    _originalB.__playerIndex = arg0;
    _playerArray[arg0] = _originalB;
    _playerArray[arg1] = _originalA;
}
