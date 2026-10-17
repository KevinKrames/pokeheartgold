#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_D47PC0101.h"
#include "msgdata\msg\msg_0134_D47PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D47PC0101_000
	scrdef scr_seq_D47PC0101_001
	scrdef scr_seq_D47PC0101_002
	scrdef scr_seq_D47PC0101_003
	scrdef_end

scr_seq_D47PC0101_000:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd std_nurse_joy
	End

scr_seq_D47PC0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0134_D47PC0101_00000
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D47PC0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0134_D47PC0101_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D47PC0101_003:
	SetVar VAR_SPECIAL_x8007, 0
	CallStd 2072
	End
	.balign 4, 0
