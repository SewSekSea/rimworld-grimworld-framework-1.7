#version 450
// Port of the original CutoffCustom shader: RGB mask weights and alpha cutoff.
layout(location = 1) in vec2 vUv;
layout(location = 0) out vec4 outColor;
layout(set = 2, binding = 0) uniform MaterialUniforms
{
    vec4 _Color; // @color @default = vec4(1.0, 0.0, 0.0, 1.0)
    vec4 _ColorTwo; // @color @default = vec4(0.0, 1.0, 0.0, 1.0)
    vec4 _ColorThree; // @color @default = vec4(0.0, 0.0, 1.0, 1.0)
    vec4 _MainTex_ST; // @default = vec4(0.0, 0.0, 1.0, 1.0)
    vec4 _MaskTex_ST; // @default = vec4(0.0, 0.0, 1.0, 1.0)
} uMaterial;
layout(set = 2, binding = 1) uniform sampler2D _MainTex;
layout(set = 2, binding = 2) uniform sampler2D _MaskTex;
void main()
{
    vec4 tex = texture(_MainTex, vUv * uMaterial._MainTex_ST.zw + uMaterial._MainTex_ST.xy);
    vec3 mask = texture(_MaskTex, vUv * uMaterial._MaskTex_ST.zw + uMaterial._MaskTex_ST.xy).rgb;
    vec4 weight = uMaterial._Color * mask.r + uMaterial._ColorTwo * mask.g
                + uMaterial._ColorThree * mask.b + vec4(1.0 - mask.r - mask.g - mask.b);
    vec4 color = tex * weight;
    if (color.a < 0.5) discard;
    outColor = color;
}
