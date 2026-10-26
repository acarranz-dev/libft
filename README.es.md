# libft

**Mi propia librería de C: las funciones estándar de la libc reescritas desde cero, y utilidades extra.**

[English](README.md) · [Català](README.ca.md) · **Español**

`Parte del Common Core de 42 Barcelona` · `Rango 0` · `C` · `Makefile`

---

## Descripción

El primer proyecto del Common Core de 42. No se puede usar la librería estándar de C, así que cada función básica se reescribe a mano y se empaqueta en una librería estática (`libft.a`). Esta librería se reutiliza después en casi todos los proyectos.

## Qué enseña

- Cómo funciona la memoria a nivel de byte: punteros, `size_t`, copias que se solapan (`memmove` vs `memcpy`).
- Memoria dinámica con `malloc` y `free`, y cómo evitar fugas de memoria.
- Trabajar con cadenas sin la librería estándar: dividir, unir, recortar y convertir números.
- Escribir en descriptores de fichero con `write`.
- Crear una librería estática con `ar` y un `Makefile` que solo recompila lo que ha cambiado.

## Cómo funciona

Cada función está en su propio fichero y se comporta igual que la función original de la libc, incluidos los casos límite (cadenas vacías, resultados `NULL`, memoria solapada). El `Makefile` compila cada fichero con `-Wall -Wextra -Werror` y junta los objetos en `libft.a`.

## Compilar y ejecutar

```bash
git clone https://github.com/acarranz-dev/libft.git
cd libft
make            # builds libft.a
make clean      # removes object files
make fclean     # removes object files and libft.a

# use it in another project
cc main.c -L. -lft -o program
```

## Estructura del proyecto

```
libft/
├── libft.h          # prototypes of every function
├── Makefile
├── ft_is*.c         # character checks: isalpha, isdigit, isalnum, isascii, isprint
├── ft_mem*.c        # raw memory: memset, memcpy, memmove, memchr, memcmp, bzero, calloc
├── ft_str*.c        # strings: strlen, strchr, strrchr, strncmp, strlcpy, strlcat, strnstr, strdup...
├── ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c
└── ft_put*_fd.c     # output to a file descriptor: putchar, putstr, putendl, putnbr
```

---

[Más proyectos en mi perfil](https://github.com/acarranz-dev)
