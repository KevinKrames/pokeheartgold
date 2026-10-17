#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_D37R0103.h"
#include "msgdata\msg\msg_0118_D37R0103.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D37R0103_000
	scrdef scr_seq_D37R0103_001
	scrdef scr_seq_D37R0103_002
	scrdef scr_seq_D37R0103_003
	scrdef_end

scr_seq_D37R0103_000:
	SetFlag FLAG_UNK_096
	CheckFlag FLAG_UNK_096
	GoToIf eq, _00DF
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0118_D37R0103_00000
	CloseMsg
	ApplyMovement 1, _0500
	ApplyMovement 7, _0500
	ApplyMovement 9, _0500
	ApplyMovement 10, _0500
	ApplyMovement 11, _0500
	WaitMovement
	SetFlag FLAG_UNK_096
	ChangeObjectMovement 0, 9
	ReleaseAll
	End

scr_seq_D37R0103_001:
	GetPersonCoords 4, VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 15
	GoToIf ne, _00F2
	GoTo _0105

scr_seq_D37R0103_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	PlayCry SPECIES_MACHOKE, 0
	NPCMsg msg_0118_D37R0103_00002
	WaitCry
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D37R0103_003:
	MakeObjectVisible 9
	MakeObjectVisible 10
	MakeObjectVisible 11
	MakeObjectVisible 12
	MakeObjectVisible 13
	MakeObjectVisible 14
	MakeObjectVisible 15
	MakeObjectVisible 16
	MakeObjectVisible 17
	CheckFlag FLAG_UNK_096
	GoToIf eq, _012D
	CheckFlag FLAG_UNK_097
	GoToIf eq, _0187
	CheckFlag FLAG_UNK_098
	GoToIf eq, _01D0
	End

_00DF:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0118_D37R0103_00001
	WaitButton
	CloseMsg
	ReleaseAll
	End

_00F2:
	CompareVarToValue VAR_TEMP_x4001, 16
	GoToIf ne, _020E
	GoTo _0214

_0105:
	SetFlag FLAG_UNK_097
	CheckFlag FLAG_UNK_097
	GoToIf eq, _00DF
	GetObjectFacing 4, VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf ne, _0238
	GoTo _023E

_012D:
	CheckFlag FLAG_UNK_097
	GoToIf eq, _027B
	CheckFlag FLAG_UNK_098
	GoToIf eq, _0306
	ChangeObjectMovement 0, 9
	MovePersonFacing 1, 19, 0, 16, DIR_SOUTH
	MovePersonFacing 7, 19, 0, 18, DIR_NORTH
	MovePersonFacing 9, 19, 0, 17, DIR_NORTH
	MovePersonFacing 10, 20, 0, 17, DIR_NORTH
	MovePersonFacing 11, 20, 0, 18, DIR_NORTH
	End

_0187:
	CheckFlag FLAG_UNK_098
	GoToIf eq, _0386
	MovePersonFacing 2, 3, 0, 14, DIR_WEST
	MovePersonFacing 6, 1, 0, 14, DIR_NORTH
	MovePersonFacing 12, 1, 0, 13, DIR_NORTH
	MovePersonFacing 13, 2, 0, 13, DIR_NORTH
	MovePersonFacing 14, 2, 0, 14, DIR_NORTH
	End

_01D0:
	MovePersonFacing 3, 7, 0, 17, DIR_EAST
	MovePersonFacing 5, 8, 0, 18, DIR_NORTH
	MovePersonFacing 15, 8, 0, 17, DIR_NORTH
	MovePersonFacing 16, 9, 0, 17, DIR_NORTH
	MovePersonFacing 17, 9, 0, 18, DIR_NORTH
	End

_020E:
	GoTo _00DF

_0214:
	CheckFlag FLAG_UNK_098
	GoToIf eq, _00DF
	GetObjectFacing 4, VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 1
	GoToIf ne, _0400
	GoTo _0406

_0238:
	GoTo _00DF

_023E:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0118_D37R0103_00000
	CloseMsg
	ApplyMovement 2, _0508
	ApplyMovement 6, _0508
	ApplyMovement 12, _0508
	ApplyMovement 13, _0508
	ApplyMovement 14, _0508
	WaitMovement
	SetFlag FLAG_UNK_097
	ReleaseAll
	End

_027B:
	CheckFlag FLAG_UNK_098
	GoToIf eq, _0443
	ChangeObjectMovement 0, 9
	MovePersonFacing 1, 19, 0, 16, DIR_SOUTH
	MovePersonFacing 7, 19, 0, 18, DIR_NORTH
	MovePersonFacing 9, 19, 0, 17, DIR_NORTH
	MovePersonFacing 10, 20, 0, 17, DIR_NORTH
	MovePersonFacing 11, 20, 0, 18, DIR_NORTH
	MovePersonFacing 2, 3, 0, 14, DIR_WEST
	MovePersonFacing 6, 1, 0, 14, DIR_NORTH
	MovePersonFacing 12, 1, 0, 13, DIR_NORTH
	MovePersonFacing 13, 2, 0, 13, DIR_NORTH
	MovePersonFacing 14, 2, 0, 14, DIR_NORTH
	End

_0306:
	ChangeObjectMovement 0, 9
	MovePersonFacing 1, 19, 0, 16, DIR_SOUTH
	MovePersonFacing 7, 19, 0, 18, DIR_NORTH
	MovePersonFacing 9, 19, 0, 17, DIR_NORTH
	MovePersonFacing 10, 20, 0, 17, DIR_NORTH
	MovePersonFacing 11, 20, 0, 18, DIR_NORTH
	MovePersonFacing 3, 7, 0, 17, DIR_EAST
	MovePersonFacing 5, 8, 0, 18, DIR_NORTH
	MovePersonFacing 15, 8, 0, 17, DIR_NORTH
	MovePersonFacing 16, 9, 0, 17, DIR_NORTH
	MovePersonFacing 17, 9, 0, 18, DIR_NORTH
	End

_0386:
	MovePersonFacing 2, 3, 0, 14, DIR_WEST
	MovePersonFacing 6, 1, 0, 14, DIR_NORTH
	MovePersonFacing 12, 1, 0, 13, DIR_NORTH
	MovePersonFacing 13, 2, 0, 13, DIR_NORTH
	MovePersonFacing 14, 2, 0, 14, DIR_NORTH
	MovePersonFacing 3, 7, 0, 17, DIR_EAST
	MovePersonFacing 5, 8, 0, 18, DIR_NORTH
	MovePersonFacing 15, 8, 0, 17, DIR_NORTH
	MovePersonFacing 16, 9, 0, 17, DIR_NORTH
	MovePersonFacing 17, 9, 0, 18, DIR_NORTH
	End

_0400:
	GoTo _00DF

_0406:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0118_D37R0103_00000
	CloseMsg
	ApplyMovement 3, _0510
	ApplyMovement 5, _0510
	ApplyMovement 15, _0510
	ApplyMovement 16, _0510
	ApplyMovement 17, _0510
	WaitMovement
	SetFlag FLAG_UNK_098
	ReleaseAll
	End

_0443:
	ChangeObjectMovement 0, 9
	MovePersonFacing 1, 19, 0, 16, DIR_SOUTH
	MovePersonFacing 7, 19, 0, 18, DIR_NORTH
	MovePersonFacing 9, 19, 0, 17, DIR_NORTH
	MovePersonFacing 10, 20, 0, 17, DIR_NORTH
	MovePersonFacing 11, 20, 0, 18, DIR_NORTH
	MovePersonFacing 2, 3, 0, 14, DIR_WEST
	MovePersonFacing 6, 1, 0, 14, DIR_NORTH
	MovePersonFacing 12, 1, 0, 13, DIR_NORTH
	MovePersonFacing 13, 2, 0, 13, DIR_NORTH
	MovePersonFacing 14, 2, 0, 14, DIR_NORTH
	MovePersonFacing 3, 7, 0, 17, DIR_EAST
	MovePersonFacing 5, 8, 0, 18, DIR_NORTH
	MovePersonFacing 15, 8, 0, 17, DIR_NORTH
	MovePersonFacing 16, 9, 0, 17, DIR_NORTH
	MovePersonFacing 17, 9, 0, 18, DIR_NORTH
	End

	; 0x04FF
	.byte 0x00

_0500:

	; 0x0500
	step 9, 2
	EndMovement

_0508:

	; 0x0508
	step 10, 2
	EndMovement

_0510:

	; 0x0510
	step 11, 2
	EndMovement
	.balign 4, 0
