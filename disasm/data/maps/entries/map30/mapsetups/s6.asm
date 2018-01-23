
; ASM FILE data\maps\entries\map30\mapsetups\s6.asm :
; 0x5A2F2..0x5A646 : 

; =============== S U B R O U T I N E =======================================

ms_map30_InitFunction:
		
		trap    #CHECK_FLAG
		dc.w $2F9
		beq.s   loc_5A2FE
		lea     cs_5A30C(pc), a0
		trap    #6
loc_5A2FE:
		trap    #CHECK_FLAG
		dc.w $2F8
		bne.s   return_5A30A
		lea     cs_5A31E(pc), a0
		trap    #6
return_5A30A:
		rts

	; End of function ms_map30_InitFunction

cs_5A30C:       setBlocks 21,6,2,2,7,5
		setBlocks 21,0,4,4,6,0
		csc_end
cs_5A31E:       customActscript $82,$FF
		ac_setAnimCounter $0    ;   
		ac_setFlip $3           ;   
		ac_updateSprite         ;   
		ac_jump eas_Idle        ;   
		ac_end
		stopEntity $82
		csc_end
cs_5A33A:       textCursor $6AF
		setCamDest 0,7
		setActscript $9E,$FF,eas_Init2
		followEntity $1F,$7,$2
		customActscript $9E,$FF
		ac_setSpeed 0           ;   
		ac_jump eas_Idle        ;   
		ac_end
		setEntityDest $9E,8,11
		nextSingleText $0,$9E   ; "Where is the sick dwarf?{W1}"
		csWait 5
		setActscript $9E,$0,eas_461B6
		csWait 50
		setCamDest 5,7
		moveEntity $80,$FF,$2,$1
		endMove $8080
		setFacing $9E,RIGHT
		nextSingleText $0,$80   ; "Oh, thank goodness.{N}I sure am glad to see you.{W1}"
		setActscript $80,$FF,eas_Jump
		setActscript $80,$FF,eas_Jump
		moveEntity $80,$FF,$0,$3
		endMove $8080
		setFacing $80,LEFT
		nextSingleText $0,$80   ; "Here, please examine him.{W1}"
		setCameraEntity $9E
		moveEntity $9E,$FF,$0,$4
		moreMove $3,$1
		moreMove $0,$2
		endMove $8080
		setCamDest 10,7
		setFacing $80,RIGHT
		csWait 60
		nextText $0,$9E         ; "Oh, I hope I'm not too late.{W2}"
		nextSingleText $0,$9E   ; "Ok, let's see.{W1}"
		csWait 50
		entityShiver $9E
		csWait 30
		entityShiver $9E
		csWait 20
		entityFlashWhite $9E,$78
		mapFadeOutToWhite
		entityFlashWhite $9E,$64
		mapFadeInFromWhite
		csWait 50
		csWait 5
		setActscript $81,$0,eas_461B6
		csWait 100
		moveEntity $81,$FF,$3,$1
		endMove $8080
		setFacing $81,LEFT
		nextSingleText $0,$81   ; "How is he?{W1}"
		csWait 15
		entityShakeHead $84
		nextSingleText $0,$84   ; "I don't know yet....{W1}"
		csWait 60
		setActscript $82,$FF,eas_Init
		setActscript $82,$FF,eas_Jump
		startEntity $82
		nextSingleText $0,$82   ; "Whoa!{W1}"
		csWait 5
		setActscript $82,$0,eas_461B6
		csWait 100
		setFacing $82,UP
		nextSingleText $0,$82   ; "What?{W1}"
		moveEntity $81,$FF,$1,$1
		endMove $8080
		setFacing $81,LEFT
		setFacing $82,RIGHT
		nextSingleText $0,$81   ; "Hey, are you OK?{W1}"
		nextSingleText $0,$82   ; "I'm OK.  I'm fine.{N}I feel great!{W1}"
		csWait 20
		moveEntity $80,$FF,$0,$1
		endMove $8080
		setFacing $80,DOWN
		setFacing $81,LEFT
		setFacing $82,LEFT
		setFacing $83,LEFT
		setFacing $84,LEFT
		setFacing $9E,UP
		nextSingleText $0,$80   ; "Oh, how can we thank you?{W1}"
		entityNod $82
		nextText $0,$9E         ; "I don't need anything.{W2}"
		nextSingleText $0,$9E   ; "But, why don't you help{N}{LEADER}?{W1}"
		csWait 15
		setPos $1F,7,11,RIGHT
		setPos $7,7,10,RIGHT
		setPos $0,8,11,RIGHT
		setCameraEntity $9E
		moveEntity $9E,$FF,$2,$2
		moreMove $1,$1
		moreMove $2,$3
		endMove $8080
		nextSingleText $0,$9E   ; "{LEADER}, I'm  going now.{W2}{N}I hope your journey is safe{N}and uneventful.  Bye!{W1}"
		setCameraEntity $FFFF
		moveEntity $9E,$FF,$1,$2
		moreMove $2,$3
		moreMove $3,$3
		endMove $8080
		setFacing $0,DOWN
		setFacing $7,DOWN
		setFacing $1F,DOWN
		moveEntity $9E,$FF,$0,$1
		moreMove $3,$5
		endMove $8080
		hideEntity $9E
		setCamDest 4,7
		moveEntity $0,$0,$0,$2
		endMove $8080
		moveEntity $80,$FF,$2,$3
		endMove $8080
		csc_end
cs_5A4FE:       textCursor $6C2
		setFacing $81,LEFT
		setFacing $82,LEFT
		setFacing $83,LEFT
		setFacing $84,LEFT
		setCamDest 6,7
		nextSingleText $0,$80   ; "We use it to destroy large{N}rocks.{W1}"
		moveEntity $80,$FF,$0,$1
		endMove $8080
		nextSingleText $0,$80   ; "OK, guys!{N}Let's go back to Grans{N}Island!{W2}"
		nextSingleText $0,$80   ; "Everybody dig!{W1}"
		setActscript $81,$0,eas_Jump
		setActscript $82,$0,eas_Jump
		setActscript $83,$0,eas_Jump
		setActscript $84,$FF,eas_Jump
		setActscript $81,$0,eas_Jump
		setActscript $82,$0,eas_Jump
		setActscript $83,$0,eas_Jump
		setActscript $84,$FF,eas_Jump
		setActscript $0,$FF,eas_Init
		moveEntity $0,$FF,$2,$1
		endMove $8080
		setEntityDest $7,8,10
		moveEntity $80,$0,$2,$2
		endMove $8080
		moveEntity $81,$0,$2,$1
		endMove $8080
		moveEntity $82,$0,$2,$1
		endMove $8080
		moveEntity $83,$0,$2,$1
		endMove $8080
		moveEntity $84,$FF,$2,$2
		endMove $8080
		setFacing $0,RIGHT
		setFacing $7,RIGHT
		setFacing $1F,RIGHT
		moveEntity $80,$0,$1,$2
		moreMove $2,$1
		moreMove $1,$3
		endMove $8080
		moveEntity $83,$0,$2,$3
		moreMove $1,$2
		moreMove $2,$1
		moreMove $1,$3
		endMove $8080
		moveEntity $84,$0,$1,$2
		moreMove $2,$3
		moreMove $1,$2
		moreMove $2,$1
		moreMove $1,$3
		endMove $8080
		moveEntity $81,$0,$1,$1
		moreMove $2,$5
		moreMove $1,$2
		moreMove $2,$1
		moreMove $1,$3
		endMove $8080
		moveEntity $82,$FF,$C,$28
		moreMove $1,$1
		moreMove $2,$4
		moreMove $1,$1
		endMove $8080
		csWait 30
		moveEntity $82,$FF,$3,$1
		endMove $8080
		setFacing $82,LEFT
		entityNod $82
		moveEntity $82,$FF,$1,$2
		moreMove $2,$1
		moreMove $1,$3
		endMove $8080
		setPos $80,7,3,UP
		setPos $81,8,3,UP
		setPos $82,7,4,UP
		setPos $83,8,4,UP
		setPos $84,7,5,UP
		setBlocks 21,6,2,2,7,5
		csc_end
