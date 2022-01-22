db DEX_CHARIZARD ; pokedex id
db 75 ;78 ; base hp
db 69 ;84 ; base attack
db 72 ;78 ; base defense
db 104 ;100 ; base speed
db 107 ;85 ; base special  ; avg of 100 and 114
db FIRE ; species type 1
db PSYCHIC ;FLYING ; species type 2
db 45 ; catch rate
db 240 ;209 ; base exp yield
INCBIN "pic/bmon/delphox.pic",0,1 ; 77, sprite dimensions
dw CharizardPicFront
dw CharizardPicBack
; move tutor compatibility flags
	m_tutor 2
	m_tutor 9,10
	m_tutor 0
	m_tutor 0
db 3 ; growth rate
; learnset
	; tmlearn 1,2,3,4,5,6,8
	; tmlearn 9,10,15,16
	; tmlearn 17,18,19,20,22,23
	; tmlearn 26,27,28,31,32
	; tmlearn 33,34,37,38,39,40
	; tmlearn 41,44
	; tmlearn 51,52,54
	tmlearn 34,6,22,16,29,32,37,38,44,51,15,30,49
	;TODO: could/should be expanded
db BANK(CharizardPicFront)
