module Cn2An

number_cn2an_map = Dict(
    "零" => 0,
    "一" => 1,
    "二" => 2,
    "三" => 3,
    "四" => 4,
    "五" => 5,
    "六" => 6,
    "七" => 7,
    "八" => 8,
    "九" => 9
)

unit_cn2an_map = Dict(
    "十" => 10,
    "百" => 100,
    "千" => 1000,
    "万" => 10000,
    "亿" => 100000000
)

function cn2an(inputs::String)
    output = 0
    unit = 1
    ten_thousand_unit = 1
    num = 0
    
    for (index, cn_num) in enumerate(reverse(inputs))
        cn_num = string(cn_num)

        if haskey(number_cn2an_map, cn_num)
            num = number_cn2an_map[cn_num]
            output = output + num * unit

        elseif haskey(unit_cn2an_map, cn_num)
            unit = unit_cn2an_map[cn_num]

            if unit % 10000 == 0
                if unit > ten_thousand_unit
                    ten_thousand_unit = unit
                else
                    ten_thousand_unit = unit * ten_thousand_unit
                    unit = ten_thousand_unit
                end
            end
    
            if unit < ten_thousand_unit
                unit = ten_thousand_unit * unit
            end

        else
            throw(UndefVarError(cn_num))
        end

    end

    return output
end

number_an2cn_map = Dict(
    0 => "零",
    1 => "一",
    2 => "二",
    3 => "三",
    4 => "四",
    5 => "五",
    6 => "六",
    7 => "七",
    8 => "八",
    9 => "九"
)

unit_an2cn_order_list = ["", "十", "百", "千", "万", "十", "百", "千", "亿", "十", "百", "千", "万", "十", "百", "千"]

function an2cn(inputs::Int)
    inputs = string(inputs)
    len_input = length(inputs)
    output = ""
    for (index, an_num) in enumerate(inputs)
        an_num = parse(Int, an_num)
        if an_num > 0
            output = output * number_an2cn_map[an_num] * unit_an2cn_order_list[len_input - index + 1]
        else
            if (len_input - index) % 4 == 0
                output = output * number_an2cn_map[an_num] * unit_an2cn_order_list[len_input - index + 1]
            end
            
            if index > 1 && string(output[end]) != "零"
                output = output * number_an2cn_map[an_num]
            end
        end
    end
    output = replace(output, r"零零" => "零")
    output = replace(output, r"零万" => "万")
    output = replace(output, r"零亿" => "亿")
    output = replace(output, r"^零" => "")
    output = replace(output, r"零$" => "")

    return output
end

end # module
