shader_type spatial;
render_mode blend_mul;
render_mode specular_disabled;

uniform vec3 front = vec3(1.0, 0.0, 0.0);
uniform float min_emission = 0.5;

void fragment() {
	vec3 dir_in_view = (INV_CAMERA_MATRIX * vec4(front, 0.0)).xyz;

	float dot = step(0.98, dot(dir_in_view, NORMAL));
	EMISSION = vec3(mix(min_emission, 1.0, dot)) * 1.0;
}
