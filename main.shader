shader_type spatial;
render_mode blend_mix, unshaded;
render_mode depth_draw_always;

const float grid = 50f;
const float gi = 1f / grid;

void fragment()
{
	ALBEDO = vec3(0, 0, 0);
	ALBEDO = texture(
		SCREEN_TEXTURE,
		SCREEN_UV - mod(SCREEN_UV + vec2(gi/2f), vec2(gi)) + vec2(gi/2f)
		).rgb;
	ALPHA = 0.3f;
}
