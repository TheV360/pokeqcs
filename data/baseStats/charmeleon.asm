db DEX_CHARMELEON ; pokedex id
db 59 ;58 ; base hp
db 59 ;64 ; base attack
db 58 ;58 ; base defense
db 73 ;80 ; base speed
db 80 ;65 ; base special  ; avg of 90 and 70
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 143 ;142 ; base exp yield
INCBIN "pic/bmon/braixen.pic",0,1 ; 66, sprite dimensions
dw CharmeleonPicFront
dw CharmeleonPicBack
; move tutor compatibility flags
	m_tutor 0
	m_tutor 9,10
	m_tutor 0
	m_tutor 0
db 3 ; growth rate
; learnset
	; tmlearn 1,2,3,5,6,8
	; tmlearn 9,10,16
	; tmlearn 17,18,19,20,22,23
	; tmlearn 26,27,28,31,32
	; tmlearn 33,34,37,38,39,40
	; tmlearn 41,44
	; tmlearn 51,54
	tmlearn 6
	tmlearn 16
	tmlearn 22
	tmlearn 29,32
	tmlearn 34,37,38
	tmlearn 44
	tmlearn 51
	;TODO: could/should be expanded
db BANK(CharmeleonPicFront)
