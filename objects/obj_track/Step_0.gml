/// @description Fade and then die.

image_alpha -= 0.0001;
if (image_alpha < 0.0001) instance_destroy();
