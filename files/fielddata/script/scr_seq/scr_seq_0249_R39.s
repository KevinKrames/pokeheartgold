#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_R39.h"
#include "msgdata\msg\msg_0396_R39.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_R39_000
	scrdef scr_seq_R39_001
	scrdef scr_seq_R39_002
	scrdef scr_seq_R39_003
	scrdef scr_seq_R39_004
	scrdef scr_seq_R39_005
	scrdef scr_seq_R39_006
	scrdef scr_seq_R39_007
	scrdef_end

scr_seq_R39_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	PlayCry SPECIES_MILTANK, 0
	NPCMsg msg_0396_R39_00003
	WaitCry
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_R39_001:
	CheckFlag FLAG_UNK_189
	GoToIf lt, _01A0
	ClearFlag FLAG_UNK_189
	End

scr_seq_R39_002:
	FollowMonResetMovement
	LockAll
	ApplyMovement 8, _0518
	WaitMovement
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 171
	GoToIf ne, _01C8
	ApplyMovement 8, _0524
	GoTo _01E3

scr_seq_R39_003:
	DirectionSignpost msg_0396_R39_00000, 1, 21, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R39_004:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0396_R39_00001, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R39_005:
	SetSignpostMap 3, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0396_R39_00002, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_R39_006:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0218
	PhotoAlbumIsFull VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _022C
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 1
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0240
	ApplyMovement obj_player, _0530
	ApplyMovement 11, _0548
	GoTo _025B

scr_seq_R39_007:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0396_R39_00010
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _02BC
	PhotoAlbumIsFull VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _02C7
	NPCMsg msg_0396_R39_00011
	CloseMsg
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 80
	FacePlayer
	LockAll
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	ClearFlag FLAG_UNK_189
	NPCMsg msg_0396_R39_00012
	WaitButton
	CloseMsg
	ReleaseAll
	End

_01A0:
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 4
	GoToIf eq, _02D2
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf eq, _02D2
	SetFlag FLAG_HIDE_CAMERON
	GoTo _02FE

_01C8:
	CompareVarToValue VAR_TEMP_x4001, 172
	GoToIf ne, _0326
	ApplyMovement 8, _0554
	GoTo _01E3

_01E3:
	WaitMovement
	RegisterGearNumber PHONE_CONTACT_BAOBA
	BufferPlayersName 0
	NPCMsg msg_0396_R39_00008
	PlayFanfare SEQ_ME_POKEGEAR_REGIST
	WaitFanfare
	CloseMsg
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 171
	GoToIf ne, _0363
	ApplyMovement 8, _055C
	GoTo _037E

_0218:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 5
	WaitButton
	CloseMsg
	ReleaseAll
	End

_022C:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 3
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0240:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0392
	ApplyMovement obj_player, _056C
	GoTo _025B

_025B:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _03B5
	ApplyMovement obj_partner_poke, _0578
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 28
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

_02BC:
	NPCMsg msg_0396_R39_00013
	WaitButton
	CloseMsg
	ReleaseAll
	End

_02C7:
	NPCMsg msg_0396_R39_00014
	WaitButton
	CloseMsg
	ReleaseAll
	End

_02D2:
	ClearFlag FLAG_HIDE_CAMERON
	GetCurrentTimeOfDay VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 3
	GoToIf eq, _03EF
	CompareVarToValue VAR_TEMP_x4000, 4
	GoToIf eq, _03EF
	ClearFlag FLAG_UNK_226
	GoTo _042C

_02FE:
	GetCurrentTimeOfDay VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 3
	GoToIf eq, _03EF
	CompareVarToValue VAR_TEMP_x4000, 4
	GoToIf eq, _03EF
	ClearFlag FLAG_UNK_226
	GoTo _042C

_0326:
	ApplyMovement 8, _0588
	WaitMovement
	RegisterGearNumber PHONE_CONTACT_BAOBA
	BufferPlayersName 0
	NPCMsg msg_0396_R39_00008
	CloseMsg
	PlayFanfare SEQ_ME_POKEGEAR_REGIST
	WaitFanfare
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 171
	GoToIf ne, _0363
	ApplyMovement 8, _055C
	GoTo _037E

_0363:
	CompareVarToValue VAR_TEMP_x4001, 172
	GoToIf ne, _0465
	ApplyMovement 8, _0594
	GoTo _037E

_037E:
	WaitMovement
	HidePerson 8
	SetFlag FLAG_UNK_228
	ReleaseAll
	SetVar VAR_UNK_408F, 1
	End

_0392:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0481
	ApplyMovement obj_player, _05A4
	ApplyMovement 11, _0548
	GoTo _025B

_03B5:
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 28
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

_03EF:
	SetFlag FLAG_UNK_226
	CheckFlag FLAG_TRADE_LT_SURGE_PIKACHU
	GoToIf lt, _04F2
	GetPhoneBookRematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 0
	GoToIf ne, _04F2
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 5
	GoToIf ne, _04F8
	ClearFlag FLAG_HIDE_ROUTE_39_LT_SURGE
	GoTo _050F

_042C:
	CheckFlag FLAG_TRADE_LT_SURGE_PIKACHU
	GoToIf lt, _04F2
	GetPhoneBookRematch PHONE_CONTACT_LT__SURGE, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 0
	GoToIf ne, _04F2
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 5
	GoToIf ne, _04F8
	ClearFlag FLAG_HIDE_ROUTE_39_LT_SURGE
	GoTo _050F

_0465:
	ApplyMovement 8, _05B8
	WaitMovement
	HidePerson 8
	SetFlag FLAG_UNK_228
	ReleaseAll
	SetVar VAR_UNK_408F, 1
	End

_0481:
	ApplyMovement obj_player, _05C8
	ApplyMovement 11, _0548
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _03B5
	ApplyMovement obj_partner_poke, _0578
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 28
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

_04F2:
	SetFlag FLAG_HIDE_ROUTE_39_LT_SURGE
	End

_04F8:
	CompareVarToValue VAR_TEMP_x4000, 6
	GoToIf ne, _0511
	ClearFlag FLAG_HIDE_ROUTE_39_LT_SURGE
	GoTo _050F

_050F:
	End

_0511:
	GoTo _04F2

	; 0x0517
	.byte 0x00

_0518:

	; 0x0518
	step 75, 1
	step 35, 1
	EndMovement

_0524:

	; 0x0524
	step 12, 1
	step 15, 2
	EndMovement

_0530:

	; 0x0530
	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_0548:

	; 0x0548
	step 63, 1
	step 32, 1
	EndMovement

_0554:

	; 0x0554
	step 15, 2
	EndMovement

_055C:

	; 0x055C
	step 13, 1
	step 14, 2
	step 13, 9
	EndMovement

_056C:

	; 0x056C
	step 12, 3
	step 33, 1
	EndMovement

_0578:

	; 0x0578
	step 15, 1
	step 12, 1
	step 1, 1
	EndMovement

_0588:

	; 0x0588
	step 13, 1
	step 15, 2
	EndMovement

_0594:

	; 0x0594
	step 13, 1
	step 14, 2
	step 13, 8
	EndMovement

_05A4:

	; 0x05A4
	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	EndMovement

_05B8:

	; 0x05B8
	step 13, 1
	step 14, 2
	step 13, 7
	EndMovement

_05C8:

	; 0x05C8
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement
	.balign 4, 0
