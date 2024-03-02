function MP.lianxian(sort_code,before_items,after_items) --lua.MP是给用户预留的命名空间，lua.mp则是系统自用的
    local list = string.explode(after_items, "\\+")
    local new_list = {}
    for i, line in ipairs(string.explode(sort_code)) do
        new_list[i] = string.strip(list[tonumber(line)])
    end
    after_items = table.concat(new_list, "\\\\")

    mp.fprint([[
        path square ; square := fullsquare scaled 1cm shifted(0cm,0cm);
        pickup pencircle scaled 0.5pt ;
        draw square;

        label.lft(textext("\framedtext[offset=none,autowidth=force]{%s}"), square);
        label.rt(textext("\framedtext[offset=none,autowidth=force]{%s}"), square);
        ]],
        before_items,
        after_items)
end
return MP.lianxian
