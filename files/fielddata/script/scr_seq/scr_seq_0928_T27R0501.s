#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T27R0501.h"
#include "msgdata\msg\msg_0618_T27R0501.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T27R0501_000
	scrdef scr_seq_T27R0501_001
	scrdef scr_seq_T27R0501_002
	scrdef scr_seq_T27R0501_003
	scrdef scr_seq_T27R0501_004
	scrdef scr_seq_T27R0501_005
	scrdef scr_seq_T27R0501_006
	scrdef scr_seq_T27R0501_007
	scrdef scr_seq_T27R0501_008
	scrdef scr_seq_T27R0501_009
	scrdef scr_seq_T27R0501_010
	scrdef scr_seq_T27R0501_011
	scrdef scr_seq_T27R0501_012
	scrdef scr_seq_T27R0501_013
	scrdef scr_seq_T27R0501_014
	scrdef scr_seq_T27R0501_015
	scrdef scr_seq_T27R0501_016
	scrdef_end

scr_seq_T27R0501_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_HM03
	GoToIf eq, _040E
	NPCMsg msg_0618_T27R0501_00025
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	PlayCry SPECIES_PSYDUCK, 0
	NPCMsg msg_0618_T27R0501_00030
	WaitCry
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0419
	CompareVarToValue VAR_UNK_410C, 1
	GoToIf eq, _0424
	NPCMsg msg_0618_T27R0501_00031
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	StopBGM SEQ_NONE
	PlayBGM SEQ_GS_EYE_ROCKET
	NPCMsg msg_0618_T27R0501_00005
	CloseMsg
	SetVar VAR_TEMP_x4009, 222
	TrainerBattle TRAINER_TEAM_ROCKET_GRUNT_26, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _043A
	NPCMsg msg_0618_T27R0501_00006
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_x8004
	CompareVarToValue VAR_SPECIAL_x8004, 0
	GoToIf ne, _0440
	ApplyMovement 12, _0E8A
	GoTo _045B

scr_seq_T27R0501_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_UNK_410C, 1
	GoToIf eq, _047D
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0488
	NPCMsg msg_0618_T27R0501_00010
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_108
	GoToIf eq, _0496
	CheckFlag FLAG_UNK_109
	GoToIf eq, _0496
	NPCMsg msg_0618_T27R0501_00019
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_006:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_108
	GoToIf eq, _04A1
	CheckFlag FLAG_UNK_109
	GoToIf eq, _04A1
	NPCMsg msg_0618_T27R0501_00019
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_007:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	SetVar VAR_SPECIAL_x8000, 77
	CheckFlag FLAG_UNK_108
	GoToIf eq, _04AC
	CheckFlag FLAG_UNK_109
	GoToIf eq, _04AC
	NPCMsg msg_0618_T27R0501_00013
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_x8004
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_x8004, 1
	GoToIf eq, _04BE
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	CallIf ne, _04CD
	GoTo _04F2

scr_seq_T27R0501_008:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_108
	GoToIf eq, _0652
	CheckFlag FLAG_UNK_109
	GoToIf eq, _0652
	NPCMsg msg_0618_T27R0501_00019
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_009:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_108
	GoToIf eq, _065D
	CheckFlag FLAG_UNK_109
	GoToIf eq, _065D
	NPCMsg msg_0618_T27R0501_00019
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_010:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0618_T27R0501_00039
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_011:
	FollowMonResetMovement
	LockAll
	ApplyMovement 2, _0E9A
	WaitMovement
	SetVar VAR_SPECIAL_x8004, 422
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0668
	CallStd std_give_item_verbose
	CloseMsg
	SetFlag FLAG_GOT_HM03
	SetVar VAR_UNK_410C, 3
	SetVar VAR_UNK_4090, 1
	ApplyMovement 2, _0EAA
	WaitMovement
	ReleaseAll
	End

scr_seq_T27R0501_012:
	FollowMonResetMovement
	LockAll
	ApplyMovement 2, _0EBE
	WaitMovement
	SetVar VAR_SPECIAL_x8004, 422
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0668
	CallStd std_give_item_verbose
	CloseMsg
	SetFlag FLAG_GOT_HM03
	SetVar VAR_UNK_4090, 1
	SetVar VAR_UNK_410C, 3
	ApplyMovement 2, _0ECE
	WaitMovement
	ReleaseAll
	End

scr_seq_T27R0501_013:
	CompareVarToValue VAR_UNK_410C, 1
	GoToIf gt, _0672
	MakeObjectVisible 12
	CompareVarToValue VAR_UNK_410C, 0
	GoToIf ne, _06D7
	MovePersonFacing 9, 6, 0, 6, DIR_EAST
	MovePersonFacing 6, 8, 0, 6, DIR_WEST
	CompareVarToValue VAR_TEMP_x4009, 222
	GoToIf ne, _0717
	MovePersonFacing 9, 29, 0, 29, DIR_SOUTH
	MakeObjectVisible 9
	GetPlayerFacing VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf ne, _073F
	MovePersonFacing 12, 7, 0, 6, DIR_SOUTH
	GoTo _075E

scr_seq_T27R0501_014:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0790
	CompareVarToValue VAR_UNK_410C, 1
	GoToIf eq, _079B
	NPCMsg msg_0618_T27R0501_00036
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27R0501_015:
	FollowMonResetMovement
	LockAll
	ApplyMovement 9, _0EE2
	WaitMovement
	GetPlayerCoords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	CreateCameraTarget VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	ApplyMovement 241, _0EEA
	WaitMovement
	Wait 10, VAR_SPECIAL_RESULT
	ApplyMovement 241, _0EF2
	WaitMovement
	RemoveCameraTarget
	ReleaseAll
	SetVar VAR_UNK_410C, 1
	End

scr_seq_T27R0501_016:
	FollowMonResetMovement
	LockAll
	SetVar VAR_SPECIAL_x8000, 11
	SetVar VAR_UNK_410C, 5
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement obj_player, _0EFE
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _07A6
	NPCMsg msg_0618_T27R0501_00011
	GoTo _0920

_040E:
	NPCMsg msg_0618_T27R0501_00029
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0419:
	NPCMsg msg_0618_T27R0501_00033
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0424:
	CompareVarToValue VAR_TEMP_x400B, 0
	GoToIf ne, _0A97
	NPCMsg msg_0618_T27R0501_00032
	GoTo _0AAD

_043A:
	WhiteOut
	ReleaseAll
	End

_0440:
	CompareVarToValue VAR_SPECIAL_x8004, 1
	GoToIf ne, _0ACC
	ApplyMovement 12, _0F16
	GoTo _045B

_045B:
	WaitMovement
	NPCMsg msg_0618_T27R0501_00007
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8004, 0
	GoToIf ne, _0AE7
	ApplyMovement 12, _0F26
	GoTo _0B02

_047D:
	NPCMsg msg_0618_T27R0501_00008
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0488:
	BufferPlayersName 0
	NPCMsg msg_0618_T27R0501_00009
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0496:
	NPCMsg msg_0618_T27R0501_00040
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04A1:
	NPCMsg msg_0618_T27R0501_00041
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04AC:
	BufferPlayersName 0
	NPCMsg msg_0618_T27R0501_00042
	WaitButton
	CloseMsg
	SetFlag FLAG_UNK_107
	ReleaseAll
	End

_04BE:
	NPCMsg msg_0618_T27R0501_00014
	WaitButton
	CloseMsg
	Call _0B1C
	End

_04CD:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0B31
	ApplyMovement obj_player, _0F32
	GoTo _0B4C

_04F2:
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 10, _0F46
	WaitMovement
	NPCMsg msg_0618_T27R0501_00045
	CloseMsg
	Wait 10, VAR_SPECIAL_RESULT
	TrainerBattle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 10, _0F86
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 4, _0F92
	WaitMovement
	NPCMsg msg_0618_T27R0501_00015
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 4, _0FC2
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 8, _0FCE
	WaitMovement
	NPCMsg msg_0618_T27R0501_00016
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 8, _0FFE
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 5, _100A
	WaitMovement
	NPCMsg msg_0618_T27R0501_00017
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 5, _1036
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 7, _1046
	WaitMovement
	NPCMsg msg_0618_T27R0501_00018
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 7, _1072
	WaitMovement
	ApplyMovement 10, _1082
	WaitMovement
	NPCMsg msg_0618_T27R0501_00020
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0B6C
	SetVar VAR_SPECIAL_x8004, 474
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_103
	GoTo _0BCA

_0652:
	NPCMsg msg_0618_T27R0501_00043
	WaitButton
	CloseMsg
	ReleaseAll
	End

_065D:
	NPCMsg msg_0618_T27R0501_00044
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0668:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_0672:
	CompareVarToValue VAR_UNK_410C, 0
	GoToIf ne, _06D7
	MovePersonFacing 9, 6, 0, 6, DIR_EAST
	MovePersonFacing 6, 8, 0, 6, DIR_WEST
	CompareVarToValue VAR_TEMP_x4009, 222
	GoToIf ne, _0717
	MovePersonFacing 9, 29, 0, 29, DIR_SOUTH
	MakeObjectVisible 9
	GetPlayerFacing VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf ne, _073F
	MovePersonFacing 12, 7, 0, 6, DIR_SOUTH
	GoTo _075E

_06D7:
	CompareVarToValue VAR_TEMP_x4009, 222
	GoToIf ne, _0717
	MovePersonFacing 9, 29, 0, 29, DIR_SOUTH
	MakeObjectVisible 9
	GetPlayerFacing VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf ne, _073F
	MovePersonFacing 12, 7, 0, 6, DIR_SOUTH
	GoTo _075E

_0717:
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0C14
	CompareVarToValue VAR_UNK_410C, 3
	GoToIf ne, _0C14
	MovePersonFacing 6, 7, 0, 6, DIR_SOUTH
	End

_073F:
	CompareVarToValue VAR_TEMP_x4000, 1
	GoToIf ne, _0C16
	MovePersonFacing 12, 7, 0, 6, DIR_NORTH
	GoTo _075E

_075E:
	MakeObjectInvisible 12
	SetVar VAR_TEMP_x4009, 0
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0C14
	CompareVarToValue VAR_UNK_410C, 3
	GoToIf ne, _0C14
	MovePersonFacing 6, 7, 0, 6, DIR_SOUTH
	End

_0790:
	NPCMsg msg_0618_T27R0501_00038
	WaitButton
	CloseMsg
	ReleaseAll
	End

_079B:
	NPCMsg msg_0618_T27R0501_00037
	WaitButton
	CloseMsg
	ReleaseAll
	End

_07A6:
	NPCMsg msg_0618_T27R0501_00012
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_x8004
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_x8004, 1
	GoToIf eq, _04BE
	CloseMsg
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 10, _0F46
	WaitMovement
	NPCMsg msg_0618_T27R0501_00045
	CloseMsg
	Wait 10, VAR_SPECIAL_RESULT
	TrainerBattle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 10, _0F86
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 4, _0F92
	WaitMovement
	NPCMsg msg_0618_T27R0501_00015
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 4, _0FC2
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 8, _0FCE
	WaitMovement
	NPCMsg msg_0618_T27R0501_00016
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 8, _0FFE
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 5, _100A
	WaitMovement
	NPCMsg msg_0618_T27R0501_00017
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 5, _1036
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 7, _1046
	WaitMovement
	NPCMsg msg_0618_T27R0501_00018
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 7, _1072
	WaitMovement
	ApplyMovement 10, _1082
	WaitMovement
	NPCMsg msg_0618_T27R0501_00020
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0B6C
	SetVar VAR_SPECIAL_x8004, 474
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_103
	GoTo _0BCA

_0920:
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_x8004
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_x8004, 1
	GoToIf eq, _04BE
	CloseMsg
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 10, _0F46
	WaitMovement
	NPCMsg msg_0618_T27R0501_00045
	CloseMsg
	Wait 10, VAR_SPECIAL_RESULT
	TrainerBattle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 10, _0F86
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 4, _0F92
	WaitMovement
	NPCMsg msg_0618_T27R0501_00015
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 4, _0FC2
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 8, _0FCE
	WaitMovement
	NPCMsg msg_0618_T27R0501_00016
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 8, _0FFE
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 5, _100A
	WaitMovement
	NPCMsg msg_0618_T27R0501_00017
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 5, _1036
	WaitMovement
	StopBGM 30
	PlayBGM SEQ_GS_EYE_MAIKO
	ApplyMovement 7, _1046
	WaitMovement
	NPCMsg msg_0618_T27R0501_00018
	CloseMsg
	TrainerBattle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B62
	ApplyMovement 7, _1072
	WaitMovement
	ApplyMovement 10, _1082
	WaitMovement
	NPCMsg msg_0618_T27R0501_00020
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0B6C
	SetVar VAR_SPECIAL_x8004, 474
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_103
	GoTo _0BCA

_0A97:
	CompareVarToValue VAR_TEMP_x400B, 1
	GoToIf ne, _0C35
	NPCMsg msg_0618_T27R0501_00034
	GoTo _0AAD

_0AAD:
	WaitButton
	CloseMsg
	ReleaseAll
	CompareVarToValue VAR_TEMP_x400B, 2
	GoToIf ge, _0C57
	AddVar VAR_TEMP_x400B, 1
	GoTo _0C5F

_0ACC:
	CompareVarToValue VAR_SPECIAL_x8004, 2
	GoToIf ne, _0C61
	ApplyMovement 12, _108A
	GoTo _045B

_0AE7:
	CompareVarToValue VAR_SPECIAL_x8004, 1
	GoToIf ne, _0C8B
	ApplyMovement 12, _109A
	GoTo _0B02

_0B02:
	WaitMovement
	HidePerson 12
	SetFlag FLAG_UNK_23A
	ReleaseAll
	SetVar VAR_UNK_410C, 2
	SetVar VAR_TEMP_x400A, 10
	End

_0B1C:
	CompareVarToValue VAR_SPECIAL_x8000, 77
	GoToIf ne, _0CA6
	ReleaseAll
	GoTo _0CAA

_0B31:
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _0CAC
	ApplyMovement obj_player, _10A6
	GoTo _0B4C

_0B4C:
	ApplyMovement 10, _10B6
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Return

_0B62:
	WhiteOut
	Call _0B1C
	End

_0B6C:
	SetVar VAR_SPECIAL_x8004, 503
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_104
	CloseMsg
	PlaySE SEQ_SE_DP_KI_GASYAN
	ScreenShake 0, 2, 10, 6
	WaitSE SEQ_SE_DP_KI_GASYAN
	ClearFlag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	ShowPerson 11
	ApplyMovement 11, _10C2
	WaitMovement
	ApplyMovement 10, _10CE
	WaitMovement
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0CD7
	NPCMsg msg_0618_T27R0501_00021
	GoTo _0CFF

_0BCA:
	CloseMsg
	PlaySE SEQ_SE_DP_KI_GASYAN
	ScreenShake 0, 2, 10, 6
	WaitSE SEQ_SE_DP_KI_GASYAN
	ClearFlag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	ShowPerson 11
	ApplyMovement 11, _10C2
	WaitMovement
	ApplyMovement 10, _10CE
	WaitMovement
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0CD7
	NPCMsg msg_0618_T27R0501_00021
	GoTo _0CFF

_0C14:
	End

_0C16:
	CompareVarToValue VAR_TEMP_x4000, 2
	GoToIf ne, _0D24
	MovePersonFacing 12, 7, 0, 6, DIR_EAST
	GoTo _075E

_0C35:
	NPCMsg msg_0618_T27R0501_00035
	WaitButton
	CloseMsg
	ReleaseAll
	CompareVarToValue VAR_TEMP_x400B, 2
	GoToIf ge, _0C57
	AddVar VAR_TEMP_x400B, 1
	GoTo _0C5F

_0C57:
	SetVar VAR_TEMP_x400B, 0
	End

_0C5F:
	End

_0C61:
	ApplyMovement 12, _10D6
	WaitMovement
	NPCMsg msg_0618_T27R0501_00007
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8004, 0
	GoToIf ne, _0AE7
	ApplyMovement 12, _0F26
	GoTo _0B02

_0C8B:
	CompareVarToValue VAR_SPECIAL_x8004, 2
	GoToIf ne, _0D62
	ApplyMovement 12, _10E6
	GoTo _0B02

_0CA6:
	ReleaseAll
	Return

_0CAA:
	Return

_0CAC:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0B4C
	ApplyMovement obj_player, _10F2
	ApplyMovement 10, _10B6
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Return

_0CD7:
	NPCMsg msg_0618_T27R0501_00022
	CloseMsg
	ApplyMovement 10, _1102
	WaitMovement
	BufferPlayersName 0
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0D84
	NPCMsg msg_0618_T27R0501_00023
	GoTo _0E04

_0CFF:
	CloseMsg
	ApplyMovement 10, _1102
	WaitMovement
	BufferPlayersName 0
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0D84
	NPCMsg msg_0618_T27R0501_00023
	GoTo _0E04

_0D24:
	MovePersonFacing 12, 7, 0, 6, DIR_WEST
	MakeObjectInvisible 12
	SetVar VAR_TEMP_x4009, 0
	CompareVarToValue VAR_TEMP_x400A, 10
	GoToIf eq, _0C14
	CompareVarToValue VAR_UNK_410C, 3
	GoToIf ne, _0C14
	MovePersonFacing 6, 7, 0, 6, DIR_SOUTH
	End

_0D62:
	ApplyMovement 12, _110A
	WaitMovement
	HidePerson 12
	SetFlag FLAG_UNK_23A
	ReleaseAll
	SetVar VAR_UNK_410C, 2
	SetVar VAR_TEMP_x400A, 10
	End

_0D84:
	NPCMsg msg_0618_T27R0501_00024
	CloseMsg
	ApplyMovement 4, _111A
	ApplyMovement 5, _1126
	ApplyMovement 10, _1136
	ApplyMovement 7, _1146
	ApplyMovement 8, _1156
	ApplyMovement 11, _1162
	WaitMovement
	HidePerson 4
	HidePerson 5
	HidePerson 10
	HidePerson 7
	HidePerson 8
	HidePerson 11
	SetFlag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	SetFlag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	Call _0B1C
	SetVar VAR_UNK_410C, 6
	SetVar VAR_UNK_40FA, 1
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0E81
	ClearFlag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	GoTo _0E87

_0E04:
	CloseMsg
	ApplyMovement 4, _111A
	ApplyMovement 5, _1126
	ApplyMovement 10, _1136
	ApplyMovement 7, _1146
	ApplyMovement 8, _1156
	ApplyMovement 11, _1162
	WaitMovement
	HidePerson 4
	HidePerson 5
	HidePerson 10
	HidePerson 7
	HidePerson 8
	HidePerson 11
	SetFlag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	SetFlag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	Call _0B1C
	SetVar VAR_UNK_410C, 6
	SetVar VAR_UNK_40FA, 1
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0E81
	ClearFlag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	GoTo _0E87

_0E81:
	ClearFlag FLAG_HIDE_WHIRL_ISLANDS_BOTTOM_KIMONO_GIRLS
	End

_0E87:
	End

	; 0x0E89
	.byte 0x00

_0E8A:

	; 0x0E8A
	step 71, 1
	step 12, 1
	step 72, 1
	EndMovement

_0E9A:

	; 0x0E9A
	step 12, 1
	step 14, 5
	step 12, 2
	EndMovement

_0EAA:

	; 0x0EAA
	step 13, 2
	step 15, 5
	step 13, 1
	step 0, 1
	EndMovement

_0EBE:

	; 0x0EBE
	step 12, 1
	step 15, 3
	step 12, 2
	EndMovement

_0ECE:

	; 0x0ECE
	step 13, 2
	step 14, 3
	step 13, 1
	step 0, 1
	EndMovement

_0EE2:

	; 0x0EE2
	step 3, 1
	EndMovement

_0EEA:

	; 0x0EEA
	step 76, 9
	EndMovement

_0EF2:

	; 0x0EF2
	step 66, 1
	step 77, 9
	EndMovement

_0EFE:

	; 0x0EFE
	step 12, 5
	step 14, 4
	step 12, 5
	step 15, 4
	step 32, 1
	EndMovement

_0F16:

	; 0x0F16
	step 71, 1
	step 13, 1
	step 72, 1
	EndMovement

_0F26:

	; 0x0F26
	step 18, 4
	step 17, 12
	EndMovement

_0F32:

	; 0x0F32
	step 15, 1
	step 13, 2
	step 14, 1
	step 32, 1
	EndMovement

_0F46:

	; 0x0F46
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 33, 1
	EndMovement

_0F86:

	; 0x0F86
	step 12, 1
	step 33, 1
	EndMovement

_0F92:

	; 0x0F92
	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 35, 1
	step 15, 5
	step 33, 1
	EndMovement

_0FC2:

	; 0x0FC2
	step 14, 5
	step 33, 1
	EndMovement

_0FCE:

	; 0x0FCE
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 34, 1
	step 14, 5
	step 33, 1
	EndMovement

_0FFE:

	; 0x0FFE
	step 15, 5
	step 33, 1
	EndMovement

_100A:

	; 0x100A
	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 15, 3
	step 33, 1
	EndMovement

_1036:

	; 0x1036
	step 14, 3
	step 12, 1
	step 33, 1
	EndMovement

_1046:

	; 0x1046
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 14, 3
	step 33, 1
	EndMovement

_1072:

	; 0x1072
	step 15, 3
	step 12, 1
	step 33, 1
	EndMovement

_1082:

	; 0x1082
	step 13, 1
	EndMovement

_108A:

	; 0x108A
	step 71, 1
	step 14, 1
	step 72, 1
	EndMovement

_109A:

	; 0x109A
	step 18, 4
	step 17, 10
	EndMovement

_10A6:

	; 0x10A6
	step 13, 1
	step 14, 1
	step 32, 1
	EndMovement

_10B6:

	; 0x10B6
	step 63, 2
	step 33, 1
	EndMovement

_10C2:

	; 0x10C2
	step 16, 10
	step 19, 3
	EndMovement

_10CE:

	; 0x10CE
	step 34, 1
	EndMovement

_10D6:

	; 0x10D6
	step 71, 1
	step 15, 1
	step 72, 1
	EndMovement

_10E6:

	; 0x10E6
	step 18, 3
	step 17, 10
	EndMovement

_10F2:

	; 0x10F2
	step 13, 1
	step 15, 1
	step 32, 1
	EndMovement

_1102:

	; 0x1102
	step 75, 1
	EndMovement

_110A:

	; 0x110A
	step 17, 1
	step 19, 3
	step 17, 9
	EndMovement

_111A:

	; 0x111A
	step 15, 1
	step 13, 11
	EndMovement

_1126:

	; 0x1126
	step 63, 1
	step 14, 1
	step 13, 12
	EndMovement

_1136:

	; 0x1136
	step 63, 1
	step 15, 4
	step 13, 11
	EndMovement

_1146:

	; 0x1146
	step 63, 1
	step 15, 1
	step 13, 12
	EndMovement

_1156:

	; 0x1156
	step 14, 1
	step 13, 11
	EndMovement

_1162:

	; 0x1162
	step 63, 2
	step 15, 5
	step 13, 11
	EndMovement
	.balign 4, 0
