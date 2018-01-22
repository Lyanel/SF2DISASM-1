
; ASM FILE data\battles\entries\battle21\cs_afterbattle.asm :
; 0x4B88C..0x4B958 : Cutscene after battle 21
abcs_battle21:  textCursor $A17
		loadMapFadeIn 67,4,18
		loadMapEntities ce_4B948
		setActscript $0,$FF,eas_Init
		setActscript $7,$FF,eas_Init
		setPos $7,11,23,2
		setActscript $1F,$FF,eas_Init
		setPos $1F,11,21,2
		setPos $1E,11,22,2
		fadeInB
		customActscript $1F,$FF
		dc.w $10                ;   0010 SET SPEED X=$1C Y=$1C
		dc.b $1C
		dc.b $1C
		dc.w $34                ;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              ; 0014 END OF CUSTOM ACTSCRIPT
		csWait 5
		setActscript $1F,$0,eas_461B6
		csWait 120
		moveEntity $1F,$FF,$2,$3
		moreMove $3,$1
		moreMove $2,$1
		endMove $8080
		csWait 40
		setFacing $1F,0
		nextSingleText $0,$1F   ; "Hurry!  Let's go into{N}Creed's mansion.{W1}"
		nextSingleText $C0,$7   ; "Oddler, can you see?{W1}"
		nextSingleText $0,$1F   ; "No, why?{W1}"
		nextSingleText $C0,$7   ; "You're moving around as{N}if you can see.{W1}"
		nextSingleText $0,$1F   ; "Am I?  Maybe my other{N}senses have sharpened{N}since I lost my sight.{W1}"
		nextSingleText $C0,$7   ; "Oh, I see.{W1}"
		moveEntity $7,$FF,$2,$1
		endMove $8080
		setFacing $7,1
		nextSingleText $C0,$7   ; "{LEADER}, let's go see{N}Mr. Creed!{W1}"
		setFacing $0,3
		entityNod $0
		followEntity $1E,$0,$2
		followEntity $7,$1E,$1
		followEntity $1F,$1E,$3
		mapSysEvent $43,$1A,$17,$3
		csc_end
ce_4B948:       dc.w $A
		dc.w $16
		dc.w 2
		dc.b $B
		dc.b $17
		dc.b 2
		dc.b 7
		dc.l eas_Init           
		dc.w $FFFF
