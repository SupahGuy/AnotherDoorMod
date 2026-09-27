var _availableLangsJsonStr = load_json_file_to_string("localization/availableLanguages.json");
availableLangsStruct = json_parse(_availableLangsJsonStr);
localizedStrings = {};
set_language();
