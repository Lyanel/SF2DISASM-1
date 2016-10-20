
; ASM FILE code\common\tech\randomizing.asm :
; 0x1600..0x16BE : Randomizing function

; =============== S U B R O U T I N E =======================================

; randomize a few bits in D7 based on RAM:dea4

UpdateRandomSeed:
		
		move.w  (RANDOM_SEED).l,d7
		mulu.w  #$D,d7
		addi.w  #7,d7
		andi.l  #$FFFF,d7
		move.w  d7,(RANDOM_SEED).l
		move.w  d6,-(sp)
		add.w   d6,d6
		mulu.w  d6,d7
		swap    d7
		move.w  (sp)+,d6
		lsr.w   #1,d7
		rts

	; End of function UpdateRandomSeed


; =============== S U B R O U T I N E =======================================

WaitForRandomValueToMatch:
		
		movem.l d0-d5/a0-a6,-(sp)
		move.b  d6,d1
loc_162E:
		
		bsr.w   GetRandomValueUnsigned
		cmpi.b  #1,d1
		beq.s   loc_163A
		bpl.s   loc_163E
loc_163A:
		
		bra.w   loc_164A
loc_163E:
		
		cmp.b   d1,d7
		bcs.s   loc_1644
		bra.s   loc_162E
loc_1644:
		
		movem.l (sp)+,d0-d5/a0-a6
		rts
loc_164A:
		
		clr.b   d7
		movem.l (sp)+,d0-d5/a0-a6
		rts

	; End of function WaitForRandomValueToMatch


; =============== S U B R O U T I N E =======================================

GetRandomValueUnsigned:
		
		movem.l d0-d5/a0-a6,-(sp)
		lea     (RANDOM_WAITING_FOR_INPUT).l,a0
		clr.w   d7
		move.w  (a0),d7
		mulu.w  #$21D,d7
		addi.w  #$3039,d7
		move.w  d7,(a0)
		andi.w  #$FF,d7
		movem.l (sp)+,d0-d5/a0-a6
		rts

	; End of function GetRandomValueUnsigned


; =============== S U B R O U T I N E =======================================

; another random function taking debug mode into account

GetRandomOrDebugValue:
		
		movem.l d6-d7,-(sp)
		move.w  d0,d6
		tst.b   (DEBUG_MODE_ACTIVATED).l
		beq.s   loc_16B2
		moveq   #INPUT_A_UP_BIT,d0
		btst    #3,((P1_INPUT-$1000000)).w
		bne.w   loc_16B8
		moveq   #INPUT_A_DOWN_BIT,d0
		btst    #0,((P1_INPUT-$1000000)).w
		bne.w   loc_16B8
		moveq   #INPUT_A_LEFT_BIT,d0
		btst    #2,((P1_INPUT-$1000000)).w
		bne.w   loc_16B8
		moveq   #INPUT_A_RIGHT_BIT,d0
		btst    #1,((P1_INPUT-$1000000)).w
		bne.w   loc_16B8
loc_16B2:
		
		bsr.w   UpdateRandomSeed
		move.w  d7,d0
loc_16B8:
		
		movem.l (sp)+,d6-d7
		rts

	; End of function GetRandomOrDebugValue

