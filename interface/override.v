//fino@2021.4.15: failed to run this case after - V 0.2.2 d90be54

struct Cat {
	name string
}

fn (c Cat) speak() string {
	return 'meow!'
}

interface Adoptable {
	name string	
}

fn (a Adoptable) speak() string {
	return 'adopt me!'
}

fn new_adoptable() Adoptable {
	return Cat{name:'Tom'}
}

fn main() {
	cat := Cat{name:'Jerry'}
	assert cat.speak() == 'meow!'
	assert cat.name == 'Jerry'
	a := new_adoptable()
	assert a.speak() == 'adopt me!'
	println(a.name)
	if a is Cat {
		println(a.speak()) // meow!
		println(a.name) // fino: should print 'Tom'?
	}
}
