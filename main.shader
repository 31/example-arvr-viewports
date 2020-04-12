shader_type spatial;
render_mode blend_mix, depth_draw_opaque;

uniform sampler2D viewport_texture;

void fragment()
{
	ALBEDO = EMISSION = vec3(textureLod(viewport_texture, SCREEN_UV + vec2(0.1), 0.0).rgb) + vec3(0.1);
}
