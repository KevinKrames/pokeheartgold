#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_R32.h"
#include "msgdata\msg\msg_0380_R32.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R32_000
	scrdef scr_seq_R32_001
	scrdef scr_seq_R32_002
	scrdef scr_seq_R32_003
	scrdef scr_seq_R32_004
	scrdef scr_seq_R32_005
	scrdef scr_seq_R32_006
	scrdef scr_seq_R32_007
	scrdef scr_seq_R32_008
	scrdef scr_seq_R32_009
	scrdef_end

scr_seq_R32_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_TM05_FROM_ROUTE_32_MAN
	GoToIf eq, _025B
	NPCMsg msg_0380_R32_00010
	SetVar VAR_SPECIAL_x8004, 332
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0266
	CallStd std_give_item_verbose
	SetFlag FLAG_GOT_TM05_FROM_ROUTE_32_MAN
	NPCMsg msg_0380_R32_00012
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_R32_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckBadge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0270
	CheckFlag FLAG_GOT_EGG_FROM_ELMS_ASSISTANT
	GoToIf lt, _0279
	CheckFlag FLAG_UNK_074
	GoToIf lt, _0285
	NPCMsg msg_0380_R32_00007
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_R32_002:
	FollowMonResetMovement
	LockAll
	ApplyMovement 1, _07C0
	WaitMovement
	CheckFlag FLAG_GOT_EGG_FROM_ELMS_ASSISTANT
	GoToIf eq, _0295
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _02CE
	ApplyMovement 1, _07CC
	ApplyMovement obj_player, _07D8
	GoTo _0306

scr_seq_R32_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0380_R32_00014
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _032E
	NPCMsg msg_0380_R32_00015
	GoTo _0339

scr_seq_R32_004:
	CheckFlag FLAG_UNK_189
	GoToIf lt, _0341
	ClearFlag FLAG_UNK_189
	End

scr_seq_R32_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetPartyLeadAlive VAR_SPECIAL_x8002
	MonHasRibbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_RELAX
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0389
	CheckFlag FLAG_DAILY_GOT_SHOCK_RIBBON
	GoToIf eq, _039D
	CompareVarToValue VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	GoToIf eq, _03B1
	CheckFlag FLAG_GOT_POISON_BARB_FROM_FRIEDA
	GoToIf eq, _03D4
	GetWeekday VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 5
	GoToIf eq, _03E8
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 19
	GoTo _0437

scr_seq_R32_006:
	DirectionSignpost msg_0380_R32_00018, 1, 2, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R32_007:
	DirectionSignpost msg_0380_R32_00017, 1, 4, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R32_008:
	DirectionSignpost msg_0380_R32_00019, 1, 13, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R32_009:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _043F
	PhotoAlbumIsFull VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0453
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 1
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0467
	ApplyMovement obj_player, _07E8
	ApplyMovement 18, _0800
	GoTo _0482

_025B:
	NPCMsg msg_0380_R32_00012
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0266:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_0270:
	NPCMsg msg_0380_R32_00003
	GoTo _04E3

_0279:
	BufferPlayersName 0
	NPCMsg msg_0380_R32_00001
	GoTo _04E3

_0285:
	SetVar VAR_TEMP_x4002, 0
	Call _04EB
	ReleaseAll
	End

_0295:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _0537
	ApplyMovement 1, _080C
	ApplyMovement obj_player, _0814
	SetVar VAR_TEMP_x4002, 1
	GoTo _057A

_02CE:
	ApplyMovement 1, _0820
	ApplyMovement obj_player, _0830
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	CheckBadge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _05A7
	NPCMsg msg_0380_R32_00004
	GoTo _05D0

_0306:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	CheckBadge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _05A7
	NPCMsg msg_0380_R32_00004
	GoTo _05D0

_032E:
	NPCMsg msg_0380_R32_00016
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0339:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0341:
	CheckBadge BADGE_PLAIN, VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf eq, _05F3
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 2
	GoToIf eq, _05FD
	CompareVarToValue VAR_TEMP_x4000, 4
	GoToIf eq, _05FD
	CompareVarToValue VAR_TEMP_x4000, 6
	GoToIf eq, _05FD
	SetFlag FLAG_HIDE_CAMERON
	GoTo _0607

_0389:
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 45
	WaitButton
	CloseMsg
	ReleaseAll
	End

_039D:
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 47
	WaitButton
	CloseMsg
	ReleaseAll
	End

_03B1:
	GetWeekday VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 5
	GoToIf eq, _0622
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 19
	GoTo _0437

_03D4:
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 18
	WaitButton
	CloseMsg
	ReleaseAll
	End

_03E8:
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 16
	SetVar VAR_SPECIAL_x8004, 245
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0651
	CallStd std_give_item_verbose
	SetFlag FLAG_GOT_POISON_BARB_FROM_FRIEDA
	AddVar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 17
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0437:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_043F:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 5
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0453:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 3
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0467:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _065B
	ApplyMovement obj_player, _0840
	GoTo _0482

_0482:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _067E
	ApplyMovement obj_partner_poke, _084C
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 5
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

_04E3:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04EB:
	CompareVarToValue VAR_UNK_408D, 0
	GoToIf ne, _06B8
	SetVar VAR_UNK_408D, 1
	SetVar VAR_SPECIAL_x8004, 239
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _06F1
	CompareVarToValue VAR_TEMP_x4002, 0
	GoToIf ne, _0708
	NPCMsg msg_0380_R32_00008
	WaitButton
	GoTo _0711

_0537:
	ApplyMovement 1, _085C
	ApplyMovement obj_player, _0864
	SetVar VAR_TEMP_x4002, 0
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Call _04EB
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _0717
	ApplyMovement 1, _086C
	WaitMovement
	ReleaseAll
	End

_057A:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Call _04EB
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _0717
	ApplyMovement 1, _086C
	WaitMovement
	ReleaseAll
	End

_05A7:
	BufferPlayersName 0
	NPCMsg msg_0380_R32_00002
	CloseMsg
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _071B
	ApplyMovement 1, _0878
	GoTo _0729

_05D0:
	CloseMsg
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4000, 475
	GoToIf ne, _071B
	ApplyMovement 1, _0878
	GoTo _0729

_05F3:
	SetFlag FLAG_HIDE_CAMERON
	GoTo _0607

_05FD:
	ClearFlag FLAG_HIDE_CAMERON
	GoTo _0607

_0607:
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 5
	GoToIf ne, _072F
	ClearFlag FLAG_UNK_208
	GoTo _0735

_0622:
	GetStdMsgNaix 0, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 44
	BufferMonSpeciesName 0, VAR_SPECIAL_x8002
	MsgBoxExtern VAR_SPECIAL_RESULT, 46
	GiveRibbon VAR_SPECIAL_x8002, RIBBON_RELAX
	PlayFanfare SEQ_ME_ITEM
	WaitFanfare
	SetFlag FLAG_DAILY_GOT_SHOCK_RIBBON
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0651:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_065B:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0737
	ApplyMovement obj_player, _0888
	ApplyMovement 18, _0800
	GoTo _0482

_067E:
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 5
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

_06B8:
	SetVar VAR_SPECIAL_x8004, 239
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _06F1
	CompareVarToValue VAR_TEMP_x4002, 0
	GoToIf ne, _0708
	NPCMsg msg_0380_R32_00008
	WaitButton
	GoTo _0711

_06F1:
	CompareVarToValue VAR_TEMP_x4002, 0
	GoToIf ne, _07A8
	CallStd std_obtain_item_verbose
	GoTo _07B4

_0708:
	NPCMsg msg_0380_R32_00009
	GoTo _07BC

_0711:
	GoTo _07BC

_0717:
	ReleaseAll
	End

_071B:
	ApplyMovement 1, _089C
	WaitMovement
	ReleaseAll
	End

_0729:
	WaitMovement
	ReleaseAll
	End

_072F:
	SetFlag FLAG_UNK_208
	End

_0735:
	End

_0737:
	ApplyMovement obj_player, _08AC
	ApplyMovement 18, _0800
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _067E
	ApplyMovement obj_partner_poke, _084C
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 5
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

_07A8:
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_074
	CloseMsg
	Return

_07B4:
	SetFlag FLAG_UNK_074
	CloseMsg
	Return

_07BC:
	CloseMsg
	Return


_07C0:

	; 0x07C0
	step 2, 1
	step 75, 1
	EndMovement

_07CC:

	; 0x07CC
	step 14, 2
	step 12, 1
	EndMovement

_07D8:

	; 0x07D8
	step 63, 1
	step 12, 2
	step 1, 1
	EndMovement

_07E8:

	; 0x07E8
	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_0800:

	; 0x0800
	step 63, 1
	step 32, 1
	EndMovement

_080C:

	; 0x080C
	step 14, 1
	EndMovement

_0814:

	; 0x0814
	step 63, 1
	step 3, 1
	EndMovement

_0820:

	; 0x0820
	step 62, 1
	step 14, 1
	step 12, 1
	EndMovement

_0830:

	; 0x0830
	step 62, 1
	step 12, 2
	step 1, 1
	EndMovement

_0840:

	; 0x0840
	step 12, 3
	step 33, 1
	EndMovement

_084C:

	; 0x084C
	step 15, 1
	step 12, 1
	step 1, 1
	EndMovement

_085C:

	; 0x085C
	step 62, 1
	EndMovement

_0864:

	; 0x0864
	step 3, 1
	EndMovement

_086C:

	; 0x086C
	step 15, 1
	step 2, 1
	EndMovement

_0878:

	; 0x0878
	step 13, 1
	step 15, 2
	step 2, 1
	EndMovement

_0888:

	; 0x0888
	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	EndMovement

_089C:

	; 0x089C
	step 13, 1
	step 15, 1
	step 2, 1
	EndMovement

_08AC:

	; 0x08AC
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement
	.balign 4, 0
