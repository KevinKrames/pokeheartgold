#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T21R0501.h"
#include "msgdata\msg\msg_0555_T21R0501.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T21R0501_000
	scrdef scr_seq_T21R0501_001
	scrdef scr_seq_T21R0501_002
	scrdef_end

scr_seq_T21R0501_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_A89
	GoToIf eq, _0053
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoTo _005C

scr_seq_T21R0501_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0555_T21R0501_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21R0501_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0555_T21R0501_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0053:
	NPCMsg 9
	CloseMsg
	ReleaseAll
	End

_005C:
	PartyHasSpecies SPECIES_GOLBAT, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0179
	PartyHasSpecies SPECIES_CHANSEY, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0185
	PartyHasSpecies SPECIES_EEVEE, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0191
	PartyHasSpecies SPECIES_PICHU, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _019D
	PartyHasSpecies SPECIES_CLEFFA, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01A9
	PartyHasSpecies SPECIES_IGGLYBUFF, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01B5
	PartyHasSpecies SPECIES_TOGEPI, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01C1
	PartyHasSpecies SPECIES_AZURILL, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01CD
	PartyHasSpecies SPECIES_BUDEW, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01D9
	PartyHasSpecies SPECIES_BUNEARY, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01E5
	PartyHasSpecies SPECIES_CHINGLING, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01F1
	PartyHasSpecies SPECIES_HAPPINY, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01FD
	PartyHasSpecies SPECIES_MUNCHLAX, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0209
	PartyHasSpecies SPECIES_RIOLU, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0215
	BufferSpeciesName 0, SPECIES_NONE, 0, 0
	NPCMsg msg_0555_T21R0501_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0179:
	SetVar VAR_SPECIAL_x800A, 42
	GoTo _0221

_0185:
	SetVar VAR_SPECIAL_x800A, 113
	GoTo _0221

_0191:
	SetVar VAR_SPECIAL_x800A, 133
	GoTo _0221

_019D:
	SetVar VAR_SPECIAL_x800A, 172
	GoTo _0221

_01A9:
	SetVar VAR_SPECIAL_x800A, 173
	GoTo _0221

_01B5:
	SetVar VAR_SPECIAL_x800A, 174
	GoTo _0221

_01C1:
	SetVar VAR_SPECIAL_x800A, 175
	GoTo _0221

_01CD:
	SetVar VAR_SPECIAL_x800A, 298
	GoTo _0221

_01D9:
	SetVar VAR_SPECIAL_x800A, 406
	GoTo _0221

_01E5:
	SetVar VAR_SPECIAL_x800A, 427
	GoTo _0221

_01F1:
	SetVar VAR_SPECIAL_x800A, 433
	GoTo _0221

_01FD:
	SetVar VAR_SPECIAL_x800A, 440
	GoTo _0221

_0209:
	SetVar VAR_SPECIAL_x800A, 446
	GoTo _0221

_0215:
	SetVar VAR_SPECIAL_x800A, 447
	GoTo _0221

_0221:
	BufferInt 0, VAR_SPECIAL_x800A
	BufferSpeciesName 0, VAR_SPECIAL_x800A, 0, 0
	NPCMsg 10
	BufferSpeciesName 0, VAR_SPECIAL_x800A, 0, 0
	NPCMsg 2
	YesNo VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _025C
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _027F
	End

_025C:
	NPCMsg 3
	YesNo VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0288
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _027F
	End

_027F:
	NPCMsg msg_0555_T21R0501_00001
	CloseMsg
	ReleaseAll
	End

_0288:
	NPCMsg 4
	YesNo VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _02AB
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _027F
	End

_02AB:
	BufferSpeciesName 0, VAR_SPECIAL_x800A, 0, 0
	NPCMsg 5
	GetPartyLead 32770
	BufferInt 0, VAR_SPECIAL_x8002
	BufferSpeciesName 1, VAR_SPECIAL_x8002, 0, 0
	NPCMsg 11
	GoTo _02D0

_02D0:
	MonAddFriendship 255, VAR_SPECIAL_x8002
	BufferMonSpeciesName 0, 0
	NPCMsg 8
	SetFlag FLAG_UNK_A89
	CloseMsg
	ReleaseAll
	End
	.balign 4, 0
