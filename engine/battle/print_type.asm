; [wd0b5] = pokemon ID
; hl = dest addr
PrintMonType:
	call GetPredefRegisters
	push hl
	call GetMonHeader
	pop hl
	push hl
	ld a, [wMonHType1]
	call PrintType
	ld a, [wMonHType1]
	ld b, a
	ld a, [wMonHType2]
	cp b
	pop hl
	jr z, EraseType2Text
	ld bc, SCREEN_WIDTH * 2
	add hl, bc

; a = type
; hl = dest addr
PrintType:
	push hl
	jr PrintType_

; erase "TYPE2/" if the mon only has 1 type
EraseType2Text:
	ld a, " "
	ld bc, $13
	add hl, bc
	ld bc, $6
	jp FillMemory

PrintMoveType:
	jp _PrintMoveType 			;replace
	
	call GetPredefRegisters
	push hl
	ld a, [wPlayerMoveType]
; fall through

PrintType_:
	add a
	ld hl, TypeNames
	ld e, a
	ld d, $0
	add hl, de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	pop hl
	jp PlaceString

_PrintMoveType:
	call GetPredefRegisters
	push hl
								;
	ld hl, TypeIconGFX
	ld bc, 2 * 4 * 4	; 4 * LEN_1BPP_TILE
;
	ld a, [wPlayerMoveType]
; fall through

_PrintType_:
	call AddNTimes ; skip to the a'th (4*tiles)
	ld d, h
	ld e, l
	ld hl, vChars1 + $10 * $50	;"just whatever free space" (using font)
	lb bc, BANK(TypeIconGFX), 4
	call CopyVideoDataDouble ;Request1bpp
	coord hl, 3, 9
	ld [hl], $50 + $80 			;$80-$ff is vChars1 (font)
	inc hl
	ld [hl], $51 + $80
	inc hl
	ld [hl], $52 + $80
	inc hl
	ld [hl], $53 + $80

	;; load category icons based on phys/special/status
	ld a, [wPlayerSelectedMove]
	ld [wTempMoveID], a
	callba _PhysicalSpecialSplit
	ld a, [wTempMoveID]
	ld hl, CategoryIconGFX
	ld bc, 4 * 8	; 4 * LEN_2BPP_TILE
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vChars1 + $10 * $54	;in free font space
	lb bc, BANK(TypeIconGFX), 2
	call CopyVideoData ;Request2bpp
	coord hl, 1, 9
	ld [hl], $54 + $80 			;$80-$ff is vChars1 (font)
	inc hl
	ld [hl], $55 + $80
	
	;; let color know we want type colored
	ld hl, wFlags_0xcd60 + 1
	set 0, [hl]
	call LoadBattleCategoryAndTypePals ; set the palette
	
	pop hl
	ret

LoadBattleCategoryAndTypePals:	; Load palette map
	;; ld b, SET_PAL_BATTLE
	;; jp RunPaletteCommand
	ld a,$02
	ld [rSVBK],a

	ld a, [wTempMoveID]
	add a, a
	ld d, a
	ld e, 5
	callba LoadCategoryPalette
	ld a, [wPlayerMoveType]
	add a, a
	ld d, a	;[hl]
	ld e, 6
	callba LoadTypePalette

	ld hl, W2_TilesetPaletteMap + 1 + 9*20 ; d200 (1, 9)
	ld a, 5
	ld [hli], a
	ld [hl], a
	ld hl, W2_TilesetPaletteMap + 3 + 9*20 ; d200 (3, 9)
	ld a, 6
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a ;set pal 6 thru (7,9)

	ld a,3
	ld [W2_StaticPaletteMapChanged],a
	ld a,1
	ld [W2_ForceBGPUpdate],a

	xor a
	ld [rSVBK],a

	
	ret


INCLUDE "text/type_names.asm"
