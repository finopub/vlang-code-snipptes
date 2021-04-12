/**************************************************************************************************
Copyright (c) 2021 Fino Meng. All rights reserved.
Use of this source code is governed by an MIT license that can be found in the LICENSE file.
**************************************************************************************************/

// omissible
module main

fn main() {
	mut a := 'hello' // variables are immutable by default
	mut b := 'world'
	println('$a $b')
	a, b = b, a
	println('$a $b')
}
