enum Color {
	@none // reserved keywords may be escaped with an @.
	red
	green
	blue
}

fn match_color(c Color) {
	match c {
		.red { println('the color was red') }
		.green { println('the color was green') }
		.blue { println('the color was blue') }
		.@none { println('no color defined!') }
	}
}

fn main() {
	mut color := Color.red
	// V knows that `color` is a `Color`. No need to use `color = Color.green` here.
	color = .green
	println(color) // "green"
	match_color(color)

	color = .@none
	println(color)
	match_color(color)
}
