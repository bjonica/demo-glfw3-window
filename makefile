CXX := c++
LLVMCOMPONENTS := cppbackend
#RTTIFLAG := -fno-rtti
#CXXFLAGS := -I$(shell $(LLVMCONFIG) --src-root)/tools/clang/include -I$(shell $(LLVMCONFIG) --obj-root)/tools/clang/include $(shell $(LLVMCONFIG) --cxxflags) $(RTTIFLAG)
#LLVMLDFLAGS := $(shell $(LLVMCONFIG) --ldflags --libs $(LLVMCOMPONENTS))
SOURCES = window.cpp\

OBJECTS = $(SOURCES:.cpp=.o)
EXES = $(OBJECTS:.o=)

CLANGLIBS = \
						-lglfw3\
						-framework Cocoa\
						-framework OpenGL\
						-framework IOKit\
						-framework CoreVideo

all: $(OBJECTS) $(EXES)

%: %.o
	$(CXX) -o $@ $< $(CLANGLIBS) $(LLVMLDFLAGS)

clean:
	-rm -f $(EXES) $(OBJECTS) *~
