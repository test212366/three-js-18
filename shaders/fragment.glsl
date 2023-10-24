uniform float time;
uniform float progress;
uniform sampler2D texture1;
uniform sampler2D uMap;

uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
float PI = 3.1415926;
void main() {
	vec4 c = texture2D(uMap, fract(vUv * 10.));
 
	gl_FragColor = vec4(vUv.r, 1., 1., 1.);
	gl_FragColor = vec4(vec3(1. - c.r), 1.);
}