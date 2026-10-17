#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T25GYM0101.h"
#include "msgdata\msg\msg_0582_T25GYM0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T25GYM0101_000
	scrdef scr_seq_T25GYM0101_001
	scrdef scr_seq_T25GYM0101_002
	scrdef scr_seq_T25GYM0101_003
	scrdef scr_seq_T25GYM0101_004
	scrdef_end

scr_seq_T25GYM0101_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckBadge BADGE_PLAIN, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0197
	CheckFlag FLAG_UNK_0B7
	GoToIf eq, _01AD
	CompareVarToValue VAR_UNK_410A, 1
	GoToIf eq, _0205
	NPCMsg msg_0582_T25GYM0101_00000
	CloseMsg
	TrainerBattle TRAINER_LEADER_WHITNEY, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0228
	SetTrainerFlag TRAINER_LASS_CARRIE
	SetTrainerFlag TRAINER_LASS_CATHY
	SetTrainerFlag TRAINER_BEAUTY_VICTORIA
	SetTrainerFlag TRAINER_BEAUTY_SAMANTHA
	AddSpecialGameStat 22
	MovePersonFacing 1, 13, 0, 15, DIR_NORTH
	NPCMsg msg_0582_T25GYM0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	SetVar VAR_UNK_410A, 1
	SetFlag FLAG_UNK_084
	SetVar VAR_UNK_40DA, 1
	ClearFlag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_UNLOCKED
	SetFlag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_LOCKED
	End

scr_seq_T25GYM0101_001:
	FollowMonResetMovement
	LockAll
	ApplyMovement 1, _0334
	WaitMovement
	NPCMsg msg_0582_T25GYM0101_00009
	NPCMsg 14
	SetVar VAR_SPECIAL_x8004, 477
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 1, _0340
	ApplyMovement obj_player, _034C
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	SetFlag FLAG_UNK_0B7
	ReleaseAll
	End

scr_seq_T25GYM0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckBadge BADGE_PLAIN, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _022E
	NPCMsg msg_0582_T25GYM0101_00010
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T25GYM0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckBadge BADGE_PLAIN, VAR_SPECIAL_RESULT
	BufferPlayersName 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0239
	NPCMsg msg_0582_T25GYM0101_00012
	GoTo _0244

scr_seq_T25GYM0101_004:
	GetPhoneBookRematch PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 0
	GoToIf ne, _024C
	CheckFlag FLAG_GAME_CLEAR
	GoToIf lt, _0252
	CheckRegisteredPhoneNumber PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 1
	GoToIf eq, _0258
	GetCurrentHour VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 12
	GoToIf ne, _0273
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _028A

_0197:
	CheckFlag FLAG_GOT_TM45_FROM_WHITNEY
	GoToIf lt, _028C
	NPCMsg msg_0582_T25GYM0101_00008
	WaitButton
	CloseMsg
	ReleaseAll
	End

_01AD:
	NPCMsg msg_0582_T25GYM0101_00003
	BufferPlayersName 0
	NPCMsg msg_0582_T25GYM0101_00004
	PlayFanfare SEQ_ME_BADGE
	WaitFanfare
	GiveBadge BADGE_PLAIN
	SetVar VAR_UNK_410A, 2
	ClearFlag FLAG_UNK_084
	SetFlag FLAG_UNK_998
	NPCMsg msg_0582_T25GYM0101_00005
	SetVar VAR_SPECIAL_x8004, 372
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _02C0
	CallStd std_give_item_verbose
	NPCMsg msg_0582_T25GYM0101_00007
	WaitButton
	CloseMsg
	SetFlag FLAG_GOT_TM45_FROM_WHITNEY
	ReleaseAll
	End

_0205:
	NPCMsg msg_0582_T25GYM0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	SetVar VAR_UNK_410A, 1
	SetFlag FLAG_UNK_084
	SetVar VAR_UNK_40DA, 1
	ClearFlag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_UNLOCKED
	SetFlag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_LOCKED
	End

_0228:
	WhiteOut
	ReleaseAll
	End

_022E:
	NPCMsg msg_0582_T25GYM0101_00011
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0239:
	NPCMsg msg_0582_T25GYM0101_00013
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0244:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_024C:
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	End

_0252:
	ClearFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	End

_0258:
	GetCurrentHour VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 18
	GoToIf ne, _02CA
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _02E1

_0273:
	CompareVarToValue VAR_TEMP_x4000, 13
	GoToIf ne, _02E3
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _028A

_028A:
	End

_028C:
	SetVar VAR_SPECIAL_x8004, 372
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _02C0
	CallStd std_give_item_verbose
	NPCMsg msg_0582_T25GYM0101_00007
	WaitButton
	CloseMsg
	SetFlag FLAG_GOT_TM45_FROM_WHITNEY
	ReleaseAll
	End

_02C0:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_02CA:
	CompareVarToValue VAR_TEMP_x4000, 19
	GoToIf ne, _02FA
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _02E1

_02E1:
	End

_02E3:
	CompareVarToValue VAR_TEMP_x4000, 14
	GoToIf ne, _0311
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _028A

_02FA:
	CompareVarToValue VAR_TEMP_x4000, 20
	GoToIf ne, _0328
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _02E1

_0311:
	CompareVarToValue VAR_TEMP_x4000, 15
	GoToIf ne, _032E
	SetFlag FLAG_HIDE_GOLDENROD_GYM_WHITNEY
	GoTo _028A

_0328:
	GoTo _0252

_032E:
	GoTo _0252


_0334:

	; 0x0334
	step 75, 1
	step 12, 3
	EndMovement

_0340:

	; 0x0340
	step 13, 3
	step 32, 1
	EndMovement

_034C:

	; 0x034C
	step 63, 1
	step 12, 1
	EndMovement
	.balign 4, 0
