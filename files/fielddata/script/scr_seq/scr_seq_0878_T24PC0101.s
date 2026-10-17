#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T24PC0101.h"
#include "msgdata\msg\msg_0575_T24PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T24PC0101_000
	scrdef scr_seq_T24PC0101_001
	scrdef scr_seq_T24PC0101_002
	scrdef scr_seq_T24PC0101_003
	scrdef scr_seq_T24PC0101_004
	scrdef_end

scr_seq_T24PC0101_000:
	SetVar VAR_SPECIAL_x8007, 3
	CallStd std_nurse_joy
	End

scr_seq_T24PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0575_T24PC0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T24PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CountPCEmptySpace VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 540
	GoToIf ne, _0086
	GoTo _008C

scr_seq_T24PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckBadge BADGE_STORM, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _00A3
	NPCMsg msg_0575_T24PC0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T24PC0101_004:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End

_0086:
	GoTo _00B1

_008C:
	GetPartyCount VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _00BC
	GoTo _00C2

_00A3:
	BufferPlayersName 0
	NPCMsg msg_0575_T24PC0101_00003
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00B1:
	NPCMsg msg_0575_T24PC0101_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00BC:
	GoTo _00B1

_00C2:
	NPCMsg msg_0575_T24PC0101_00004
	BufferPlayersName 0
	NPCMsg msg_0575_T24PC0101_00005
	PlayFanfare SEQ_ME_POKEGET
	WaitFanfare
	GiveMon SPECIES_TENTACOOL, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	NPCMsg msg_0575_T24PC0101_00006
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _00FF
	TouchscreenMenuShow
	CloseMsg
	GoTo _0127

_00FF:
	CloseMsg
	SetSavedBottomScreenApp 0
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NicknameInput 1, VAR_SPECIAL_RESULT
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	ReleaseAll
	End

_0127:
	ReleaseAll
	End
	.balign 4, 0
