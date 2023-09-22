# @file Makefile
# @author Matthew Deck
# @date 2023-09-21
# @brief Toolkit Assignment Make & Makefiles


# define variables

CC = g++                   # the compiler to use
CFlags = -g -Wall -Wextra  # compile options to show all errors and warnings
Target = employee          # compiled filename

# set the default command

default: all

# define each command

all: $(Target)

$(Target): main.o Employee.o Supervisor.o Officer.o
	$(CC) $(CFlags) -o $(Target) main.o Employee.o Supervisor.o Officer.o

main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFlags) -c main.cpp

Employee.o: Employee.h Employee.cpp
	$(CC) $(CFlags) -c Employee.cpp

Officer.o: Officer.h Officer.cpp
	$(CC) $(CFlags) -c Officer.cpp

Supervisor.o: Supervisor.h Supervisor.cpp
	$(CC) $(CFlags) -c Supervisor.cpp

# define cleanup command

clean:
	$(RM) $(Target) *.o *~
