# C compiler command
CC=clang
# Any compiler flags (-g, -Wall, etc)
CFLAGS=
# The main executable name
TARGET=main
# Dependencies
DEPENDENCIES= OpenAudio.c Granulator.c Midi.c
# Libraries to inlcude
LIBS=-lportaudio -lsndfile -lportmidi
# Remove command
RM=rm

# Since the "all" target is the first, it is the default target and will be run when we run "make"
# The name is arbitrary 
all: $(TARGET).c $(DEPENDENCIES)
	$(CC) $(CFLAGS) $(TARGET).c $(DEPENDENCIES) -o $(TARGET) $(LIBS)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Clean the directory
clean: 
	$(RM) $(TARGET)