/// @description Trail of smoke.

// particle system
//if (global.psys) {
	if (weapon == "88mm") {
		part_particles_create_colour(global.psys, x, y, global.p1, c_gray, 1);
	} else if (weapon == "20mm") {
		part_particles_create_colour(global.psys, x, y, global.p1, c_gray, 1);
	} else {
		part_particles_create_colour(global.psys, x, y, global.p1, c_gray, 1);
	}
//}

if (armed > 0) armed -= 1;
