arr1 := []int{len: 5, init: -1}
arr2 := []int{cap:20, len:10, init: 0}
println(arr1)
println(arr2)

mut numbers := []int{cap: 1000}
println(numbers.len) // 0
// Now appending elements won't reallocate
for i in 0 .. 1000 {
	numbers << i*2
}

println(numbers[999])
