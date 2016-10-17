# simple_makefile_cpp
A simple, non-bloated makefile that I use for my C++ projects.

## Variables
This section will list all the variables that you might want to adjust for your project. If something is not listed here, then it probably doesn't require you to tinker with it. If something is listed here, and it already has a value, then it's what I consider a sane default.

### CC
Your compiler

### LD
Your linker (For g++, this is the same as your compiler)

### INCLUDE_PATHS
Additional include paths for your project

### COMPILER_FLAGS
Flags which your compiler will use

### LIBS
Libraries to link your program with (for example -lSDL2 for SDL2)

### LINKER_FLAGS
Flags which your linker will use

### SRC_PATH
Directory where your source files are

### BUILD_PATH
Directory where your executable will be built, and where resources will be copied into

### PROGRAM_NAME
Resulting filename of your program

