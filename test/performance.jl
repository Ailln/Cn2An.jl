using TimeZones
using Test

include("../src/Cn2An.jl")

function run_an2cn_core_ten_thousand_times()
    t_start = now()
    for _ in 1:1000000
        @test Cn2An.an2cn(9876543298765432) == "九千八百七十六万五千四百三十二亿九千八百七十六万五千四百三十二"
    end
    t_end = now()
    println(t_end-t_start)
end

run_an2cn_core_ten_thousand_times()