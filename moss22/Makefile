
ZMAC=../zmac/zmac

all: zout/ccsfdco.mhex

ZFLAGS=--oo lst,hex,cim
ZFLAGS+=-s

zout/ccsfdco.hex: ccsfdco.asm
	$(ZMAC) $(ZFLAGS) $^

zout/ccsfdco.cim: zout/ccsfdco.hex

zout/ccsfdco.mhex: zout/ccsfdco.cim
	hexdump -v -e '1/1 "%02X "' $^ > $@

clean:
	rm -rf zout

world: clean all
