GrimerBaseStats: ; 38d62 (e:4d62)
db DEX_GRIMER ; pokedex id
db 80 ; base hp
db 80 ; base attack
db 50 ; base defense
db 25 ; base speed
db 40 ; base special
db POISON ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 90 ; base exp yield
INCBIN "pic/bmon/grimer.pic",0,1 ; 55, sprite dimensions
dw GrimerPicFront
dw GrimerPicBack
; attacks known at lvl 0
db POUND
db POISON_GAS
db 0
db 0
db 0 ; growth rate
; learnset
db %10100000
db %00000000
db %10011000
db %11000001
db %00111010
db %01001001
db %00000010
db BANK(GrimerPicFront)
