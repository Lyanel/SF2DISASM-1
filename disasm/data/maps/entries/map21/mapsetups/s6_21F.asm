
; ASM FILE data\maps\entries\map21\mapsetups\s6_21F.asm :
; 0x63482..0x6348C : 

; =============== S U B R O U T I N E =======================================

ms_map21_flag21F_InitFunction:
		
		trap    #SOUND_COMMAND
		dc.w MUSIC_TOWN
		jsr     (FadeInFromBlack).w
		rts

	; End of function ms_map21_flag21F_InitFunction

