
; ASM FILE data\maps\entries\map14\mapsetups\s2_1CA.asm :
; 0x58F3C..0x58F4C : 
ms_map14_flag1CA_EntityEvents:
		dc.b $80
		dc.b 1
		dc.w sub_58F44-ms_map14_flag1CA_EntityEvents
		dc.w $FD01
		dc.w return_58EE2+$10000-ms_map14_flag1CA_EntityEvents

; =============== S U B R O U T I N E =======================================

sub_58F44:
		
		jsr     (MapTileset050+$3D6-ms_map14_flag1CA_EntityEvents)
		rts

	; End of function sub_58F44

