var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_rectangle_colour(cx +cw - 200 -hp/50, cy+25, cx +cw - 200, cy + 75, 16711680, 16711680, 16711680, 16711680, false);
