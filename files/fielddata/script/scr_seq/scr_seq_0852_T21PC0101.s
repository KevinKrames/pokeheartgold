#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T21PC0101.h"
#include "msgdata\msg\msg_0552_T21PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T21PC0101_000
	scrdef scr_seq_T21PC0101_001
	scrdef scr_seq_T21PC0101_002
	scrdef scr_seq_T21PC0101_003
	scrdef scr_seq_T21PC0101_004
	scrdef scr_seq_T21PC0101_005
	scrdef scr_seq_T21PC0101_006
	scrdef scr_seq_T21PC0101_007
	scrdef_end

scr_seq_T21PC0101_000:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd std_nurse_joy
	End

scr_seq_T21PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0552_T21PC0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0552_T21PC0101_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_ELMS_LAB, 3
	GoToIf lt, _00C4
	NPCMsg msg_0552_T21PC0101_00003
	GoTo _00CF

scr_seq_T21PC0101_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0552_T21PC0101_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21PC0101_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0552_T21PC0101_00005
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21PC0101_006:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg 6
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _00D7
	GoTo _015D

scr_seq_T21PC0101_007:
	CallStd 2072
	End

_00C4:
	NPCMsg msg_0552_T21PC0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00CF:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00D7:
	BufferPlayersName 0
	NPCMsg 7
	WaitABPress
	CloseMsg
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	PartySelectUI
	GetPartySelection VAR_SPECIAL_RESULT
	RestoreOverworld
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	CompareVarToValue VAR_SPECIAL_RESULT, 255
	GoToIf eq, _015D
	CopyVar VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	GetPartyMonSpecies VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0168
	PartyMonIsMine VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0173
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 8
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0183
	GoTo _015D

_015D:
	NPCMsg 11
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0168:
	NPCMsg 14
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0173:
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 13
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0183:
	NPCMsg 9
	CloseMsg
	SetVar VAR_SPECIAL_RESULT, 0
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NicknameInput VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _01C9
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 10
	WaitButton
	CloseMsg
	ReleaseAll
	End

_01C9:
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 12
	WaitButton
	CloseMsg
	ReleaseAll
	End
	.balign 4, 0
