mut fnums := [3]int{} // fnums is a fixed size array with 3 elements.
fnums[0] = 1
fnums[1] = 10
fnums[2] = 100
println(fnums) // => [1, 10, 100]
println(typeof(fnums).name) // => [3]int

anums := fnums[0..fnums.len]
println(anums) // => [1, 10, 100]
println(typeof(anums).name) // => []int
