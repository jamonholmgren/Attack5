/// @description Draw tank and turret.

draw_self();
draw_sprite_ext(turret_sprite, 0, x, y, image_xscale, image_yscale, turret_direction - 90, c_white, 1.0);
draw_healthbar(x - 20, y + 40, x + 20, y + 43, hp, c_black, c_red, c_green, 0, true, true);

