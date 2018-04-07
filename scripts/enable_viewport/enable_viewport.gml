i = argument0;
x = argument1;
y = argument2;
w = argument3;
h = argument4;
f = argument5;

//cam = camera_create_view(x, y, w, h, 0, f, -1, -1, w / 2, h / 2);
cam = view_get_camera(i);
camera_set_view_target(cam, f);


