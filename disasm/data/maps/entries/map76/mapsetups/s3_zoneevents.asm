
; ASM FILE data\maps\entries\map76\mapsetups\s3_zoneevents.asm :
; 0x50A24..0x50A3E : 
ms_map76_ZoneEvents:
                msDefaultZoneEvent 0, sub_50A28-ms_map76_ZoneEvents

; =============== S U B R O U T I N E =======================================

sub_50A28:
                
                 
                chkFlg  $217            ; Battle 35 completed
                bne.s   return_50A3A
                setFlg  $1B3            ; Battle 35 unlocked
                move.l  #$100FF,((MAP_EVENT_TYPE-$1000000)).w
return_50A3A:
                
                rts

	; End of function sub_50A28


; =============== S U B R O U T I N E =======================================

nullsub_166:
                
                rts

	; End of function nullsub_166

