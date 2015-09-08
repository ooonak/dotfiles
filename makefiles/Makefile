SOURCEFILES = $(wildcard *.cpp)
OBJECTFILES = $(SOURCEFILES:.cpp=.o)
BINFILES = $(SOURCEFILES:.cpp=)

CC = clang++
CFLAGS = -Wall -Werror -std=c++11
LDFLAGS =

all: $(BINFILES)

# $< is the name of the first dependency
# $^ is all denpendencies
# $@ is the name of the current target
.cpp:
	$(CC) $(CFLAGS) $< -o $@

%:
	$(CC) $(CFLAGS) $*.cpp -o $*

# .PHONE means that no matter the state of the filesystem 'timestamp', run
.PHONE: clean
clean:
	find . -type f -executable -exec rm {} \;  
