/// @description GO button.
draw_self();

draw_set_font(font_large);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (countdown > 0) {
	txt = string(countdown);
} else {
	txt = text;
}

draw_text(x + sprite_width / 2, y + sprite_height / 2, txt);
