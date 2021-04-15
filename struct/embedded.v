struct Pos {
mut:
	x int
	y int
}

struct Button {
	Pos
	title string
}

mut button := Button{
	title: 'Click me'
}

button.x = 3
button.y = 4
// button.widget.x = 3 // wrong

println(button.x)
println(button.y)
