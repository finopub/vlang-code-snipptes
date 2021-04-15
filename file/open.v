import os

fn read_log() {
	mut ok := false
	mut f := os.open('log.txt') or { panic(err.msg) }
	defer {
		f.close()
	}
	// ...
	if !ok {
		// defer statement will be called here, the file will be closed
		return
	}
	// ...
	// defer statement will be called here, the file will be closed
}

read_log()
