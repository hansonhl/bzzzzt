image_xscale = image_xscale + 0.015;
image_yscale = image_yscale + 0.015;
image_alpha = image_alpha - 0.012;
if (image_xscale >= 1.5) {
	instance_destroy();
}