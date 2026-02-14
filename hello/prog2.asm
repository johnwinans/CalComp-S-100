;****************************************************************************
;
;    Test app for CalComp 2881 Z80 CPU card
;
;    Copyright (C) 2028 John Winans
;
;    This library is free software; you can redistribute it and/or
;    modify it under the terms of the GNU Lesser General Public
;    License as published by the Free Software Foundation; either
;    version 2.1 of the License, or (at your option) any later version.
;
;    This library is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;    Lesser General Public License for more details.
;
;    You should have received a copy of the GNU Lesser General Public
;    License along with this library; if not, write to the Free Software
;    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301
;    USA
;
;****************************************************************************

CONIN:  equ     0f003h          ; return character in A
CONOUT: equ     0f009h          ; send character in C

        org     1000h


        ; Read characters from the 8250, add 1 and transmit back.
loop:
        call    CONIN
        inc     a
        ld      c,a
        call    CONOUT
        nop                     ; these are here for an easy breakpoint target
        nop
        jp      loop
