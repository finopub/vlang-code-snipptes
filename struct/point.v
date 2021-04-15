struct Point {
	x int
	y int
}

mut p1 := Point{
	x: 10
	y: 10
}

p1.x=11 //won't compile, immutable
// Alternative literal syntax for structs with 3 fields or fewer
p1 = Point{11, 11}
assert p1.x == 11
println('${p1.x} ${p1.y}')


// p2 is allocated on heap, the type of p2 is &Point. It's a reference to Point
p2 := &Point{20, 20}
// References have the same syntax for accessing fields
// p2.x = 20 // won't compile, p2 is immutable
println('${p2.x} ${p2.y}')

mut p3 := &Point{30, 30} // immutable
//p3.x = 30 // won't compile
println('${p3.x} ${p3.y}')

//? mutable heap struct?


