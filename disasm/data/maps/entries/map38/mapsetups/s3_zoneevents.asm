
; ASM FILE data\maps\entries\map38\mapsetups\s3_zoneevents.asm :
; 0x5DCD0..0x5DD26 : 
ms_map38_ZoneEvents:
                msZoneEvent 12, 6, Map38_ZoneEvent0-ms_map38_ZoneEvents
                msZoneEvent 12, 8, Map38_ZoneEvent1-ms_map38_ZoneEvents
                msDefaultZoneEvent 0, nullsub_97-ms_map38_ZoneEvents

; =============== S U B R O U T I N E =======================================

nullsub_97:
                
                rts

	; End of function nullsub_97


; =============== S U B R O U T I N E =======================================

Map38_ZoneEvent0:
                
                 
                chkFlg  $38F            ; set after the Petro death scene in Roft
                bne.s   return_5DCEE
                script  cs_5DE2E
                setFlg  $38F            ; set after the Petro death scene in Roft
return_5DCEE:
                
                rts

	; End of function Map38_ZoneEvent0


; =============== S U B R O U T I N E =======================================

Map38_ZoneEvent1:
                
                 
                chkFlg  $38F            ; set after the Petro death scene in Roft
                beq.s   return_5DD24
                chkFlg  $4C             ; Zynk is a follower
                beq.s   byte_5DD08      
                script  cs_5DE76
                clrFlg  $4C             ; Zynk is a follower
                bra.s   return_5DD24
byte_5DD08:
                
                chkFlg  $399            ; set after Zynk leaves you at the Galam Drawbridge (for Roft/Petro death scene)
                beq.s   return_5DD24
                chkFlg  $1A             ; Zynk joined
                bne.s   return_5DD24
                chkFlg  $100            ; Temporary map setup flag 00
                beq.s   return_5DD24
                script  cs_5DE76
                clrFlg  $4C             ; Zynk is a follower
return_5DD24:
                
                rts

	; End of function Map38_ZoneEvent1

