import os

data := os.read_file(os.resource_abs_path('log.txt')) or { panic(err) }
println(data)

