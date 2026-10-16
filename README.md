# Texturas

Abre una ventana y dibuja un rectangulo con dos texturas mezcladas.

Estoy siguiendo el capitulo Textures de LearnOpenGL. GLFW crea la ventana y GLAD carga las funciones de OpenGL. El Makefile apunta a Homebrew en Mac (`/opt/homebrew`).

## Como correrlo

Si no tenes GLFW:

```
brew install glfw
```

Despues, en esta carpeta:

```
make
./textures
```

`container.jpg` y `awesomeface.png` tienen que estar en esta carpeta, porque el programa las carga desde ahi. Escape o la cruz cierran la ventana. `make clean` borra el ejecutable y los `.o`.
