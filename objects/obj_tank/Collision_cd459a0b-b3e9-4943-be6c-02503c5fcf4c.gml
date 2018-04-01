/// @description Bounce.

// bounce back
x = xprevious;
y = yprevious;

// If still in collision, work our way away from the other tank
if (place_meeting(x, y, other)) {
	// direction to other tank
	dir = point_direction(x, y, other.x, other.y);
	
	move_direction(self, dir - 180, speed);
}
