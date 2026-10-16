CXX = g++
CC = gcc

INCLUDES = -Iinclude
CXXFLAGS = $(INCLUDES) -I/opt/homebrew/include
CFLAGS = $(INCLUDES)

LDFLAGS = -L/opt/homebrew/lib
LDLIBS = -lglfw

TARGET = textures

.PHONY: all clean

all: $(TARGET)

$(TARGET): main.o glad.o
	$(CXX) main.o glad.o -o $(TARGET) $(LDFLAGS) $(LDLIBS)

main.o: main.cpp include/glad/glad.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

glad.o: src/glad.c include/glad/glad.h include/KHR/khrplatform.h
	$(CC) $(CFLAGS) -c src/glad.c -o glad.o

clean:
	rm -f main.o glad.o $(TARGET)