mut nums := [1, 2, 3]
nums << 4
println(nums) // "[1, 2, 3, 4]"
// append array
nums << [5, 6, 7]
println(nums) // "[1, 2, 3, 4, 5, 6, 7]"
mut names := ['John']
names << 'Peter'
names << 'Sam'
// names << 10  <-- This will not compile. `names` is an array of strings.
println(names.len) // "3"
println('Alex' in names) // "false"
