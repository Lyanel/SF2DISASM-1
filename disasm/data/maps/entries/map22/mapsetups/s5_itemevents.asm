
; ASM FILE data\maps\entries\map22\mapsetups\s5_itemevents.asm :
; 0x59604..0x5962E : 
ms_map22_Section5:
                msItemEvent 35, 24, NO_DIRECTION, 125, Map22_ItemEvent0-ms_map22_Section5
                msDefaultItemEvent dftentevt_5962C-ms_map22_Section5

; =============== S U B R O U T I N E =======================================

Map22_ItemEvent0:
                
                moveq   #$7D,d1 
                jsr     j_sub_9146
                cmpi.w  #$FFFF,d0
                beq.s   byte_59624
                jsr     j_RemoveItemBySlot
byte_59624:
                
                script  cs_599B2
                moveq   #$FFFFFFFF,d6
dftentevt_5962C:
                
                rts

	; End of function Map22_ItemEvent0

