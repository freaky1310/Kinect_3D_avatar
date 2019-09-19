#version 460 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 actualColor;

uniform mat4 modelSkeleton;
uniform mat4 view;
uniform mat4 projection;

void main() {
    gl_Position = projection * view * modelSkeleton * vec4(aPos, 1.0);
    actualColor = aColor;
}