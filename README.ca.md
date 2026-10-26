# libft

**La meva pròpia llibreria de C: les funcions estàndard de la libc reescrites des de zero, i utilitats extra.**

[English](README.md) · **Català** · [Español](README.es.md)

`Part del Common Core de 42 Barcelona` · `Rang 0` · `C` · `Makefile`

---

## Descripció

El primer projecte del Common Core de 42. No es pot fer servir la llibreria estàndard de C, així que cada funció bàsica s'ha de reescriure a mà i empaquetar en una llibreria estàtica (`libft.a`). Aquesta llibreria es reutilitza després a gairebé tots els projectes.

## Què ensenya

- Com funciona la memòria a nivell de byte: punters, `size_t`, còpies que se solapen (`memmove` vs `memcpy`).
- Memòria dinàmica amb `malloc` i `free`, i com evitar fuites de memòria.
- Treballar amb cadenes sense la llibreria estàndard: dividir, unir, retallar i convertir números.
- Escriure a descriptors de fitxer amb `write`.
- Crear una llibreria estàtica amb `ar` i un `Makefile` que només recompila el que ha canviat.

## Com funciona

Cada funció és al seu propi fitxer i es comporta igual que la funció original de la libc, incloent-hi els casos límit (cadenes buides, resultats `NULL`, memòria solapada). El `Makefile` compila cada fitxer amb `-Wall -Wextra -Werror` i ajunta els objectes a `libft.a`.

## Compilar i executar

```bash
git clone https://github.com/acarranz-dev/libft.git
cd libft
make            # builds libft.a
make clean      # removes object files
make fclean     # removes object files and libft.a

# use it in another project
cc main.c -L. -lft -o program
```

## Estructura del projecte

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

[Més projectes al meu perfil](https://github.com/acarranz-dev)
