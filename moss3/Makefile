
ZMAC=../zmac/zmac

all: zout/ccsfdc3.hex

zout/ccsfdc3.hex: ccsfdc3.asm
	$(ZMAC) $^

clean:
	rm -rf zout

world: clean all
