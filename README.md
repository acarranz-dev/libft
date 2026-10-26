# libft

**My own C library: the standard libc functions rewritten from scratch, plus extra utilities.**

**English** · [Català](README.ca.md) · [Español](README.es.md)

`Part of the 42 Barcelona Common Core` · `Rank 0` · `C` · `Makefile`

---

## Description

The first project of the 42 Common Core. The C standard library cannot be used, so every basic function has to be rewritten by hand and packed into a static library (`libft.a`). This library is then reused in almost every later project.

## What it teaches

- How memory works at byte level: pointers, `size_t`, overlapping copies (`memmove` vs `memcpy`).
- Dynamic memory with `malloc` and `free`, and how to avoid memory leaks.
- String handling without the standard library: splitting, joining, trimming and converting numbers.
- Writing to file descriptors with `write`.
- Building a static library with `ar` and a `Makefile` that only recompiles what changed.

## How it works

Each function lives in its own file and follows the behaviour of the original libc function, including the edge cases (empty strings, `NULL` results, overlapping memory). The `Makefile` compiles every file with `-Wall -Wextra -Werror` and archives the objects into `libft.a`.

## Build and run

```bash
git clone https://github.com/acarranz-dev/libft.git
cd libft
make            # builds libft.a
make clean      # removes object files
make fclean     # removes object files and libft.a

# use it in another project
cc main.c -L. -lft -o program
```

## Project structure

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

[More projects on my profile](https://github.com/acarranz-dev)
