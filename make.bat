cc65-snapshot-win32\bin\cc65 -Oi --add-source -t nes 2048.c || goto fail
cc65-snapshot-win32\bin\ca65 crt0.s || goto fail
cc65-snapshot-win32\bin\ca65 2048.s || goto fail
cc65-snapshot-win32\bin\ld65 -C 2048.cfg -o 2048.nes crt0.o 2048.o cc65-snapshot-win32\lib\nes.lib || goto fail
goto exit

:fail
pause

:exit

