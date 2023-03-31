# docker-based programming 

This repository promotes programming directly in `Dockerfile`. You don't need any other files for deploying. 

You can write your code like this: 

```dockerfile
RUN echo -e '\
if input() == "yeah":     \n\
    print("hello world")  \n\
else:                     \n\ 
    print(":(")           \n\
' > program.py
```

With this feature you can build docker image with one file without `COPY . .` and `RUN apt install git; RUN git clone ...`.

## INCLUDE 

Writing big programs in one file is too hard. We introduce new directive: 

```dockerfile
# INCLUDE <path>/yourfile.Dockerfile
```

This directive adds all lines from linked file. You can create nested directives, include files in included files.
As soon as you witten you program in Dockerfile you can compile Dockerfile. Just run `./compile` and program appears in `./compiled/Dockerfile.compiled`. [Example of compiled Dockerfile](example/.compiled/Dockerfile.compiled). 

[Checkout source code](example) of [**promo site on React**](https://nocode.zeytu.space).
