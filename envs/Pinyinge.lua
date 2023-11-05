-- https://wiki.contextgarden.net/String_manipulation
function MP.tianzige(pinyin,characters) --lua.MP是给用户预留的命名空间，lua.mp则是系统自用的
    local s = [[
        pickup pencircle scaled 1pt ;
        path p ; p := fullsquare scaled 1.3cm  shifted(%d(1.3cm),0cm);
        draw p;
        label.top(textext("\strut %s"), p) ;
        label(textext("\itd %s"), p) ;
    ]]

    local sep = "|"
    local t={}
    local p=""
    for c in string.utfcharacters(pinyin) do
        if c == sep then
            table.insert(t,p)
            p = ""
        else
            p = p..c
        end
    end
    table.insert(t,p)
    
    local cs = {}
    for c in string.utfcharacters(characters) do
        table.insert(cs,c)
    end
    for k,v in ipairs(t) do
        mp.fprint(s,(k-1),v,cs[k])
    end
end
return MP.tianzige