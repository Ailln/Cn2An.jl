using Test

import Cn2An:cn2an
import Cn2An:an2cn

@test cn2an("九千八百七十六万五千四百三十二亿九千八百七十六万五千四百三十二") == 9876543298765432
@test an2cn(9876543298765432) == "九千八百七十六万五千四百三十二亿九千八百七十六万五千四百三十二"
