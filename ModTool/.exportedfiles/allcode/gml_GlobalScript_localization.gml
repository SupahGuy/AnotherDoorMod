function load_json_file_to_string(arg0)
{
    var _jsonFile = file_text_open_read(arg0);
    var _jsonStr = "";
    var _stringLine = "";
    var _commentPosition = 0;
    
    if (_jsonFile != -1)
    {
        while (!file_text_eof(_jsonFile))
        {
            _stringLine = file_text_readln(_jsonFile);
            _stringLine = string_trim(_stringLine);
            _commentPosition = string_pos("//", _stringLine);
            
            if (_commentPosition > 0)
                _stringLine = string_copy(_stringLine, 1, _commentPosition - 1);
            
            _jsonStr += _stringLine;
        }
        
        file_text_close(_jsonFile);
        return _jsonStr;
    }
    else
    {
        throw "File " + arg0 + " not found!";
    }
}

function set_language()
{
    var _defaultJsonStr = load_json_file_to_string("localization/" + oLocalize.availableLangsStruct.langs[0].stringsFile);
    oLocalize.localizedStrings = json_parse(_defaultJsonStr);
    
    if (global.currentLanguage > 0 && global.currentLanguage <= (array_length(oLocalize.availableLangsStruct.langs) - 1))
    {
        var _localizationJsonStr = load_json_file_to_string("localization/" + oLocalize.availableLangsStruct.langs[global.currentLanguage].stringsFile);
        var _replacementStrings = json_parse(_localizationJsonStr);
        var _sectionNames = variable_struct_get_names(_replacementStrings);
        var _j = array_length(_sectionNames) - 1;
        
        while (_j >= 0)
        {
            var _sectionName = _sectionNames[_j];
            var _sectionData = variable_struct_get(_replacementStrings, _sectionName);
            var _sectionDataArr = variable_struct_get_names(_sectionData);
            var _k = array_length(_sectionDataArr) - 1;
            
            while (_k >= 0)
            {
                var _locReference = _sectionDataArr[_k];
                var _locText = variable_struct_get(variable_struct_get(_replacementStrings, _sectionName), _locReference);
                variable_struct_set(variable_struct_get(oLocalize.localizedStrings, _sectionName), _locReference, _locText);
                _k--;
            }
            
            _j--;
        }
    }
}

function LocPreprocessor(arg0)
{
    var _argsChar = "#";
    var _splitTag = strip_color_tags(arg0);
    var _argument = _splitTag.text;
    var _numberOfLocKey = string_count(".", _argument);
    
    if (_numberOfLocKey == 0)
        return arg0;
    
    var _numberOfArgs = string_count(_argsChar, _argument);
    var _mainString, _args;
    
    if (_numberOfArgs > 0)
    {
        var _argumentSplit = string_split(_argument, _argsChar, false, 1);
        _mainString = _argumentSplit[0];
        _args = string_split(_argumentSplit[1], _argsChar);
        
        for (var _i = 0; _i < array_length(_args); _i++)
        {
            if (string_count(".", _args[_i]) == 0)
            {
                continue;
            }
            else
            {
                var _splitArgs = strip_color_tags(_args[_i]);
                var _argSplit = string_split(_splitArgs.text, ".");
                var _argCat = _argSplit[0];
                var _argKey = _argSplit[1];
                
                if (struct_exists(oLocalize.localizedStrings, _argCat) && struct_exists(variable_struct_get(oLocalize.localizedStrings, _argCat), _argKey))
                {
                    _args[_i] = variable_struct_get(variable_struct_get(oLocalize.localizedStrings, _argCat), _argKey);
                    _args[_i] = string_concat(_splitArgs.startTag, _args[_i], _splitArgs.endTag);
                }
            }
        }
    }
    else
    {
        _mainString = _argument;
    }
    
    var _mainStringSplit = string_split(_mainString, ".");
    var _mainCat = _mainStringSplit[0];
    var _mainKey = _mainStringSplit[1];
    var _string;
    
    if (struct_exists(oLocalize.localizedStrings, _mainCat) && struct_exists(variable_struct_get(oLocalize.localizedStrings, _mainCat), _mainKey))
    {
        _string = variable_struct_get(variable_struct_get(oLocalize.localizedStrings, _mainCat), _mainKey);
        _string = string_concat(_splitTag.startTag, _string, _splitTag.endTag);
    }
    else
    {
        return string_concat(_splitTag.startTag, _argument, _splitTag.endTag);
    }
    
    if (_numberOfArgs > 0)
        _string = string_ext(_string, _args);
    
    return _string;
}

function strip_color_tags(arg0)
{
    var _startTag = "";
    var _endTag = "";
    var result = arg0;
    var start_bracket = string_pos("[", result);
    var end_bracket = string_pos("]", result);
    
    if (start_bracket == 1 && end_bracket > start_bracket)
    {
        _startTag = string_copy(result, start_bracket, (end_bracket - start_bracket) + 1);
        result = string_delete(result, start_bracket, (end_bracket - start_bracket) + 1);
        start_bracket = string_pos("[", result);
        end_bracket = string_pos("]", result);
        _endTag = string_copy(result, start_bracket, (end_bracket - start_bracket) + 1);
        result = string_delete(result, start_bracket, (end_bracket - start_bracket) + 1);
    }
    
    return 
    {
        text: result,
        startTag: _startTag,
        endTag: _endTag
    };
}

scribble_default_preprocessor_set(LocPreprocessor);
