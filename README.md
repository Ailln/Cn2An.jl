# Cn2An.jl

[![CompatHelper](https://img.shields.io/github/workflow/status/Ailln/Cn2An.jl/CompatHelper)](https://github.com/Ailln/Cn2An.jl/actions?query=workflow%3ACompatHelper)
[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/Ailln/cn2an/blob/master/LICENSE)
[![stars](https://img.shields.io/github/stars/Ailln/Cn2An.jl.svg)](https://github.com/Ailln/Cn2An.jl/stargazers)

Convert Chinese Numerals To Arabic Numerals With Julia Language.

You can learn by referring to the functions of this libray: [cn2an](https://github.com/Ailln/cn2an).

## Install

```bash
## In Julia REPL
julia> ]
pkg> add Cn2An
# or
pkg> add https://github.com/Ailln/Cn2An.jl

## In Julia file and REPL
using Pkg
Pkg.add("Cn2An")
# or
Pkg.add(PackageSpec(url="https://github.com/Ailln/Cn2An.jl"))
```

## Usage

```julia
import Cn2An:cn2an
import Cn2An:an2cn

println(cn2an("一百二十三"))
# 123
println(an2cn(123))
# 一百二十三
```

## Performance

Compare the performance of cn2an function running **one million times on Python and Julia** respectively.

| NO. | language | function   | times   | cost(s)   | code |
| :-: | :-:      | :-:        | :-:     | :-:       | :-:  |
|  1  | Python   | an2cn core | 1000000 | **7.379** | [an2cn](https://github.com/Ailln/cn2an/blob/master/example/an2cn_core.py) |
|  2  | Julia    | an2cn core | 1000000 | **2.822** | [an2cn](https://github.com/Ailln/Cn2An.jl/tree/master/test/performance.jl) |

From the results, we can see that Julia is almost **three times faster**!

## License

[![](https://award.dovolopor.com?lt=License&rt=MIT&rbc=green)](./LICENSE)
[![](https://award.dovolopor.com?lt=Ailln's&rt=idea&lbc=lightgray&rbc=red&ltc=red)](https://github.com/Ailln/award)

## Reference

- [Pkg.jl Introduction](https://julialang.github.io/Pkg.jl/v1/)
- [Julia Hub](https://juliahub.com/ui/Home)
- [cn2an python version](https://github.com/Ailln/cn2an)
