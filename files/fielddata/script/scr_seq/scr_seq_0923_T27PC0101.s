#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T27PC0101.h"
#include "msgdata\msg\msg_0615_T27PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T27PC0101_000
	scrdef scr_seq_T27PC0101_001
	scrdef scr_seq_T27PC0101_002
	scrdef scr_seq_T27PC0101_003
	scrdef scr_seq_T27PC0101_004
	scrdef scr_seq_T27PC0101_005
	scrdef scr_seq_T27PC0101_006
	scrdef_end

scr_seq_T27PC0101_000:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd std_nurse_joy
	End

scr_seq_T27PC0101_001:
	LockAll
	HidePerson 4
	SetFlag FLAG_UNK_1C5
	ClearFlag FLAG_HIDE_GOLDENROD_BILL
	SetFlag FLAG_SYS_MET_BILL
	SetVar VAR_UNK_410D, 1
	ReleaseAll
	End

scr_seq_T27PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0615_T27PC0101_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27PC0101_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0615_T27PC0101_00003
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27PC0101_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0615_T27PC0101_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T27PC0101_005:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End

scr_seq_T27PC0101_006:
	LockAll
	HidePerson 4
	SetFlag FLAG_UNK_1C5
	ClearFlag FLAG_HIDE_GOLDENROD_BILL
	SetFlag FLAG_SYS_MET_BILL
	SetVar VAR_UNK_410D, 1
	ReleaseAll
	End
	.balign 4, 0
