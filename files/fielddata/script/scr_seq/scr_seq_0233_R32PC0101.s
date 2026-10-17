#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_R32PC0101.h"
#include "msgdata\msg\msg_0381_R32PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R32PC0101_000
	scrdef scr_seq_R32PC0101_001
	scrdef scr_seq_R32PC0101_002
	scrdef scr_seq_R32PC0101_003
	scrdef scr_seq_R32PC0101_004
	scrdef_end

scr_seq_R32PC0101_000:
	SetVar VAR_SPECIAL_x8007, 3
	CallStd std_nurse_joy
	End

scr_seq_R32PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_OLD_ROD
	GoToIf eq, _00AF
	NPCMsg msg_0381_R32PC0101_00000
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _00BA
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _00EE
	End

scr_seq_R32PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	GoToIf eq, _00F9
	NPCMsg msg_0381_R32PC0101_00007
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0104
	NPCMsg msg_0381_R32PC0101_00008
	GoTo _013B

scr_seq_R32PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0381_R32PC0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_R32PC0101_004:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End

_00AF:
	NPCMsg msg_0381_R32PC0101_00005
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00BA:
	SetVar VAR_SPECIAL_x8004, 445
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _016F
	CallStd std_give_item_verbose
	SetFlag FLAG_GOT_OLD_ROD
	NPCMsg msg_0381_R32PC0101_00003
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00EE:
	NPCMsg msg_0381_R32PC0101_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00F9:
	NPCMsg msg_0381_R32PC0101_00011
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0104:
	NPCMsg msg_0381_R32PC0101_00009
	SetVar VAR_SPECIAL_x8004, 494
	SetVar VAR_SPECIAL_x8005, 2
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0179
	CallStd std_give_item_verbose
	NPCMsg msg_0381_R32PC0101_00010
	WaitButton
	CloseMsg
	ReleaseAll
	SetFlag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	End

_013B:
	SetVar VAR_SPECIAL_x8004, 494
	SetVar VAR_SPECIAL_x8005, 2
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0179
	CallStd std_give_item_verbose
	NPCMsg msg_0381_R32PC0101_00010
	WaitButton
	CloseMsg
	ReleaseAll
	SetFlag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	End

_016F:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_0179:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End
	.balign 4, 0
