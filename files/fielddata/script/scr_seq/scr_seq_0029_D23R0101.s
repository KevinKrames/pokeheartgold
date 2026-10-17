#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_D23R0101.h"
#include "msgdata\msg\msg_0065_D23R0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D23R0101_000
	scrdef scr_seq_D23R0101_001
	scrdef scr_seq_D23R0101_002
	scrdef scr_seq_D23R0101_003
	scrdef scr_seq_D23R0101_004
	scrdef scr_seq_D23R0101_005
	scrdef scr_seq_D23R0101_006
	scrdef scr_seq_D23R0101_007
	scrdef scr_seq_D23R0101_008
	scrdef scr_seq_D23R0101_009
	scrdef scr_seq_D23R0101_010
	scrdef_end

scr_seq_D23R0101_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 2
	GoToIf ne, _01FD
	NPCMsg msg_0065_D23R0101_00001
	GoTo _0213

scr_seq_D23R0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_UNK_4136, 0
	GoToIf ne, _021B
	CheckFlag FLAG_UNK_AA6
	GoToIf eq, _022D
	CheckFlag FLAG_UNK_AA5
	GoToIf eq, _0238
	NPCMsg msg_0065_D23R0101_00028
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0256
	GoTo _0295

scr_seq_D23R0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_RADIO_CARD
	GoToIf eq, _02A0
	NPCMsg msg_0065_D23R0101_00009
	BufferPlayersName 0
	NPCMsg msg_0065_D23R0101_00010
	PlayFanfare SEQ_ME_KEYITEM
	WaitFanfare
	CloseMsg
	RegisterPokegearCard 2
	SetFlag FLAG_GOT_RADIO_CARD
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 7, _097E
	ApplyMovement obj_player, _0992
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	NPCMsg msg_0065_D23R0101_00015
	CloseMsg
	ApplyMovement 7, _09A2
	Wait 24, VAR_SPECIAL_RESULT
	ApplyMovement obj_player, _09AE
	WaitMovement
	HidePerson 7
	SetFlag FLAG_UNK_318
	ReleaseAll
	End

scr_seq_D23R0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0065_D23R0101_00016
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D23R0101_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0065_D23R0101_00017
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D23R0101_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf eq, _02CD
	NPCMsg msg_0065_D23R0101_00018
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D23R0101_006:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0065_D23R0101_00026
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D23R0101_007:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0065_D23R0101_00027
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D23R0101_008:
	SetFlag FLAG_HIDE_ROCKET_TAKEOVER_6
	SetFlag FLAG_HIDE_ROCKET_TAKEOVER_2
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 2
	GoToIf ne, _0300
	ClearFlag FLAG_HIDE_ROCKET_TAKEOVER_6
	GoTo _0313

scr_seq_D23R0101_009:
	FollowMonResetMovement
	LockAll
	MovePersonFacing 5, 13, 1, 6, DIR_EAST
	CallStd std_play_rival_intro_music
	GetPersonCoords 6, VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _031B
	ApplyMovement 5, _09B6
	CompareVarToValue VAR_TEMP_x400B, 33
	GoToIf ne, _037C
	ApplyMovement 6, _09C2
	GoTo _0382

scr_seq_D23R0101_010:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0065_D23R0101_00014
	ApplyMovement 7, _09AE
	WaitMovement
	CloseMsg
	ReleaseAll
	End

_01FD:
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 4
	GoToIf ne, _03B9
	NPCMsg msg_0065_D23R0101_00001
	GoTo _0213

_0213:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_021B:
	BufferPlayersName 0
	NPCMsg msg_0065_D23R0101_00043
	CopyVar VAR_SPECIAL_x8002, VAR_UNK_4136
	GoTo _03CF

_022D:
	NPCMsg msg_0065_D23R0101_00029
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0238:
	NPCMsg msg_0065_D23R0101_00045
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0256
	GoTo _0295

_0256:
	SetFlag FLAG_UNK_AA5
	NPCMsg msg_0065_D23R0101_00031
	LotoIDGet VAR_SPECIAL_x8000
	BufferIntEx 0, VAR_SPECIAL_x8000, 2, 5
	NPCMsg msg_0065_D23R0101_00032
	LotoIDSearch VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003, VAR_SPECIAL_x8000
	CompareVarToValue VAR_SPECIAL_x8002, 0
	GoToIf eq, _0418
	CompareVarToValue VAR_SPECIAL_x8003, 0
	GoToIf eq, _0423
	GoTo _0431

_0295:
	NPCMsg msg_0065_D23R0101_00030
	WaitButton
	CloseMsg
	ReleaseAll
	End

_02A0:
	NPCMsg msg_0065_D23R0101_00011
	WaitButton
	CloseMsg
	ReleaseAll
	End

	; 0x02AB
	.byte 0x2d, 0x00, 0x0d, 0x32, 0x00
	.byte 0x35, 0x00, 0xeb, 0x02, 0x61, 0x00, 0x02, 0x00, 0x49, 0x00, 0xf3, 0x05, 0x4b, 0x00, 0xf3, 0x05
	.byte 0x2d, 0x00, 0x0c, 0x32, 0x00, 0x35, 0x00, 0xeb, 0x02, 0x61, 0x00, 0x02, 0x00
_02CD:
	CompareVarToValue VAR_TEMP_x400A, 1
	GoToIf eq, _043F
	NPCMsg msg_0065_D23R0101_00019
	CloseMsg
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _045C
	ApplyMovement 6, _09CE
	GoTo _047D

_0300:
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 4
	GoToIf ne, _0489
	GoTo _04A4

_0313:
	SetVar VAR_TEMP_x400A, 0
	End

_031B:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _0382
	ApplyMovement 5, _09DA
	CompareVarToValue VAR_TEMP_x400B, 11
	GoToIf ne, _0382
	ApplyMovement 6, _09E2
	WaitMovement
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00021
	CloseMsg
	ApplyMovement 5, _09EE
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _04A6
	ApplyMovement 5, _09FA
	ApplyMovement 6, _0A06
	GoTo _04E0

_037C:
	GoTo _0382

_0382:
	WaitMovement
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00021
	CloseMsg
	ApplyMovement 5, _09EE
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _04A6
	ApplyMovement 5, _09FA
	ApplyMovement 6, _0A06
	GoTo _04E0

_03B9:
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf ne, _04FD
	NPCMsg msg_0065_D23R0101_00002
	GoTo _0213

_03CF:
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_x8002
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _0508
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0514
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _0520
	CompareVarToValue VAR_SPECIAL_x8008, 4
	GoToIf eq, _052C
	CompareVarToValue VAR_SPECIAL_x8008, 5
	GoToIf eq, _0538
	End

_0418:
	NPCMsg msg_0065_D23R0101_00035
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0423:
	BufferPartyMonNick 0, VAR_SPECIAL_x8001
	NPCMsg msg_0065_D23R0101_00033
	GoTo _0544

_0431:
	BufferBoxMonNick 0, VAR_SPECIAL_x8001
	NPCMsg msg_0065_D23R0101_00034
	GoTo _0544

_043F:
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _058D
	SetVar VAR_TEMP_x400B, 33
	GoTo _05AB

_045C:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _047D
	ApplyMovement 6, _0A1A
	WaitMovement
	ReleaseAll
	SetVar VAR_TEMP_x400A, 1
	End

_047D:
	WaitMovement
	ReleaseAll
	SetVar VAR_TEMP_x400A, 1
	End

_0489:
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf ne, _05B6
	ClearFlag FLAG_HIDE_ROCKET_TAKEOVER_6
	ClearFlag FLAG_HIDE_RADIO_TOWER_RIVAL
	GoTo _0313

_04A4:
	End

_04A6:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _04E0
	ApplyMovement 5, _0A26
	ApplyMovement 6, _0A32
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _05C2
	ApplyMovement obj_player, _0A46
	GoTo _05FF

_04E0:
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _05C2
	ApplyMovement obj_player, _0A46
	GoTo _05FF

_04FD:
	NPCMsg msg_0065_D23R0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0508:
	SetVar VAR_SPECIAL_x8003, 2
	GoTo _0627

_0514:
	SetVar VAR_SPECIAL_x8003, 51
	GoTo _0627

_0520:
	SetVar VAR_SPECIAL_x8003, 216
	GoTo _0627

_052C:
	SetVar VAR_SPECIAL_x8003, 29
	GoTo _0627

_0538:
	SetVar VAR_SPECIAL_x8003, 1
	GoTo _0627

_0544:
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_x8002
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _0652
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _065B
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _0664
	CompareVarToValue VAR_SPECIAL_x8008, 4
	GoToIf eq, _066D
	CompareVarToValue VAR_SPECIAL_x8008, 5
	GoToIf eq, _0676
	End

_058D:
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _05AB
	SetVar VAR_TEMP_x400B, 11
	NPCMsg msg_0065_D23R0101_00020
	WaitButton
	CloseMsg
	ReleaseAll
	End

_05AB:
	NPCMsg msg_0065_D23R0101_00020
	WaitButton
	CloseMsg
	ReleaseAll
	End

_05B6:
	ClearFlag FLAG_HIDE_ROCKET_TAKEOVER_2
	SetVar VAR_TEMP_x400A, 0
	End

_05C2:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _05FF
	ApplyMovement obj_player, _0A4E
	WaitMovement
	BufferPlayersName 0
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00022
	CloseMsg
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _067F
	ApplyMovement obj_player, _0A56
	GoTo _06C0

_05FF:
	WaitMovement
	BufferPlayersName 0
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00022
	CloseMsg
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _067F
	ApplyMovement obj_player, _0A56
	GoTo _06C0

_0627:
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8003
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _06EC
	CallStd std_give_item_verbose
	GoTo _06FD

_0652:
	NPCMsg msg_0065_D23R0101_00036
	GoTo _03CF

_065B:
	NPCMsg msg_0065_D23R0101_00038
	GoTo _03CF

_0664:
	NPCMsg msg_0065_D23R0101_00039
	GoTo _03CF

_066D:
	NPCMsg msg_0065_D23R0101_00040
	GoTo _03CF

_0676:
	NPCMsg msg_0065_D23R0101_00041
	GoTo _03CF

_067F:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _06C0
	ApplyMovement obj_player, _0B16
	Wait 50, VAR_SPECIAL_RESULT
	SetAvatarBits 
	UpdateAvatarState
	RocketCostumeFlagAction 0
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0712
	ApplyMovement 6, _0BCE
	GoTo _074C

_06C0:
	Wait 50, VAR_SPECIAL_RESULT
	SetAvatarBits 
	UpdateAvatarState
	RocketCostumeFlagAction 0
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0712
	ApplyMovement 6, _0BCE
	GoTo _074C

_06EC:
	CopyVar VAR_UNK_4136, VAR_SPECIAL_x8002
	NPCMsg msg_0065_D23R0101_00042
	WaitButton
	CloseMsg
	ReleaseAll
	End

_06FD:
	SetVar VAR_UNK_4136, 0
	SetFlag FLAG_UNK_AA6
	NPCMsg msg_0065_D23R0101_00044
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0712:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _074C
	ApplyMovement 6, _0BEA
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0771
	ApplyMovement 6, _0C06
	ApplyMovement 5, _0C0E
	GoTo _07E0

_074C:
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0771
	ApplyMovement 6, _0C06
	ApplyMovement 5, _0C0E
	GoTo _07E0

_0771:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _07E0
	ApplyMovement 6, _0C26
	ApplyMovement 5, _0C2E
	WaitMovement
	NPCMsg msg_0065_D23R0101_00023
	CloseMsg
	TrainerBattle TRAINER_TEAM_ROCKET_GRUNT_3, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0832
	NPCMsg msg_0065_D23R0101_00024
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _083E
	ApplyMovement 6, _0C46
	ApplyMovement obj_player, _0C4E
	GoTo _088A

_07E0:
	WaitMovement
	NPCMsg msg_0065_D23R0101_00023
	CloseMsg
	TrainerBattle TRAINER_TEAM_ROCKET_GRUNT_3, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0832
	NPCMsg msg_0065_D23R0101_00024
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _083E
	ApplyMovement 6, _0C46
	ApplyMovement obj_player, _0C4E
	GoTo _088A

_0832:
	SetVar VAR_SCENE_ROCKET_TAKEOVER, 2
	WhiteOut
	ReleaseAll
	End

_083E:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _088A
	ApplyMovement 6, _0C62
	ApplyMovement obj_player, _0C6E
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	HidePerson 6
	CallStd std_play_rival_outro_music
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _08B9
	ApplyMovement 5, _0C82
	GoTo _08EB

_088A:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	HidePerson 6
	CallStd std_play_rival_outro_music
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _08B9
	ApplyMovement 5, _0C82
	GoTo _08EB

_08B9:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _08EB
	ApplyMovement 5, _0C8A
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0908
	ApplyMovement obj_player, _0C92
	GoTo _094D

_08EB:
	WaitMovement
	CompareVarToValue VAR_TEMP_x4001, 5
	GoToIf ne, _0908
	ApplyMovement obj_player, _0C92
	GoTo _094D

_0908:
	CompareVarToValue VAR_TEMP_x4001, 6
	GoToIf ne, _094D
	ApplyMovement obj_player, _0C9A
	WaitMovement
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00025
	CloseMsg
	ApplyMovement 5, _0CA2
	WaitMovement
	HidePerson 5
	CallStd std_fade_end_rival_outro_music
	ReleaseAll
	SetVar VAR_SCENE_ROCKET_TAKEOVER, 4
	SetFlag FLAG_HIDE_RADIO_TOWER_RIVAL
	SetVar VAR_UNK_409F, 1
	End

_094D:
	WaitMovement
	BufferRivalsName 1
	NPCMsg msg_0065_D23R0101_00025
	CloseMsg
	ApplyMovement 5, _0CA2
	WaitMovement
	HidePerson 5
	CallStd std_fade_end_rival_outro_music
	ReleaseAll
	SetVar VAR_SCENE_ROCKET_TAKEOVER, 4
	SetFlag FLAG_HIDE_RADIO_TOWER_RIVAL
	SetVar VAR_UNK_409F, 1
	End

	; 0x097D
	.byte 0x00

_097E:

	; 0x097E
	step 75, 1
	step 50, 2
	step 76, 3
	step 78, 1
	EndMovement

_0992:

	; 0x0992
	step 63, 6
	step 76, 1
	step 3, 1
	EndMovement

_09A2:

	; 0x09A2
	step 76, 1
	step 78, 10
	EndMovement

_09AE:

	; 0x09AE
	step 34, 1
	EndMovement

_09B6:

	; 0x09B6
	step 19, 9
	step 32, 1
	EndMovement

_09C2:

	; 0x09C2
	step 62, 9
	step 33, 1
	EndMovement

_09CE:

	; 0x09CE
	step 13, 1
	step 34, 1
	EndMovement

_09DA:

	; 0x09DA
	step 19, 9
	EndMovement

_09E2:

	; 0x09E2
	step 62, 9
	step 34, 1
	EndMovement

_09EE:

	; 0x09EE
	step 65, 1
	step 75, 1
	EndMovement

_09FA:

	; 0x09FA
	step 12, 1
	step 35, 1
	EndMovement

_0A06:

	; 0x0A06
	step 3, 1
	step 71, 1
	step 14, 1
	step 72, 1
	EndMovement

_0A1A:

	; 0x0A1A
	step 14, 1
	step 33, 1
	EndMovement

_0A26:

	; 0x0A26
	step 15, 1
	step 32, 1
	EndMovement

_0A32:

	; 0x0A32
	step 0, 1
	step 71, 1
	step 13, 1
	step 72, 1
	EndMovement

_0A46:

	; 0x0A46
	step 35, 1
	EndMovement

_0A4E:

	; 0x0A4E
	step 32, 1
	EndMovement

_0A56:

	; 0x0A56
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	EndMovement

_0B16:

	; 0x0B16
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	EndMovement

_0BCE:

	; 0x0BCE
	step 65, 1
	step 3, 1
	step 71, 1
	step 18, 2
	step 72, 1
	step 75, 1
	EndMovement

_0BEA:

	; 0x0BEA
	step 65, 1
	step 0, 1
	step 71, 1
	step 17, 2
	step 72, 1
	step 75, 1
	EndMovement

_0C06:

	; 0x0C06
	step 19, 3
	EndMovement

_0C0E:

	; 0x0C0E
	step 62, 1
	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	EndMovement

_0C26:

	; 0x0C26
	step 16, 3
	EndMovement

_0C2E:

	; 0x0C2E
	step 62, 1
	step 3, 1
	step 71, 1
	step 18, 1
	step 72, 1
	EndMovement

_0C46:

	; 0x0C46
	step 15, 2
	EndMovement

_0C4E:

	; 0x0C4E
	step 0, 1
	step 71, 1
	step 13, 1
	step 72, 1
	EndMovement

_0C62:

	; 0x0C62
	step 12, 1
	step 15, 1
	EndMovement

_0C6E:

	; 0x0C6E
	step 3, 1
	step 71, 1
	step 14, 1
	step 72, 1
	EndMovement

_0C82:

	; 0x0C82
	step 35, 1
	EndMovement

_0C8A:

	; 0x0C8A
	step 32, 1
	EndMovement

_0C92:

	; 0x0C92
	step 34, 1
	EndMovement

_0C9A:

	; 0x0C9A
	step 33, 1
	EndMovement

_0CA2:

	; 0x0CA2
	step 14, 9
	EndMovement
	.balign 4, 0
