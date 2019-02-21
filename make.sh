CC65_DIR=../cc65/bin
NES_LIB=../cc65/lib/nes.lib

${CC65_DIR}/cc65 -Oi --add-source -t nes 2048.c &&
${CC65_DIR}/ca65 crt0.s &&
${CC65_DIR}/ca65 2048.s &&
${CC65_DIR}/ld65 -C 2048.cfg -o 2048.nes crt0.o 2048.o ${NES_LIB} &&
echo "Succeded"

rm -f *.o
rm -f 2048.s

