
ZMAC=../zmac/zmac

all: zout/ccsfdco.hex

zout/ccsfdco.hex: ccsfdco.asm
	$(ZMAC) $^

clean:
	rm -rf zout

world: clean all
