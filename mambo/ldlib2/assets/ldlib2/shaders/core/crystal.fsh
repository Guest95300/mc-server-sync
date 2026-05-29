#version 330 core

uniform vec2 ScreenSize;
uniform vec4 ColorHDR;
uniform float Refraction;

uniform sampler2D IceTexture;
uniform sampler2D SamplerSceneColor;

in float vertexDistance;
in vec2 texCoord0;
in vec4 vertexColor;
in vec3 vViewPos;
in vec3 vViewNormal;

out vec4 fragColor;

float FresnelEffect(vec3 Normal, vec3 ViewDir, float power)
{
    float cosTheta = clamp(dot(normalize(Normal), normalize(ViewDir)), 0.0, 1.0);
    return pow(1.0 - cosTheta, power);
}

void main() {
    vec2 screenUV = gl_FragCoord.xy / ScreenSize;
    vec2 iceUV = screenUV * texture(IceTexture, texCoord0).r;
    vec2 finalUV = mix(screenUV, iceUV + screenUV, Refraction);

    vec4 screenColor = texture(SamplerSceneColor, finalUV);

    float fres = FresnelEffect(vViewNormal, normalize(-vViewPos), 1.0);

    fragColor = vec4((screenColor.rgb + ColorHDR.rgb * ColorHDR.a) + fres, 1.);
}