
; SCRIPT SECTION mapsetups\map23\s2_2FA :
; 
ms_map23_flag2FA_EntityEvents:
										dc.b $80
										dc.b 1
										dc.w sub_59BBC-ms_map23_flag2FA_EntityEvents
										dc.b $81
										dc.b 1
										dc.w sub_59BC2-ms_map23_flag2FA_EntityEvents
										dc.b $82
										dc.b 3
										dc.w sub_59BC8-ms_map23_flag2FA_EntityEvents
										dc.b $83
										dc.b 1
										dc.w sub_59B9E+$10000-ms_map23_flag2FA_EntityEvents
										dc.w $FD00
										dc.w nullsub_129+$10000-ms_map23_flag2FA_EntityEvents

; =============== S U B R O U T I N E =======================================

sub_59BBC:
										
										trap    #5
										dc.w $6A5
										rts

	; End of function sub_59BBC


; =============== S U B R O U T I N E =======================================

sub_59BC2:
										
										trap    #5
										dc.w $6A6
										rts

	; End of function sub_59BC2


; =============== S U B R O U T I N E =======================================

sub_59BC8:
										
										trap    #5
										dc.w $6A7
										trap    #5
										dc.w $6A8
										rts

	; End of function sub_59BC8
