var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);


draw_rectangle_colour(cx + 200, cy+25, cx + 200 + hp/50, cy + 75, 255, 255, 255, 255, false);
draw_rectangle_colour(cx + 200 + hp/50, cy +25, cx + 400, cy +75,0,0,0,0,false);