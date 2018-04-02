/// @description Draw text.

draw_self();

// info
draw_set_font(font_main);

// name
draw_set_halign(fa_left);
draw_text(x + 20, y + 20, player_name);

// AI or human
if (human) {
	draw_text(x + 20, y + 68, "Turn Left: " + string(left_key));
	draw_text(x + 20, y + 98, "Turn Right: " + string(right_key));
	draw_text(x + 20, y + 128, "Fire: " + string(shoot_key));
} else {
	draw_set_halign(fa_center);
	draw_text(x + 128, y + 118, "AI Player");
}
