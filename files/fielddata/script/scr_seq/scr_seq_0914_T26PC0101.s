#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T26PC0101.h"
#include "msgdata\msg\msg_0607_T26PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T26PC0101_000
	scrdef scr_seq_T26PC0101_001
	scrdef scr_seq_T26PC0101_002
	scrdef scr_seq_T26PC0101_003
	scrdef scr_seq_T26PC0101_004
	scrdef scr_seq_T26PC0101_005
	scrdef_end

scr_seq_T26PC0101_000:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd std_nurse_joy
	End

scr_seq_T26PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0607_T26PC0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T26PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0607_T26PC0101_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T26PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0607_T26PC0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T26PC0101_004:
	CheckTrainerFlag TRAINER_BEAUTY_CHARLOTTE
	GoToIf eq, _00B1
	CompareVarToValue VAR_TEMP_x4007, 77
	GoToIf eq, _00C4
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0607_T26PC0101_00003
	SetVar VAR_TEMP_x4007, 77
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _00D5
	ApplyMovement 7, _01CC
	GoTo _0131

scr_seq_T26PC0101_005:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End

_00B1:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0607_T26PC0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00C4:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0607_T26PC0101_00008
	GoTo _0178

_00D5:
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0131
	ApplyMovement 7, _01D4
	WaitMovement
	NPCMsg msg_0607_T26PC0101_00004
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01BA
	NPCMsg msg_0607_T26PC0101_00005
	CloseMsg
	TrainerBattle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _01C5
	SetTrainerFlag TRAINER_BEAUTY_CHARLOTTE
	NPCMsg msg_0607_T26PC0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0131:
	WaitMovement
	NPCMsg msg_0607_T26PC0101_00004
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01BA
	NPCMsg msg_0607_T26PC0101_00005
	CloseMsg
	TrainerBattle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _01C5
	SetTrainerFlag TRAINER_BEAUTY_CHARLOTTE
	NPCMsg msg_0607_T26PC0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0178:
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01BA
	NPCMsg msg_0607_T26PC0101_00005
	CloseMsg
	TrainerBattle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _01C5
	SetTrainerFlag TRAINER_BEAUTY_CHARLOTTE
	NPCMsg msg_0607_T26PC0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

_01BA:
	NPCMsg msg_0607_T26PC0101_00007
	WaitButton
	CloseMsg
	ReleaseAll
	End

_01C5:
	WhiteOut
	ReleaseAll
	End

	; 0x01CB
	.byte 0x00

_01CC:

	; 0x01CC
	step 35, 1
	EndMovement

_01D4:

	; 0x01D4
	step 33, 1
	EndMovement
	.balign 4, 0
