
; ASM FILE data\maps\entries\map45\mapsetups\s2_entityevents.asm :
; 0x60024..0x60060 : 
ms_map45_EntityEvents:
                msEntityEvent 128, UP, Map45_EntityEvent0-ms_map45_EntityEvents
                msEntityEvent 129, DOWN, Map45_EntityEvent1-ms_map45_EntityEvents
                msEntityEvent 130, DOWN, Map45_EntityEvent2-ms_map45_EntityEvents
                msEntityEvent 131, UP, Map45_EntityEvent3-ms_map45_EntityEvents
                msDefaultEntityEvent 0, nullsub_147-ms_map45_EntityEvents

; =============== S U B R O U T I N E =======================================

Map45_EntityEvent0:
                
                 
                txt     $81D            ; "Monks are dedicated to{N}studying the powers of the{N}mind.{W2}"
                txt     $81E            ; "We train very hard.{W1}"
                rts

	; End of function Map45_EntityEvent0


; =============== S U B R O U T I N E =======================================

Map45_EntityEvent1:
                
                 
                txt     $81F            ; "Don't approach my back!{N}You will die!{W1}"
                rts

	; End of function Map45_EntityEvent1


; =============== S U B R O U T I N E =======================================

Map45_EntityEvent2:
                
                 
                txt     $820            ; "I'm always in control of my{N}mind.{W1}"
                rts

	; End of function Map45_EntityEvent2


; =============== S U B R O U T I N E =======================================

Map45_EntityEvent3:
                
                 
                txt     $821            ; "Where are you from?{N}I used to be a priest.{W2}"
                txt     $822            ; "Do you need my help?{W1}"
                jsr     j_ChurchActions
                rts

	; End of function Map45_EntityEvent3


; =============== S U B R O U T I N E =======================================

nullsub_147:
                
                rts

	; End of function nullsub_147

