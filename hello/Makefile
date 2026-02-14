

all: prog1.hex prog2.hex

%.hex : %.asm
	z80asm $< -o - --list=$(subst .asm,.lst,$<) | srec_cat - -binary -offset 0x1000  -output $(subst .asm,.hex,$<) -Intel -address-length=2 -obs=16

clean:
	rm -f *.hex *.lst

world: clean all
