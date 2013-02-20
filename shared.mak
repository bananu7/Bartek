OBJECTS=$(patsubst %.cpp,%.o,$(SOURCES))

all:$(TARGETS)

CPPFLAGS+=-std=c++0x -fPIC
CPPFLAGS+=-g -O0
CPPFLAGS+=-I ~/custom/boost/
CPPFLAGS+=-I /usr/include/lua5.1/

CPPFLAGS+=-Dabstract='' # -DFBXSDK_NEW_API 
CPPFLAGS+='-D_CrtDbgBreak()=""'

LDFLAGS+= -lGLEW 
LDFLAGS+= -llua5.1
LDFLAGS+= -lSOIL

# CPPFLAGS+=-fopenmp
# CPPFLAGS+=-march=native

LDFLAGS+=-L ~/custom/boost/stage/lib/
LDFLAGS+=-lboost_filesystem 
LDFLAGS+=-lboost_system 
LDFLAGS+=-lboost_regex 
LDFLAGS+=-lboost_thread 
LDFLAGS+=-lpthread 
LDFLAGS+=-lboost_chrono 
LDFLAGS+=-lboost_timer

# CXX=/usr/lib/gcc-snapshot/bin/g++
# CC=/usr/lib/gcc-snapshot/bin/gcc
# CXX=~/Projects/CLANG/build/Debug+Asserts/bin/clang++
# CC=~/Projects/CLANG/build/Debug+Asserts/bin/clang

%.so:$(OBJECTS)
	$(CXX) -shared $(CPPFLAGS) $^ -o $@ $(LDFLAGS)

%.exe:$(OBJECTS)
	$(CXX) $(CPPFLAGS) $^ -o $@ $(LDFLAGS)

%.o:%.cpp
	$(CXX) $(CPPFLAGS) -c $^ -o $@
