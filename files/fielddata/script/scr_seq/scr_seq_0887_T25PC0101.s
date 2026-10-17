#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T25PC0101.h"
#include "msgdata\msg\msg_0583_T25PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T25PC0101_000
	scrdef scr_seq_T25PC0101_001
	scrdef scr_seq_T25PC0101_002
	scrdef scr_seq_T25PC0101_003
	scrdef scr_seq_T25PC0101_004
	scrdef_end

scr_seq_T25PC0101_000:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd std_nurse_joy
	End

scr_seq_T25PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf ne, _0088
	NPCMsg msg_0583_T25PC0101_00001
	GoTo _0093

scr_seq_T25PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf ne, _009B
	NPCMsg msg_0583_T25PC0101_00005
	GoTo _00A6

scr_seq_T25PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ROCKET_TAKEOVER, 3
	GoToIf ne, _00AE
	NPCMsg msg_0583_T25PC0101_00003
	GoTo _00B9

scr_seq_T25PC0101_004:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End

_0088:
	NPCMsg msg_0583_T25PC0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0093:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_009B:
	NPCMsg msg_0583_T25PC0101_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00A6:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00AE:
	NPCMsg msg_0583_T25PC0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00B9:
	WaitButton
	CloseMsg
	ReleaseAll
	End
	.balign 4, 0
