uniform float time;
uniform float uProgress;

varying vec2 vUv;

void main(){
  vUv = uv;
  vec4 defaultState = modelViewMatrix*vec4(position, 1.0);
  vec4 fullScreenState = vec4(position, 1.0);

  vec4 finalState = mix(defaultState,fullScreenState,uProgress);

  gl_Position = projectionMatrix * finalState;
} 