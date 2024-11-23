shader_type canvas_item;

uniform sampler2D SCREENN_TEXTURE: hint_screen_texture, filter_linear_mipmap;

uniform float lod: hint_range(0.0, 1.0, 0.1) = 0;
//
//void vertex() {
	//// Called for every vertex the material is visible on.
//}

void fragment() {
	vec4 color = texture(SCREENN_TEXTURE, SCREEN_UV, lod);
	COLOR = color;
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
