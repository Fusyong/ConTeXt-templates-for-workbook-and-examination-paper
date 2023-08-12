\startluacode

local pagenumber = \pagenumber
local getdata = job.datasets.getdata
local title_set = {}
local pinyin_set = {}
local i = 1
while getdata("zicitable", i) do
    if (pagenumber == getdata("zicitable", i, "realpage")) then
        -- 截取首字、去重
        local first_c = utf.sub(getdata("zicitable", i, "title"),1,1)
        if not table.contains(title_set,first_c) then
            table.insert(title_set,first_c)
        end
        
        -- 保留首尾各一个 TODO 截取第一个音节
        local pinyin = getdata("zicitable", i, "pinyin")
        table.insert(pinyin_set, pinyin)

    end
    i = i + 1
end

local s_pinyin = ""
local first = pinyin_set[1]
local last = pinyin_set[#pinyin_set]
if first then
    if last and first ~= last then
        s_pinyin = first..[=[ - ]=]..last
    else
        s_pinyin = first
    end
end

local s_title = ""
for _,v in pairs(title_set) do
    s_title = s_title..v
end


local s_all = ""
if s_title ~="" then
    if pagenumber%2 == 0 then

        s_all = s_pinyin..[=[ ｜ ]=]..s_title
    else
        s_all = s_title..[=[ ｜ ]=]..s_pinyin
    end
end

context(s_all)

\stopluacode
