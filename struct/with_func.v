struct Buffer {
	mut:
		buf_null   []byte
		buf   [256]byte
		pos   int // index in buf
		start int // index in buf
		err   string
		reset_cb fn()
}

reset_fn := fn () {
	println('this is reset_fn()!')
}


mut b := Buffer {
		buf:[256]byte{}
		pos:0
		start:0
		err:''
		reset_cb:reset_fn
}	

b.pos=10
//b.reset_cb=reset_fn

println(b.pos)

b.reset_cb()

b.buf[0] = 0
b.buf[255] = 255

assert b.buf[0] == 0
assert b.buf[255] == 255
