SILENT = @

# Compiler
CC = g++
LD = $(CC)

# Compiler flags
COMPILER_FLAGS = -Wall -std=c++11

# Linker flags
LIBS =
LINKER_FLAGS =

# Files to compile
SRC_PATH = src/
SRC_FILES = $(wildcard $(SRC_PATH)*.cpp)
OBJ_FILES = $(SRC_FILES:.cpp=.o)

# Path for the resulting file
BUILD_PATH = build/
RES_PATH = res/
PROGRAM_NAME = program
EXEC = $(BUILD_PATH)$(PROGRAM_NAME)

# Compile stuff
%.o : %.cpp
	@echo CC $<
	$(SILENT) $(CC) -c $< $(COMPILER_FLAGS) -o $@

$(EXEC) : $(OBJ_FILES)
	@echo
	mkdir -p $(BUILD_PATH)
	@echo LD $@
	$(SILENT) $(LD) $(COMPILER_FLAGS) $(OBJ_FILES) $(LINKER_FLAGS) $(LIBS) -o $(EXEC)
	@echo
	@echo "Moving resources to build"
	cp -r $(RES_PATH) $(BUILD_PATH)
	@echo

all : $(EXEC)

run : $(EXEC)
	$(EXEC)

.PHONY: clean
clean:
	@echo "Cleaning build"
	rm -rf $(SRC_PATH)*.o
	rm -rf $(BUILD_PATH)*

