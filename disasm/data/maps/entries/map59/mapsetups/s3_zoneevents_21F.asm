
; ASM FILE data\maps\entries\map59\mapsetups\s3_zoneevents_21F.asm :
; 0x615B6..0x615CE : 
ms_map59_flag21F_ZoneEvents:
		msZoneEvent 255, 36, Map59_21F_ZoneEvent0-ms_map59_flag21F_ZoneEvents
		msDefaultZoneEvent 0, nullsub_106-ms_map59_flag21F_ZoneEvents

; =============== S U B R O U T I N E =======================================

nullsub_106:
		rts

	; End of function nullsub_106


; =============== S U B R O U T I N E =======================================

Map59_21F_ZoneEvent0:
		
		 
		chkFlg  $21F            ; Battle 43 completed
		beq.s   return_615CC
		script  cs_62658
return_615CC:
		rts

	; End of function Map59_21F_ZoneEvent0
