// Crie um objeto `obj_fade_transition` com:
// CREATE:
alpha = 0;
target_alpha = 1;
speed = 0.05;

// STEP:
alpha = lerp(alpha, target_alpha, speed);
if (abs(alpha - target_alpha) < 0.01) instance_destroy();

// DRAW:
draw_set_alpha(alpha);
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);