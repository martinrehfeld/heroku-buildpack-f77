CFLAGS=-c
LDFLAGS=-L$(F2CLIB_DIR) -lf2c -lm

EXECUTABLE=myapp
SOURCES=myapp.f
OBJECTS=$(SOURCES:.f=.o)
INTERMEDIATES=$(SOURCES:.f=.c)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.f.o:
	f2c $<
	$(CC) $(CFLAGS) $(<:.f=.c) -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJECTS) $(INTERMEDIATES)
