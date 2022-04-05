module main

import gg
import gx
import strconv
import time

fn main() {
    mut context := gg.new_context(
        bg_color: gx.rgb(174, 198, 255)
        width: 720*2
        height: 1280*2
        window_title: 'display png one by one.'
        frame_fn: cb_frame
	event_fn: cb_event
    )
    context.run()
}

fn cb_frame(mut ctx gg.Context) {
    //println(time.ticks())
    x := ctx.mouse_pos_x
    y := ctx.mouse_pos_y
    println('$x $y')
    //strconv.v_printf('%d %d', a, b)
    ctx.begin()
    //ctx.draw_convex_poly([f32(100.0), 100.0, 200.0, 100.0, 300.0, 200.0, 200.0, 300.0, 100.0, 300.0], gx.blue)
    //ctx.draw_poly_empty([f32(50.0), 50.0, 70.0, 60.0, 90.0, 80.0, 70.0, 110.0], gx.black)
    //ctx.draw_triangle_filled(450, 142, 530, 280, 370, 280, gx.red) 
    if ctx.frame <= 300 {
    	img_name := strconv.v_sprintf('/home/yuan/Videos/qianqian/output_%04d.png', ctx.frame)
    	//println(img_name)
	img_png := ctx.create_image(img_name)
	ctx.draw_image(0, 0, 720, 1280, &img_png)
   }
    ctx.end()
}


fn cb_event(e &gg.Event, mut ctx gg.Context) {

	println(e)

}
