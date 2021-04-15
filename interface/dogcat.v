struct Dog {
	breed string
}

struct Cat {
	breed string
}

fn (d Dog) speak() string {
	return 'woof'
}

fn (c Cat) speak() string {
	return 'meow'
}

fn (m Mouse) speak() string {
	return 'zii'
}

struct Mouse {
	breed string
}

fn (m Mouse) walk() {
	
}

struct Bird {
	bread string
}

fn (b Bird) walk() {
		
}

// unlike Go and like TypeScript, V's interfaces can define fields, not just methods.
interface Speaker {
	breed string
	speak() string
}

interface Something {}

fn announce(s Something) {
	if s is Dog {
		println('a $s.breed dog') // `s` is automatically cast to `Dog` (smart cast)
	} else if s is Cat {
		println('a $s.breed cat')
	} else {
		println('something else')
	}
}

dog := Dog{'Leonberger'}
cat := Cat{'Siamese'}
mouse := Mouse{'Albino'}
bird := Bird{'Magpie'}

mut arr := []Speaker{}
arr << dog
arr << cat
arr << mouse
//error: `Bird` doesn't implement method `speak` of interface `Speaker`
//arr<<bird

for item in arr {
	println('a $item.breed says: $item.speak()')
}

mut arr1 := []Something{}
arr1 << dog
arr1 << cat
arr1 << mouse
arr1 << bird

for item in arr1 {
	announce(item)
}
