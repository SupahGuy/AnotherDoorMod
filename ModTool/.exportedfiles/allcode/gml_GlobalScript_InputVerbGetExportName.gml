function InputVerbGetExportName(arg0)
{
    static _verbDefinitionArray = __InputSystem().__verbDefinitionArray;
    
    var _verbDefinition = _verbDefinitionArray[arg0];
    return (_verbDefinition == undefined) ? undefined : _verbDefinition.__exportName;
}
