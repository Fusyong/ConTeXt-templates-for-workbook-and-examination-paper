-- https://wiki.contextgarden.net/String_manipulation
function MP.tianzige(pinyin,characters) --lua.MP是给用户预留的命名空间，lua.mp则是系统自用的
    local mp_string = [[
        u := 1.3cm;
        right_y := %d(u);
        
        path square ; square := fullsquare scaled u shifted(right_y,0cm);
        pickup pencircle scaled 0.5pt ;
        draw square;
        
        path c[];
        c1 := (-u/2, 0cm)--(u/2, 0cm);
        c2 := (0cm, -u/2)--(0cm, u/2);
        pickup pencircle scaled 0.3pt ;
        draw c1 shifted(right_y,0cm) dashed evenly ;
        draw c2 shifted(right_y,0cm) dashed evenly ;

        label.top(textext("\strut %s"), square) ;
        label(textext("\itd\PTA{%s}"), square) ;
    ]]

    -- 分拆拼音音节，逐一存在表中
    local sep = "|"
    local syllables={}
    local syllable=""
    for c in string.utfcharacters(pinyin) do
        if c == sep then
            table.insert(syllables,syllable)
            syllable = ""
        else
            syllable = syllable..c
        end
    end
    table.insert(syllables,syllable)
    
    local chineses = {}
    for c in string.utfcharacters(characters) do
        table.insert(chineses,c)
    end
    for k,v in ipairs(syllables) do
        mp.fprint(mp_string,(k-1),v,chineses[k])
    end
end
return MP.tianzige