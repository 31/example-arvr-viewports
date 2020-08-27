shader_type spatial;
render_mode blend_mix, unshaded;
render_mode depth_draw_always;

void fragment()
{
	ALBEDO = vec3(0, 0, 0);
	ALPHA = 0.5f;
}
