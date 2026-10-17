#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T20.h"
#include "msgdata\msg\msg_0542_T20.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T20_000
	scrdef scr_seq_T20_001
	scrdef scr_seq_T20_002
	scrdef scr_seq_T20_003
	scrdef scr_seq_T20_004
	scrdef scr_seq_T20_005
	scrdef scr_seq_T20_006
	scrdef scr_seq_T20_007
	scrdef scr_seq_T20_008
	scrdef scr_seq_T20_009
	scrdef scr_seq_T20_010
	scrdef scr_seq_T20_011
	scrdef scr_seq_T20_012
	scrdef scr_seq_T20_013
	scrdef scr_seq_T20_014
	scrdef scr_seq_T20_015
	scrdef scr_seq_T20_016
	scrdef scr_seq_T20_017
	scrdef_end

scr_seq_T20_006:
	GetFriendSprite VAR_OBJ_0
	CheckFlag FLAG_UNK_189
	GoToIf lt, _005F
	ClearFlag FLAG_UNK_189
	End

_005F:
	SetVar VAR_TEMP_x4007, 0
	CheckBadge BADGE_PLAIN, VAR_TEMP_x4002
	CompareVarToValue VAR_TEMP_x4002, 0
	GoToIf eq, _0089
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 2
	GoToIf eq, _008F
_0089:
	SetFlag FLAG_HIDE_CAMERON
	End

_008F:
	ClearFlag FLAG_HIDE_CAMERON
	End

scr_seq_T20_009:
	CompareVarToValue VAR_SCENE_NEW_BARK_TOWN_OW, 1
	GoToIf eq, _00A4
	End

_00A4:
	ClearFlag FLAG_HIDE_NEW_BARK_FRIEND
	ShowPerson 4
	ClearFlag FLAG_HIDE_NEW_BARK_MARILL
	ShowPerson 3
	MovePersonFacing 4, 686, 0, 396, DIR_WEST
	MovePersonFacing 3, 685, 0, 396, DIR_SOUTH
	End

scr_seq_T20_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0542_T20_00013
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _00F8
	ApplyMovement 0, _024C
	GoTo _0128

_00F8:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0113
	ApplyMovement 0, _0244
	GoTo _0128

_0113:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0128
	ApplyMovement 0, _0254
_0128:
	WaitMovement
	NPCMsg msg_0542_T20_00014
	CloseMsg
	CheckFlag FLAG_GOT_STARTER
	GoToIf lt, _0166
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0153
	GoTo _01BA

	; 0x014D
	.byte 0x16, 0x00, 0x13
	.byte 0x00, 0x00, 0x00
_0153:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0166
	GoTo _0192

_0166:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _017F
	GoTo _0202

	; 0x0179
	.byte 0x16, 0x00, 0x13, 0x00, 0x00, 0x00
_017F:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0192
	GoTo _01E2

_0192:
	ApplyMovement 0, _0264
	ApplyMovement obj_partner_poke, _0224
	ApplyMovement obj_player, _0288
	WaitMovement
	ApplyMovement 0, _0274
	WaitMovement
	ReleaseAll
	End

_01BA:
	ApplyMovement 0, _02A0
	ApplyMovement obj_partner_poke, _0234
	ApplyMovement obj_player, _02B8
	WaitMovement
	ApplyMovement 0, _0274
	WaitMovement
	ReleaseAll
	End

_01E2:
	ApplyMovement 0, _0264
	ApplyMovement obj_player, _0288
	WaitMovement
	ApplyMovement 0, _0274
	WaitMovement
	ReleaseAll
	End

_0202:
	ApplyMovement 0, _02A0
	ApplyMovement obj_player, _02B8
	WaitMovement
	ApplyMovement 0, _0274
	WaitMovement
	ReleaseAll
	End

	; 0x0222
	.byte 0x00, 0x00

_0224:

	; 0x0224
	step 71, 1
	step 77, 4
	step 72, 1
	EndMovement

_0234:

	; 0x0234
	step 71, 1
	step 77, 6
	step 72, 1
	EndMovement

_0244:

	; 0x0244
	step 32, 1
	EndMovement

_024C:

	; 0x024C
	step 33, 1
	EndMovement

_0254:

	; 0x0254
	step 34, 1
	EndMovement
	.byte 0x23, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00

_0264:

	; 0x0264
	step 78, 1
	step 1, 1
	step 77, 2
	EndMovement

_0274:

	; 0x0274
	step 0, 1
	step 12, 2
	step 3, 1
	step 15, 1
	EndMovement

_0288:

	; 0x0288
	step 0, 1
	step 71, 1
	step 77, 2
	step 57, 1
	step 72, 1
	EndMovement

_02A0:

	; 0x02A0
	step 76, 1
	step 2, 1
	step 78, 1
	step 1, 1
	step 77, 3
	EndMovement

_02B8:

	; 0x02B8
	step 3, 1
	step 71, 1
	step 78, 1
	step 72, 1
	step 0, 1
	step 71, 1
	step 77, 3
	step 57, 1
	step 72, 1
	EndMovement
scr_seq_T20_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_SCENE_NEW_BARK_TOWN_OW, 0
	GoToIf ne, _02FE
	NPCMsg msg_0542_T20_00009
	GoTo _0347

_02FE:
	CompareVarToValue VAR_SCENE_NEW_BARK_TOWN_OW, 1
	GoToIf ne, _0314
	NPCMsg msg_0542_T20_00005
	GoTo _0347

_0314:
	CompareVarToValue VAR_SCENE_NEW_BARK_TOWN_OW, 2
	GoToIf ne, _032A
	NPCMsg msg_0542_T20_00005
	GoTo _0347

_032A:
	CompareVarToValue VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	GoToIf ne, _0340
	NPCMsg msg_0542_T20_00000
	GoTo _0347

_0340:
	BufferPlayersName 0
	GenderMsgBox msg_0542_T20_00006, msg_0542_T20_00007
_0347:
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20_002:
	FollowMonResetMovement
	LockAll
	CheckFlag FLAG_GOT_POKEGEAR
	GoToIf eq, _075A
	ApplyMovement 1, _09B8
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0542_T20_00001, msg_0542_T20_00002
	Wait 20, VAR_SPECIAL_RESULT
	CloseMsg
	ApplyMovement obj_player, _09D4
	WaitMovement
	CompareVarToValue VAR_SCENE_NEW_BARK_TOWN_OW, 2
	GoToIf eq, _054E
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _03AF
	ApplyMovement 1, _0A1C
	GoTo _044B

_03AF:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _03CA
	ApplyMovement 1, _0A2C
	GoTo _044B

_03CA:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _03E5
	ApplyMovement 1, _0A3C
	GoTo _044B

_03E5:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _0400
	ApplyMovement 1, _0A4C
	GoTo _044B

_0400:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _041B
	ApplyMovement 1, _0A54
	GoTo _044B

_041B:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _0436
	ApplyMovement 1, _0A64
	GoTo _044B

_0436:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _044B
	ApplyMovement 1, _0A74
_044B:
	WaitMovement
	NPCMsg msg_0542_T20_00003
	CloseMsg
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _0475
	ApplyMovement 1, _0AEC
	ApplyMovement obj_player, _0BD4
	GoTo _0541

_0475:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _0498
	ApplyMovement 1, _0B00
	ApplyMovement obj_player, _0BE4
	GoTo _0541

_0498:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _04BB
	ApplyMovement 1, _0B14
	ApplyMovement obj_player, _0BF4
	GoTo _0541

_04BB:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _04DE
	ApplyMovement 1, _0B28
	ApplyMovement obj_player, _0C04
	GoTo _0541

_04DE:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _0501
	ApplyMovement 1, _0B34
	ApplyMovement obj_player, _0C0C
	GoTo _0541

_0501:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _0524
	ApplyMovement 1, _0B48
	ApplyMovement obj_player, _0C1C
	GoTo _0541

_0524:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _0541
	ApplyMovement 1, _0B58
	ApplyMovement obj_player, _0C2C
_0541:
	WaitMovement
	NPCMsg msg_0542_T20_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

_054E:
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _0577
	ApplyMovement obj_player, _09E8
	ApplyMovement 1, _0A84
	GoTo _0643

_0577:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _059A
	ApplyMovement obj_player, _09E8
	ApplyMovement 1, _0A90
	GoTo _0643

_059A:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _05BD
	ApplyMovement obj_player, _09E8
	ApplyMovement 1, _0A9C
	GoTo _0643

_05BD:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _05E0
	ApplyMovement obj_player, _09DC
	ApplyMovement 1, _0AA8
	GoTo _0643

_05E0:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _0603
	ApplyMovement obj_player, _09DC
	ApplyMovement 1, _0ABC
	GoTo _0643

_0603:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _0626
	ApplyMovement obj_player, _09DC
	ApplyMovement 1, _0AC8
	GoTo _0643

_0626:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _0643
	ApplyMovement obj_player, _09DC
	ApplyMovement 1, _0AD4
_0643:
	WaitMovement
	NPCMsg msg_0542_T20_00010
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _0677
	ApplyMovement 1, _0B68
	ApplyMovement obj_player, _0C3C
	GoTo _0743

_0677:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _069A
	ApplyMovement 1, _0B78
	ApplyMovement obj_player, _0C48
	GoTo _0743

_069A:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _06BD
	ApplyMovement 1, _0B88
	ApplyMovement obj_player, _0C54
	GoTo _0743

_06BD:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _06E0
	ApplyMovement 1, _0B94
	ApplyMovement obj_player, _0C60
	GoTo _0743

_06E0:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _0703
	ApplyMovement 1, _0BA8
	ApplyMovement obj_player, _0C74
	GoTo _0743

_0703:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _0726
	ApplyMovement 1, _0BB4
	ApplyMovement obj_player, _0C80
	GoTo _0743

_0726:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _0743
	ApplyMovement 1, _0BC4
	ApplyMovement obj_player, _0C8C
_0743:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	NPCMsg msg_0542_T20_00011
	WaitButton
	CloseMsg
	ReleaseAll
	End

_075A:
	DoorAnimationLoad 21, 12, 12, 9, 77
	DoorAnimationOpen 77
	DoorAnimationWait 77
	ShowPerson 5
	MovePersonFacing 5, 684, 0, 393, DIR_SOUTH
	ApplyMovement 5, _0D08
	WaitMovement
	DoorAnimationClose 77
	DoorAnimationWait 77
	DoorAnimationUnload 77
	NPCMsg msg_0542_T20_00017
	CloseMsg
	ApplyMovement obj_player, _09C8
	WaitMovement
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _07C6
	ApplyMovement 5, _0C98
	ApplyMovement obj_player, _09FC
	GoTo _0892

_07C6:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _07E9
	ApplyMovement 5, _0CA8
	ApplyMovement obj_player, _0A0C
	GoTo _0892

_07E9:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _080C
	ApplyMovement 5, _0CB8
	ApplyMovement obj_player, _0A0C
	GoTo _0892

_080C:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _082F
	ApplyMovement 5, _0CC8
	ApplyMovement obj_player, _0A0C
	GoTo _0892

_082F:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _0852
	ApplyMovement 5, _0CD8
	ApplyMovement obj_player, _0A0C
	GoTo _0892

_0852:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _0875
	ApplyMovement 5, _0CE8
	ApplyMovement obj_player, _09F4
	GoTo _0892

_0875:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _0892
	ApplyMovement 5, _0CF8
	ApplyMovement obj_player, _09F4
_0892:
	WaitMovement
	NPCMsg msg_0542_T20_00018
	RegisterGearNumber PHONE_CONTACT_PROF__ELM
	BufferPlayersName 0
	NPCMsg msg_0542_T20_00019
	PlayFanfare SEQ_ME_POKEGEAR_REGIST
	WaitFanfare
	NPCMsg msg_0542_T20_00020
	CloseMsg
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 396
	GoToIf ne, _08D5
	ApplyMovement obj_player, _09D4
	ApplyMovement 5, _0D18
	GoTo _0981

_08D5:
	CompareVarToValue VAR_TEMP_x4001, 397
	GoToIf ne, _08F8
	ApplyMovement obj_player, _09D4
	ApplyMovement 5, _0D24
	GoTo _0981

_08F8:
	CompareVarToValue VAR_TEMP_x4001, 398
	GoToIf ne, _091B
	ApplyMovement obj_player, _09F4
	ApplyMovement 5, _0D30
	GoTo _0981

_091B:
	CompareVarToValue VAR_TEMP_x4001, 399
	GoToIf ne, _0936
	ApplyMovement 5, _0D40
	GoTo _0981

_0936:
	CompareVarToValue VAR_TEMP_x4001, 400
	GoToIf ne, _0951
	ApplyMovement 5, _0D50
	GoTo _0981

_0951:
	CompareVarToValue VAR_TEMP_x4001, 401
	GoToIf ne, _096C
	ApplyMovement 5, _0D60
	GoTo _0981

_096C:
	CompareVarToValue VAR_TEMP_x4001, 402
	GoToIf ne, _0981
	ApplyMovement 5, _0D70
_0981:
	WaitMovement
	DoorAnimationLoad 21, 12, 12, 9, 77
	DoorAnimationOpen 77
	DoorAnimationWait 77
	ApplyMovement 5, _0D10
	WaitMovement
	HidePerson 5
	DoorAnimationClose 77
	DoorAnimationWait 77
	DoorAnimationUnload 77
	SetVar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	ReleaseAll
	End

	; 0x09B5
	.byte 0x00, 0x00, 0x00

_09B8:

	; 0x09B8
	step 34, 1
	step 75, 1
	step 63, 1
	EndMovement

_09C8:

	; 0x09C8
	step 75, 1
	step 63, 1
	EndMovement

_09D4:

	; 0x09D4
	step 3, 1
	EndMovement

_09DC:

	; 0x09DC
	step 66, 2
	step 32, 1
	EndMovement

_09E8:

	; 0x09E8
	step 66, 2
	step 33, 1
	EndMovement

_09F4:

	; 0x09F4
	step 0, 1
	EndMovement

_09FC:

	; 0x09FC
	step 3, 1
	step 66, 2
	step 1, 1
	EndMovement

_0A0C:

	; 0x0A0C
	step 3, 1
	step 66, 2
	step 0, 1
	EndMovement

_0A1C:

	; 0x0A1C
	step 14, 3
	step 12, 3
	step 14, 3
	EndMovement

_0A2C:

	; 0x0A2C
	step 14, 3
	step 12, 2
	step 14, 3
	EndMovement

_0A3C:

	; 0x0A3C
	step 14, 3
	step 12, 1
	step 14, 3
	EndMovement

_0A4C:

	; 0x0A4C
	step 14, 6
	EndMovement

_0A54:

	; 0x0A54
	step 14, 3
	step 13, 1
	step 14, 3
	EndMovement

_0A64:

	; 0x0A64
	step 14, 6
	step 13, 2
	step 2, 1
	EndMovement

_0A74:

	; 0x0A74
	step 14, 6
	step 13, 3
	step 2, 1
	EndMovement

_0A84:

	; 0x0A84
	step 14, 7
	step 12, 2
	EndMovement

_0A90:

	; 0x0A90
	step 14, 7
	step 12, 1
	EndMovement

_0A9C:

	; 0x0A9C
	step 14, 7
	step 32, 1
	EndMovement

_0AA8:

	; 0x0AA8
	step 14, 3
	step 12, 1
	step 14, 4
	step 33, 1
	EndMovement

_0ABC:

	; 0x0ABC
	step 14, 7
	step 33, 1
	EndMovement

_0AC8:

	; 0x0AC8
	step 14, 7
	step 13, 1
	EndMovement

_0AD4:

	; 0x0AD4
	step 14, 7
	step 13, 2
	EndMovement
	.byte 0x0f, 0x00, 0x06, 0x00, 0x22, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00

_0AEC:

	; 0x0AEC
	step 15, 3
	step 13, 3
	step 15, 3
	step 34, 1
	EndMovement

_0B00:

	; 0x0B00
	step 15, 3
	step 13, 2
	step 15, 3
	step 34, 1
	EndMovement

_0B14:

	; 0x0B14
	step 15, 3
	step 13, 1
	step 15, 3
	step 34, 1
	EndMovement

_0B28:

	; 0x0B28
	step 15, 6
	step 34, 1
	EndMovement

_0B34:

	; 0x0B34
	step 15, 3
	step 12, 1
	step 15, 3
	step 34, 1
	EndMovement

_0B48:

	; 0x0B48
	step 12, 2
	step 15, 6
	step 34, 1
	EndMovement

_0B58:

	; 0x0B58
	step 12, 3
	step 15, 6
	step 34, 1
	EndMovement

_0B68:

	; 0x0B68
	step 13, 2
	step 15, 7
	step 34, 1
	EndMovement

_0B78:

	; 0x0B78
	step 13, 1
	step 15, 7
	step 34, 1
	EndMovement

_0B88:

	; 0x0B88
	step 15, 7
	step 34, 1
	EndMovement

_0B94:

	; 0x0B94
	step 15, 3
	step 13, 1
	step 15, 4
	step 34, 1
	EndMovement

_0BA8:

	; 0x0BA8
	step 15, 7
	step 34, 1
	EndMovement

_0BB4:

	; 0x0BB4
	step 12, 1
	step 15, 7
	step 34, 1
	EndMovement

_0BC4:

	; 0x0BC4
	step 12, 2
	step 15, 7
	step 34, 1
	EndMovement

_0BD4:

	; 0x0BD4
	step 15, 4
	step 13, 3
	step 15, 2
	EndMovement

_0BE4:

	; 0x0BE4
	step 15, 4
	step 13, 2
	step 15, 2
	EndMovement

_0BF4:

	; 0x0BF4
	step 15, 4
	step 13, 1
	step 15, 2
	EndMovement

_0C04:

	; 0x0C04
	step 15, 6
	EndMovement

_0C0C:

	; 0x0C0C
	step 15, 4
	step 12, 1
	step 15, 2
	EndMovement

_0C1C:

	; 0x0C1C
	step 15, 1
	step 12, 2
	step 15, 5
	EndMovement

_0C2C:

	; 0x0C2C
	step 15, 1
	step 12, 3
	step 15, 5
	EndMovement

_0C3C:

	; 0x0C3C
	step 13, 3
	step 15, 6
	EndMovement

_0C48:

	; 0x0C48
	step 13, 2
	step 15, 6
	EndMovement

_0C54:

	; 0x0C54
	step 13, 1
	step 15, 6
	EndMovement

_0C60:

	; 0x0C60
	step 12, 1
	step 15, 3
	step 13, 1
	step 15, 3
	EndMovement

_0C74:

	; 0x0C74
	step 12, 1
	step 15, 6
	EndMovement

_0C80:

	; 0x0C80
	step 12, 2
	step 15, 6
	EndMovement

_0C8C:

	; 0x0C8C
	step 12, 3
	step 15, 6
	EndMovement

_0C98:

	; 0x0C98
	step 13, 3
	step 14, 8
	step 32, 1
	EndMovement

_0CA8:

	; 0x0CA8
	step 13, 2
	step 14, 8
	step 33, 1
	EndMovement

_0CB8:

	; 0x0CB8
	step 13, 2
	step 14, 8
	step 13, 1
	EndMovement

_0CC8:

	; 0x0CC8
	step 13, 2
	step 14, 8
	step 13, 2
	EndMovement

_0CD8:

	; 0x0CD8
	step 13, 2
	step 14, 8
	step 13, 3
	EndMovement

_0CE8:

	; 0x0CE8
	step 13, 2
	step 14, 8
	step 13, 4
	EndMovement

_0CF8:

	; 0x0CF8
	step 13, 2
	step 14, 8
	step 13, 5
	EndMovement

_0D08:

	; 0x0D08
	step 13, 1
	EndMovement

_0D10:

	; 0x0D10
	step 12, 1
	EndMovement

_0D18:

	; 0x0D18
	step 15, 8
	step 12, 3
	EndMovement

_0D24:

	; 0x0D24
	step 15, 8
	step 12, 2
	EndMovement

_0D30:

	; 0x0D30
	step 12, 1
	step 15, 8
	step 12, 2
	EndMovement

_0D40:

	; 0x0D40
	step 12, 2
	step 15, 8
	step 12, 2
	EndMovement

_0D50:

	; 0x0D50
	step 12, 2
	step 15, 8
	step 12, 3
	EndMovement

_0D60:

	; 0x0D60
	step 12, 2
	step 15, 8
	step 12, 4
	EndMovement

_0D70:

	; 0x0D70
	step 12, 5
	step 15, 8
	step 12, 2
	EndMovement
scr_seq_T20_003:
	FollowMonResetMovement
	LockAll
	ClearFlag FLAG_HIDE_NEW_BARK_FRIEND
	GoTo _0DEC

	; 0x0D8E
	.byte 0x00, 0x00
	.byte 0x5f, 0x00, 0x49, 0x00, 0x02, 0x06, 0x1f, 0x00, 0xa2, 0x01, 0x64, 0x00, 0x04, 0x00, 0x4b, 0x00
	.byte 0x02, 0x06, 0x14, 0x00, 0xed, 0x07, 0x5e, 0x00, 0x04, 0x00, 0xf6, 0x00, 0x00, 0x00, 0x5f, 0x00
	.byte 0x5e, 0x00, 0x03, 0x00, 0x80, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x5e, 0x00, 0xff, 0x00, 0xda, 0x00
	.byte 0x00, 0x00, 0x5e, 0x00, 0x04, 0x00, 0xee, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x5e, 0x00, 0x03, 0x00
	.byte 0x8c, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x5e, 0x00, 0x04, 0x00, 0xe2, 0x00, 0x00, 0x00, 0x5e, 0x00
	.byte 0x03, 0x00, 0x82, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x14, 0x00, 0xee, 0x07
_0DEC:
	SetVar VAR_SCENE_PLAYERS_HOUSE_1F, 2
	HidePerson 3
	HidePerson 4
	SetFlag FLAG_HIDE_NEW_BARK_MARILL
	SetFlag FLAG_HIDE_NEW_BARK_FRIEND
	ReleaseAll
	End

	; 0x0E06
	.byte 0x00, 0x00, 0x42, 0x00, 0x01, 0x00, 0x10, 0x00, 0x08, 0x00
	.byte 0x47, 0x00, 0x01, 0x00, 0x35, 0x00, 0x01, 0x00, 0x48, 0x00, 0x01, 0x00, 0x03, 0x00, 0x05, 0x00
	.byte 0x00, 0x00, 0x05, 0x00, 0x02, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x0c, 0x00, 0x01, 0x00
	.byte 0x42, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x4b, 0x00, 0x01, 0x00
	.byte 0x24, 0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x02, 0x00, 0x02, 0x00, 0x26, 0x00, 0x04, 0x00, 0x12, 0x00, 0x06, 0x00, 0xfe, 0x00, 0x00, 0x00
	.byte 0x32, 0x00, 0x04, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x04, 0x00, 0x02, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x02, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x4b, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x06, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x41, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x06, 0x00, 0x03, 0x00, 0x01, 0x00
	.byte 0x4b, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x27, 0x00, 0x04, 0x00, 0xfe, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x04, 0x00, 0x02, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x02, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00
scr_seq_T20_007:
	BufferPlayersName 0
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0542_T20_00035, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T20_008:
	FollowMonResetMovement
	LockAll
	CallStd std_play_friend_music
	NPCMsg msg_0542_T20_00015
	CloseMsg
	GoTo _0F66

	; 0x0EFF
	.byte 0x00
	.byte 0xb8, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x5a, 0x02, 0x00, 0x00, 0x5b, 0x02, 0x5c, 0x02, 0x37, 0x00
	.byte 0x5e, 0x00, 0xff, 0x00, 0xd0, 0x00, 0x00, 0x00, 0x5e, 0x00, 0x04, 0x00, 0xd4, 0x00, 0x00, 0x00
	.byte 0x5f, 0x00, 0x5b, 0x02, 0x5a, 0x02, 0x01, 0x00, 0x5c, 0x02, 0x30, 0x00, 0xbe, 0x00, 0x00, 0x4d
	.byte 0x03, 0x01, 0x00, 0x00, 0x84, 0x00, 0x0f, 0x10, 0x35, 0x00, 0x5e, 0x00, 0x04, 0x00, 0xbe, 0x00
	.byte 0x00, 0x00, 0x5e, 0x00, 0x03, 0x00, 0xca, 0x00, 0x00, 0x00, 0x5e, 0x00, 0xff, 0x00, 0xe6, 0x00
	.byte 0x00, 0x00, 0x5f, 0x00, 0x5e, 0x00, 0x04, 0x00, 0xe8, 0x00, 0x00, 0x00, 0x5e, 0x00, 0x03, 0x00
	.byte 0xe8, 0x00, 0x00, 0x00, 0x5f, 0x00
_0F66:
	HidePerson 3
	HidePerson 4
	SetFlag FLAG_HIDE_NEW_BARK_MARILL
	SetFlag FLAG_HIDE_NEW_BARK_FRIEND
	CallStd std_fade_end_friend_music
	SetVar VAR_SCENE_NEW_BARK_TOWN_OW, 2
	ReleaseAll
	End

	; 0x0F84
	.byte 0x3e, 0x00, 0x04, 0x00, 0x3e, 0x00, 0x02, 0x00, 0x25, 0x00, 0x01, 0x00
	.byte 0x3e, 0x00, 0x02, 0x00, 0x27, 0x00, 0x01, 0x00, 0x3e, 0x00, 0x01, 0x00, 0x24, 0x00, 0x01, 0x00
	.byte 0x3e, 0x00, 0x01, 0x00, 0x25, 0x00, 0x01, 0x00, 0x3e, 0x00, 0x01, 0x00, 0x24, 0x00, 0x01, 0x00
	.byte 0x3e, 0x00, 0x01, 0x00, 0x4b, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x33, 0x00, 0x03, 0x00
	.byte 0x11, 0x00, 0x01, 0x00, 0x13, 0x00, 0x02, 0x00, 0x10, 0x00, 0x02, 0x00, 0x12, 0x00, 0x02, 0x00
	.byte 0x11, 0x00, 0x02, 0x00, 0x10, 0x00, 0x02, 0x00, 0x13, 0x00, 0x02, 0x00, 0x11, 0x00, 0x01, 0x00
	.byte 0x22, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x02, 0x00, 0x0f, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x01, 0x00, 0x22, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.byte 0x0d, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x02, 0x00, 0x0d, 0x00, 0x05, 0x00, 0x20, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x01, 0x00, 0x0d, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x02, 0x00
	.byte 0x20, 0x00, 0x01, 0x00, 0x3f, 0x00, 0x03, 0x00, 0x21, 0x00, 0x01, 0x00, 0x11, 0x00, 0x04, 0x00
	.byte 0x31, 0x00, 0x02, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x02, 0x00, 0x21, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x03, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x04, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00
scr_seq_T20_010:
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _1078
	FollowMonIsLarge VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _1078
	FollowMonRecall
_1078:
	PlaySE SEQ_SE_DP_KAIDAN2
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	Warp 62, 0, 12, 6, DIR_WEST
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	WaitSE SEQ_SE_DP_KAIDAN2
	SetSpecialSpawnWarp 60, 688, 393
	SetVar VAR_UNK_407C, 1
	End

	; 0x10B4
	.byte 0x0d, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
scr_seq_T20_016:
	BufferFriendsName 0
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0542_T20_00035, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T20_017:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _11FC
	PhotoAlbumIsFull VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _1224
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 1
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _114D
	ApplyMovement obj_player, _1238
	ApplyMovement 6, _1284
	GoTo _119B

_114D:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _1168
	ApplyMovement obj_player, _1250
	GoTo _119B

_1168:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _118B
	ApplyMovement obj_player, _1270
	ApplyMovement 6, _1284
	GoTo _119B

_118B:
	ApplyMovement obj_player, _125C
	ApplyMovement 6, _1284
_119B:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _11C2
	ApplyMovement obj_partner_poke, _1290
	WaitMovement
_11C2:
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 0
	LockAll
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	ClearFlag FLAG_UNK_189
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 2
	WaitButton
	CloseMsg
	ReleaseAll
	End

_11FC:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 5
	WaitButton
	CloseMsg
	ReleaseAll
	End

	; 0x1210
	.byte 0xb6, 0x01, 0x02, 0x00, 0x0c, 0x80, 0xb8, 0x01, 0x0c, 0x80, 0x04, 0x00, 0x32, 0x00, 0x35, 0x00
	.byte 0x61, 0x00, 0x02, 0x00
_1224:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 3
	WaitButton
	CloseMsg
	ReleaseAll
	End


_1238:

	; 0x1238
	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_1250:

	; 0x1250
	step 12, 3
	step 33, 1
	EndMovement

_125C:

	; 0x125C
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_1270:

	; 0x1270
	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	EndMovement

_1284:

	; 0x1284
	step 63, 1
	step 32, 1
	EndMovement

_1290:

	; 0x1290
	step 15, 1
	step 12, 1
	step 1, 1
	EndMovement
scr_seq_T20_011:
	FollowMonResetMovement
	LockAll
	CompareVarToValue VAR_TEMP_x4007, 2
	GoToIf eq, _144F
	DoorAnimationLoad 21, 12, 23, 12, 77
	DoorAnimationOpen 77
	DoorAnimationWait 77
	PlaySE SEQ_SE_DP_KAIDAN2
	ClearFlag FLAG_HIDE_NEW_BARK_MOM
	ShowPerson 7
	WaitSE SEQ_SE_DP_KAIDAN2
	ApplyMovement 7, _1478
	WaitMovement
	CompareVarToValue VAR_TEMP_x4007, 0
	GoToIf ne, _12F1
	BufferPlayersName 0
	NPCMsg msg_0542_T20_00021
	CloseMsg
_12F1:
	DoorAnimationClose 77
	DoorAnimationWait 77
	DoorAnimationUnload 77
	GetPlayerCoords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _132D
	ApplyMovement 7, _1480
	ApplyMovement obj_player, _14A4
	GoTo _13A6

_132D:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _1350
	ApplyMovement 7, _148C
	ApplyMovement obj_player, _14B0
	GoTo _13A6

_1350:
	CompareVarToValue VAR_SPECIAL_x8005, 400
	GoToIf ne, _1373
	ApplyMovement 7, _1498
	ApplyMovement obj_player, _14BC
	GoTo _13A6

_1373:
	CompareVarToValue VAR_SPECIAL_x8005, 401
	GoToIf ne, _1396
	ApplyMovement 7, _1498
	ApplyMovement obj_player, _14C8
	GoTo _13A6

_1396:
	ApplyMovement 7, _1498
	ApplyMovement obj_player, _14D8
_13A6:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	CompareVarToValue VAR_TEMP_x4007, 0
	GoToIf ne, _13C8
	NPCMsg msg_0542_T20_00022
	GoTo _13CB

_13C8:
	NPCMsg msg_0542_T20_00023
_13CB:
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _13EA
	ApplyMovement 7, _14E8
	WaitMovement
	GoTo _1411

_13EA:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _1407
	ApplyMovement 7, _14F0
	WaitMovement
	GoTo _1411

_1407:
	ApplyMovement 7, _14F8
	WaitMovement
_1411:
	DoorAnimationLoad 21, 12, 23, 12, 77
	DoorAnimationOpen 77
	DoorAnimationWait 77
	ApplyMovement 7, _1500
	WaitMovement
	SetFlag FLAG_HIDE_NEW_BARK_MOM
	PlaySE SEQ_SE_DP_KAIDAN2
	HidePerson 7
	WaitSE SEQ_SE_DP_KAIDAN2
	DoorAnimationClose 77
	DoorAnimationWait 77
	DoorAnimationUnload 77
	AddVar VAR_TEMP_x4007, 1
	ReleaseAll
	End

_144F:
	NPCMsg msg_0542_T20_00024
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement obj_player, _1508
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	ReleaseAll
	End

	; 0x1476
	.byte 0x00, 0x00

_1478:

	; 0x1478
	step 13, 1
	EndMovement

_1480:

	; 0x1480
	step 13, 1
	step 35, 1
	EndMovement

_148C:

	; 0x148C
	step 13, 2
	step 35, 1
	EndMovement

_1498:

	; 0x1498
	step 13, 3
	step 35, 1
	EndMovement

_14A4:

	; 0x14A4
	step 34, 1
	step 14, 4
	EndMovement

_14B0:

	; 0x14B0
	step 34, 1
	step 14, 4
	EndMovement

_14BC:

	; 0x14BC
	step 34, 1
	step 14, 4
	EndMovement

_14C8:

	; 0x14C8
	step 14, 2
	step 12, 1
	step 14, 2
	EndMovement

_14D8:

	; 0x14D8
	step 14, 2
	step 12, 2
	step 14, 2
	EndMovement

_14E8:

	; 0x14E8
	step 12, 1
	EndMovement

_14F0:

	; 0x14F0
	step 12, 2
	EndMovement

_14F8:

	; 0x14F8
	step 12, 3
	EndMovement

_1500:

	; 0x1500
	step 12, 1
	EndMovement

_1508:

	; 0x1508
	step 14, 1
	EndMovement
scr_seq_T20_012:
	FollowMonResetMovement
	LockAll
	ApplyMovement 8, _1644
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0542_T20_00027, msg_0542_T20_00028
	CloseMsg
	GetPlayerCoords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _1552
	ApplyMovement 8, _1650
	GoTo _15AB

_1552:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _156D
	ApplyMovement 8, _1658
	GoTo _15AB

_156D:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _1588
	ApplyMovement 8, _1660
	GoTo _15AB

_1588:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _15A3
	ApplyMovement 8, _1668
	GoTo _15AB

_15A3:
	ApplyMovement 8, _1670
_15AB:
	ApplyMovement obj_player, _1678
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	BufferPlayersName 0
	GenderMsgBox msg_0542_T20_00029, msg_0542_T20_00030
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _15E3
	ApplyMovement 8, _1680
	GoTo _163C

_15E3:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _15FE
	ApplyMovement 8, _1688
	GoTo _163C

_15FE:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _1619
	ApplyMovement 8, _1690
	GoTo _163C

_1619:
	CompareVarToValue VAR_SPECIAL_x8005, 399
	GoToIf ne, _1634
	ApplyMovement 8, _1698
	GoTo _163C

_1634:
	ApplyMovement 8, _16A0
_163C:
	WaitMovement
	ReleaseAll
	End

	; 0x1642
	.byte 0x00, 0x00

_1644:

	; 0x1644
	step 3, 1
	step 75, 1
	EndMovement

_1650:

	; 0x1650
	step 35, 1
	EndMovement

_1658:

	; 0x1658
	step 35, 1
	EndMovement

_1660:

	; 0x1660
	step 15, 1
	EndMovement

_1668:

	; 0x1668
	step 35, 1
	EndMovement

_1670:

	; 0x1670
	step 35, 1
	EndMovement

_1678:

	; 0x1678
	step 14, 2
	EndMovement

_1680:

	; 0x1680
	step 34, 1
	EndMovement

_1688:

	; 0x1688
	step 34, 1
	EndMovement

_1690:

	; 0x1690
	step 34, 1
	EndMovement

_1698:

	; 0x1698
	step 34, 1
	EndMovement

_16A0:

	; 0x16A0
	step 34, 1
	EndMovement
scr_seq_T20_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GenderMsgBox msg_0542_T20_00025, msg_0542_T20_00026
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	PlayCry SPECIES_MARILL, 0
	NPCMsg msg_0542_T20_00033
	WaitCry
	CloseMsg
	ApplyMovement 9, _16F4
	WaitMovement
	ApplyMovement 8, _1700
	WaitMovement
	GenderMsgBox msg_0542_T20_00031, msg_0542_T20_00032
	WaitButton
	CloseMsg
	ReleaseAll
	End

	; 0x16F1
	.byte 0x00, 0x00, 0x00

_16F4:

	; 0x16F4
	step 47, 1
	step 47, 1
	EndMovement

_1700:

	; 0x1700
	step 34, 1
	EndMovement
scr_seq_T20_013:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0542_T20_00036, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T20_014:
	DirectionSignpost msg_0542_T20_00034, 0, 11, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T20_015:
	BufferPlayersName 0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0542_T20_00012
	WaitButton
	CloseMsg
	ReleaseAll
	End
	.balign 4, 0
