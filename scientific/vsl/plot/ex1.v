// v run ex1.v

module main

import vsl.plot
import vsl.util

fn main() {
	y := [
		0.0,
		1,
		3,
		1,
		0,
		-1,
		-3,
		-1,
		0,
		1,
		3,
		1,
		0,
	]
	x := util.arange(y.len).map(f64(it))
	mut plt := plot.new_plot()

	plt.add_trace(
		trace_type: .scatter
		x: x
		y: y
		mode: 'lines+markers'
		marker: plot.Marker{
			size: []f64{len: x.len, init: 10.0}
			color: []string{len: x.len, init: '#FF0000'}
		}
		line: plot.Line{
			color: '#FF0000'
		}
	)
	plt.set_layout(
		title: 'Scatter plot example'
	)
	plt.show() or { panic(err) }
}

/* vsl still need python3 and anaconda virtual platform:
Creating plotly virtualenv...
Collecting cython
  Downloading Cython-0.29.28-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.manylinux_2_24_x86_64.whl (1.9 MB)
Installing collected packages: cython
Successfully installed cython-0.29.28
Collecting plotly
  Downloading plotly-5.6.0-py2.py3-none-any.whl (27.7 MB)
Collecting numpy
  Downloading numpy-1.22.3-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (16.8 MB)
Collecting six
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Collecting tenacity>=6.2.0
  Downloading tenacity-8.0.1-py3-none-any.whl (24 kB)
Installing collected packages: six, tenacity, plotly, numpy
Successfully installed numpy-1.22.3 plotly-5.6.0 six-1.16.0 tenacity-8.0.1
*/