---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by srokks.
--- DateTime: 10/01/2022 10:52
---
langAPI = RegisterMod("langAPI", 1)
include('langAPI_tables.lua')
print('LangAPI loaded')
langAPI.lang_index = 0
function langAPI.setLangIndex()
    local lang_codes = {en=0,jp=2,es=4,de=5,ru,kr=11,zh=13}
    langAPI.lang_index = tonumber(langAPI.table.languages[lang_code].index)
end
langAPI.setLangIndex()
function langAPI.getItemName(code_name)
    local lang_index = langAPI.getLangIndex()
    return langAPI.table.category.Items[code_name][langAPI.lang_index]
end
function langAPI.getPocketName(code_name)
    local lang_index = langAPI.getLangIndex()
    return langAPI.table.category.PocketItems[code_name][langAPI.lang_index]
end