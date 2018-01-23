
; ASM FILE data\battles\entries\battle30\cs_afterbattle.asm :
; 0x4C6A8..0x4C994 : Cutscene after battle 30
abcs_battle30:  textCursor $ACD
		loadMapFadeIn 1,5,8
		loadMapEntities ce_4C96C
		setActscript $0,$FF,eas_Init
		setActscript $7,$FF,eas_Init
		setPos $7,12,13,UP
		setActscript $1F,$FF,eas_Init
		setPos $1F,11,13,UP
		stopEntity $80
		setActscript $82,$FF,eas_46172
		stopEntity $82
		setPriority $7,$0
		setPriority $1F,$FFFF
		fadeInB
		entityShiver $80
		nextSingleText $0,$80   ; "Grrr...impossible!{N}Why...do I have to die?{W1}"
		moveEntity $1F,$FF,$1,$1
		endMove $8080
		nextSingleText $0,$1F   ; "Where is Mitula?{W1}"
		entityShiver $80
		nextSingleText $0,$80   ; "I don't know...haven't{N}seen her.{W1}"
		csWait 40
		setFacing $80,UP
		customActscript $80,$FF
		ac_setAnimCounter $0    ;   
		ac_setFlip $1           ;   
		ac_updateSprite         ;   
		ac_jump eas_Idle        ;   
		ac_end
		setQuake 2
		csWait 20
		setQuake 0
		setPos $82,11,10,UP
		customActscript $82,$FF
		ac_setSpeed 12336       ;   
		ac_jump eas_Idle        ;   
		ac_end
		setEntityDest $82,9,11
		nextSingleText $0,$80   ; "Oops!  The Ground Orb....{W1}"
		entityFlashWhite $82,$3C
		mapFadeOutToWhite
		csWait 20
		mapFadeInFromWhite
		setFacing $80,DOWN
		entityShiver $80
		nextSingleText $0,$80   ; "I can't endure the light....{N}Ohhh....{W1}"
		customActscript $80,$FF
		ac_setAnimCounter $0    ;   
		ac_setFlip $0           ;   
		ac_updateSprite         ;   
		ac_jump eas_Idle        ;   
		ac_end
		setActscript $80,$FF,eas_Die
		csWait 60
		nextText $0,$1F         ; "Thanks to the Ground Orb, we{N}finally defeated Zalbard.{W2}"
		nextSingleText $0,$1F   ; "The orb released holy power{N}in it's light.{W1}"
		entityFlashWhite $82,$3C
		setActscript $7,$FF,eas_Jump
		moveEntity $7,$FF,$1,$2
		endMove $8080
		nextSingleText $0,$7    ; "Hey, look over there!{W1}"
		setCamDest 5,0
		setPos $81,11,3,DOWN
		entityFlashWhite $81,$3C
		nextSingleText $0,$81   ; "Welcome!{W1}"
		setCameraEntity $81
		moveEntity $81,$FF,$3,$4
		moreMove $2,$2
		moreMove $3,$4
		endMove $8080
		setFacing $0,LEFT
		setFacing $1F,LEFT
		setFacing $7,LEFT
		csWait 50
		entityFlashWhite $81,$3C
		customActscript $82,$FF
		ac_setSpeed 14392       ;   
		ac_jump eas_Idle        ;   
		ac_end
		cameraSpeed $38
		setCameraEntity $82
		setEntityDest $82,11,2
		animEntityFadeInOut $82,$4
		setCamDest 5,8
		setFacing $81,RIGHT
		nextText $C0,$81        ; "Thank you.{W2}"
		nextSingleText $C0,$81  ; "I've finally returned to this{N}world.{W1}"
		nextSingleText $0,$1F   ; "Goddess Mitula?{W1}"
		nextSingleText $C0,$81  ; "Oh, nice to meet you,{N}Sir Astral.{W1}"
		setActscript $1F,$FF,eas_Jump
		nextText $0,$1F         ; "Oh, you know my name?{N}Gee....{W2}"
		nextSingleText $0,$1F   ; "Please tell us, what should{N}we do now?{W1}"
		nextSingleText $C0,$81  ; "I don't know.{W1}"
		setActscript $7,$FF,eas_Jump
		nextText $0,$7          ; "What?!{W2}"
		nextSingleText $0,$7    ; "But, why?  You're a goddess.{N}You know our future, right?{W1}"
		nextSingleText $C0,$81  ; "I'm not Volcanon.  I never{N}tell people the future, even{N}if it could prevent death.{W1}"
		entityShiver $1F
		nextSingleText $0,$1F   ; "Death?!  Not ours I hope.{W1}"
		nextText $C0,$81        ; "Zeon is an unimaginably{N}strong devil.{W2}"
		nextSingleText $C0,$81  ; "If he attains full power,{N}I, even Volcanon, would not{N}be able to stop him.{W1}"
		moveEntity $7,$FF,$2,$1
		endMove $8080
		nextSingleText $0,$7    ; "So, we have to defeat him{N}before he revives completely.{W1}"
		nextSingleText $C0,$81  ; "His power is sealed in the{N}Jewel of Evil.{W1}"
		setActscript $1F,$FF,eas_Jump
		nextSingleText $0,$1F   ; "So, that's why he wants the{N}jewel!{W1}"
		nextSingleText $0,$7    ; "Then, why don't we keep the{N}jewel forever.{W1}"
		nextText $C0,$81        ; "Arc Valley is the place where{N}evil power gathers.{W2}"
		nextSingleText $C0,$81  ; "He will recover his power{N}if he stays there long enough.{W1}"
		nextSingleText $0,$1F   ; "Did you say, Arc Valley?{W1}"
		nextText $C0,$81        ; "You call it Ancient Tower{N}or Granseal.{W2}"
		nextSingleText $C0,$81  ; "Granseal is named for the{N}symbol in the tower.{N}It seals the ground.{W1}"
		setActscript $1F,$FF,eas_Jump
		nextSingleText $0,$1F   ; "I see.{W1}"
		csWait 60
		setFacing $81,LEFT
		csWait 40
		entityFlashWhite $81,$32
		setActscript $0,$0,eas_Jump
		setActscript $7,$0,eas_Jump
		setActscript $1F,$FF,eas_Jump
		nextSingleText $0,$1F   ; "Goddess Mitula, where are{N}you going?{W1}"
		nextSingleText $C0,$81  ; "Down to the surface.{N}To save the people.{W1}"
		nextSingleText $0,$1F   ; "Are you going to abandon us,{N}as Volcanon did?{W1}"
		nextText $C0,$81        ; "Well...no.{N}I'll give you a hint.{W2}"
		nextSingleText $C0,$81  ; "Listen to the legends from{N}the storytellers before you{N}go to Grans Island.{W1}"
		entityFlashWhite $81,$1E
		nextText $C0,$81        ; "You can't kill Zeon, but{N}Volcanon and I will help you{N}if you weaken him.{W2}"
		nextText $C0,$81        ; "{LEADER}!{N}You are the chosen one.{N}You have the holy jewel.{W2}"
		nextSingleText $C0,$81  ; "We need your help to reseal{N}Zeon.{N}Find the holy sword.{W1}"
		nextSingleText $0,$1F   ; "Where is it?{N}How can we find it?{W1}"
		nextSingleText $C0,$81  ; "It's on Grans.{N}Your jewel will lead you to...{W1}"
		animEntityFadeInOut $81,$6
		csWait 50
		moveEntity $1F,$FF,$2,$2
		moreMove $1,$1
		endMove $8080
		csWait 5
		setActscript $1F,$0,eas_461E4
		csWait 120
		nextSingleText $0,$1F   ; "Mitula, Mitula!!{W1}"
		moveEntity $7,$FF,$2,$1
		endMove $8080
		csWait 30
		setFacing $7,DOWN
		csWait 30
		setFacing $7,LEFT
		csWait 30
		setFacing $7,DOWN
		csWait 30
		nextSingleText $0,$7    ; "{LEADER}, Mitula{N}has vanished!{N}What should we do now?{W1}"
		setFacing $1F,RIGHT
		nextSingleText $0,$1F   ; "We have to go to Arc Valley{N}on Grans Island.{W2}"
		setFacing $1F,DOWN
		nextSingleText $0,$1F   ; "{LEADER}, find the{N}storytellers first.{W1}"
		setFacing $0,UP
		entityNod $0
		followEntity $1F,$0,$2
		followEntity $7,$1F,$2
		csc_end
ce_4C96C:       mainEntity 10,13,UP
		entity 12,13,UP,7,eas_Init
		entity 11,10,DOWN,155,eas_Init
		entity 63,63,DOWN,215,eas_Init
		entity 63,63,UP,172,eas_Init
		dc.w $FFFF
