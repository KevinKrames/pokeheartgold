#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T22FS0101.h"
#include "msgdata\msg\msg_0557_T22FS0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T22FS0101_000
	scrdef scr_seq_T22FS0101_001
	scrdef scr_seq_T22FS0101_002
	scrdef scr_seq_T22FS0101_003
	scrdef scr_seq_T22FS0101_004
	scrdef_end

scr_seq_T22FS0101_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CallStd std_mart_intro
	HoldMsg
	SetVar VAR_SPECIAL_x8004, 1
	CallStd std_pokemart
	ReleaseAll
	End

scr_seq_T22FS0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CallStd std_mart_intro
	HoldMsg
	SetVar VAR_SPECIAL_x8004, 1
	CallStd std_special_mart
	ReleaseAll
	End

scr_seq_T22FS0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_UNK_06F
	GoToIf eq, _00E2
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _010D
	GetPartyCount VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _011C
	GiveTogepiEgg
	SetFlag FLAG_GOT_EGG_FROM_ELMS_ASSISTANT
	BufferPlayersName 0
	NPCMsg msg_0557_T22FS0101_00004
	PlayFanfare SEQ_ME_TAMAGO_GET
	WaitFanfare
	GenderMsgBox msg_0557_T22FS0101_00005, msg_0557_T22FS0101_00006
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _012B
	ApplyMovement 4, _01D0
	GoTo _015D

scr_seq_T22FS0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0557_T22FS0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22FS0101_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0557_T22FS0101_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00E2:
	BufferPlayersName 0
	GenderMsgBox msg_0557_T22FS0101_00009, msg_0557_T22FS0101_00010
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0187
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _010D
	End

_010D:
	NPCMsg msg_0557_T22FS0101_00008
	WaitButton
	CloseMsg
	ReleaseAll
	SetFlag FLAG_UNK_06F
	End

_011C:
	NPCMsg msg_0557_T22FS0101_00007
	WaitButton
	CloseMsg
	ReleaseAll
	SetFlag FLAG_UNK_06F
	End

_012B:
	ApplyMovement 4, _01E0
	WaitMovement
	PlaySE SEQ_SE_DP_KAIDAN2
	HidePerson 4
	WaitSE SEQ_SE_DP_KAIDAN2
	SetFlag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	ReleaseAll
	SetVar VAR_SCENE_VIOLET_CITY_OW, 3
	ClearFlag FLAG_HIDE_VIOLET_KIMONO_GIRL
	ClearFlag FLAG_HIDE_ELMS_LAB_AIDE
	SetVar VAR_SCENE_ELMS_LAB, 7
	End

_015D:
	WaitMovement
	PlaySE SEQ_SE_DP_KAIDAN2
	HidePerson 4
	WaitSE SEQ_SE_DP_KAIDAN2
	SetFlag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	ReleaseAll
	SetVar VAR_SCENE_VIOLET_CITY_OW, 3
	ClearFlag FLAG_HIDE_VIOLET_KIMONO_GIRL
	ClearFlag FLAG_HIDE_ELMS_LAB_AIDE
	SetVar VAR_SCENE_ELMS_LAB, 7
	End

_0187:
	GetPartyCount VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _011C
	GiveTogepiEgg
	SetFlag FLAG_GOT_EGG_FROM_ELMS_ASSISTANT
	BufferPlayersName 0
	NPCMsg msg_0557_T22FS0101_00004
	PlayFanfare SEQ_ME_TAMAGO_GET
	WaitFanfare
	GenderMsgBox msg_0557_T22FS0101_00005, msg_0557_T22FS0101_00006
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _012B
	ApplyMovement 4, _01D0
	GoTo _015D

	; 0x01CF
	.byte 0x00

_01D0:

	; 0x01D0
	step 13, 2
	step 14, 2
	step 13, 1
	EndMovement

_01E0:

	; 0x01E0
	step 14, 2
	step 13, 3
	EndMovement
	.balign 4, 0
