-- 限制/TODO
-- 序号
-- 完整答案/序号答案
-- 参数一致性校验
function MP.lianxian(widthes,sort_code,before_items,after_items) --lua.MP是给用户预留的命名空间，lua.mp则是系统自用的
    local before_list = string.explode(before_items, "\\+")
    local after_list = string.explode(after_items, "\\+")
    -- after_items = table.concat(new_after_list, "\\\\")
    
    -- 解析位置参数
    local widthes_list = utilities.parsers.settings_to_array(widthes)
    -- 解析命名参数
    -- local named_values = utilities.parsers.settings_to_hash(keyvals)
    
    local sort_code_list = {}
    for i, line in ipairs(string.explode(sort_code)) do
        sort_code_list[i] = tonumber(line)
    end

    -- 行锚点
    mp.fprint([[pair a[];]])
    
    -- 画后项
    for i, line in ipairs(sort_code_list) do
        -- BaseLineSkip似乎等于LineHeight
        mp.fprint([[a[%s] := (0, -(bbheight(currentpicture)+LineHeight));]], i)

        mp.fprint([[label.lft(textext("\framedtext[offset=none,width=%s,frame=off,corner=00,]{%s}"), a[%s]);]],
        widthes_list[1],
        string.strip(before_list[i]),
        i)

        mp.fprint([[label.rt(textext("\framedtext[offset=none,width=%s,frame=off,corner=00,]{%s}"), a[%s]) shifted (%s,0);]],
        widthes_list[3],
        string.strip(after_list[line]),
        i,
        widthes_list[2])--不能接受em值
    end

    -- 画连线
    -- TODO \MPcolor{PTAColor}
    -- TODO \MPcolor{proofColor}
    -- TODO \MPcolor{transparentColor}
    for i, line in ipairs(sort_code_list) do
        mp.fprint([[draw a[%s]--a[%s]+(%s,0) withcolor red;]], i, line,widthes_list[2])
    end

end
return MP.lianxian
