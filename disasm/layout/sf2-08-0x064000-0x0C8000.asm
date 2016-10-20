
; GAME SECTION 08 :
; 0x064000..0x0C8000 : Map Tiles, Map Palettes, Map Data
; FREE SPACE : 953 bytes.


p_pt_MapTiles:
		dc.l pt_MapTilesets
p_pt_MapPalettes:
		dc.l pt_MapPalettes
p_pt_MapData:
		dc.l pt_MapData
		include "data\maps\global\maptilesets.asm"		; Map palettes table
		include "data\maps\global\mappalettes.asm"		; Map palettes table
		include "data\maps\entries\mapentries.asm"		; Map entries table
		align $8000
