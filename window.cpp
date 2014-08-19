#include <iostream>
#include <GLFW/glfw3.h>

int main(void) {
  GLFWwindow* window;

  /* Init glfw */
  if (!glfwInit())
    return -1;

  /* Create a windows mode window and its OpenGL context */
  window = glfwCreateWindow(640, 480, "Hello", NULL, NULL);
  if (!window) {
    glfwTerminate();
    return -1;
  }

  /* Make the window's context current */
  glfwMakeContextCurrent(window);

  /* loop until the user closes the window */
  while (!glfwWindowShouldClose(window)) {
    /* Render here */
    /* Swap front and back buffers */
    glfwSwapBuffers(window);
    
    /* Poll for and process events */
    glfwPollEvents();
  }
  glfwTerminate();
  return 0;
}
