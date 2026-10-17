#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T20R0201.h"
#include "msgdata\msg\msg_0545_T20R0201.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T20R0201_000
	scrdef scr_seq_T20R0201_001
	scrdef scr_seq_T20R0201_002
	scrdef scr_seq_T20R0201_003
	scrdef scr_seq_T20R0201_004
	scrdef scr_seq_T20R0201_005
	scrdef scr_seq_T20R0201_006
	scrdef_end

scr_seq_T20R0201_000:
	FollowMonResetMovement
	LockAll
	ApplyMovement obj_player, _04DE
	ApplyMovement 0, _04EA
	WaitMovement
	CallStd std_play_mom_music
	Wait 30, VAR_SPECIAL_RESULT
	ApplyMovement 0, _04F2
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0545_T20R0201_00000, msg_0545_T20R0201_00001
	SetFlag FLAG_GOT_BAG
	PlayFanfare SEQ_SE_PL_KIRAKIRA
	WaitFanfare
	NPCMsg msg_0545_T20R0201_00002
	SetFlag FLAG_GOT_TRAINER_CARD
	PlayFanfare SEQ_SE_PL_KIRAKIRA
	WaitFanfare
	NPCMsg msg_0545_T20R0201_00003
	SetFlag FLAG_GOT_SAVE_BUTTON
	PlayFanfare SEQ_SE_PL_KIRAKIRA
	WaitFanfare
	NPCMsg msg_0545_T20R0201_00004
	SetFlag FLAG_GOT_OPTIONS_BUTTON
	PlayFanfare SEQ_SE_PL_KIRAKIRA
	WaitFanfare
	NPCMsg 39
	SetVar VAR_SPECIAL_x8004, 502
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 434
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_100
	SetVar VAR_SPECIAL_x8004, 0
	GoTo _0177

scr_seq_T20R0201_001:
	CheckFlag FLAG_GAME_CLEAR
	GoToIf eq, _0196
	CompareVarToValue VAR_SCENE_ELMS_LAB, 4
	GoToIf ge, _01B1
	CheckFlag FLAG_GOT_STARTER
	GoToIf eq, _01E0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0545_T20R0201_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0201_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0545_T20R0201_00035
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0201_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0545_T20R0201_00036
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0201_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0545_T20R0201_00037
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0201_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0545_T20R0201_00038
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0201_006:
	FollowMonResetMovement
	LockAll
	ApplyMovement obj_player, _04DE
	ApplyMovement 0, _04EA
	WaitMovement
	CallStd std_play_mom_music
	Wait 30, VAR_SPECIAL_RESULT
	ApplyMovement 0, _04F2
	WaitMovement
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00033
	CloseMsg
	ApplyMovement 0, _0502
	WaitMovement
	CallStd std_fade_end_mom_music
	SetVar VAR_SCENE_PLAYERS_HOUSE_1F, 4
	ReleaseAll
	End

_0177:
	CompareVarToValue VAR_SPECIAL_x8004, 81
	GoToIf ge, _0225
	AddVar VAR_SPECIAL_x8004, 1
	GiveOrTakeSeal VAR_SPECIAL_x8004, 99
	GoTo _0177

_0196:
	HasItem ITEM_S_S__TICKET, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _024D
	GoTo _01B1

_01B1:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	GoToIf eq, _0260
	CheckBadge BADGE_ZEPHYR, VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf ne, _02C8
	NPCMsg msg_0545_T20R0201_00015
	GoTo _02FA

_01E0:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_POKEGEAR
	GoToIf eq, _0326
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00007
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00008
	SetFlag FLAG_GOT_POKEGEAR
	PlayFanfare SEQ_ME_ITEM
	WaitFanfare
	NPCMsg msg_0545_T20R0201_00009
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0331
	GoTo _033F

_0225:
	CloseMsg
	Wait 15, VAR_SPECIAL_RESULT
	ApplyMovement 0, _0502
	WaitMovement
	CallStd std_fade_end_mom_music
	SetVar VAR_SCENE_PLAYERS_HOUSE_1F, 1
	SetFlag FLAG_UNK_101
	SetFlag FLAG_UNK_A8A
	ReleaseAll
	End

_024D:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0545_T20R0201_00034
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0260:
	NPCMsg msg_0545_T20R0201_00020
	ShowSavingsBox 1, 1
	TouchscreenMenuHide
	MenuInit 1, 1, 0, 1, VAR_SPECIAL_RESULT
	MenuItemAdd 29, 255, 0
	MenuItemAdd 30, 255, 1
	MenuItemAdd 31, 255, 2
	MenuItemAdd 32, 255, 3
	MenuExec
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _0345
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _039B
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _03EF
	GoTo _0419

_02C8:
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00016
	SetFlag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	SetVar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0428
	NPCMsg msg_0545_T20R0201_00017
	SetFlag FLAG_SYS_MOMS_SAVINGS
	GoTo _0437

_02FA:
	SetFlag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	SetVar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0428
	NPCMsg msg_0545_T20R0201_00017
	SetFlag FLAG_SYS_MOMS_SAVINGS
	GoTo _0437

_0326:
	NPCMsg msg_0545_T20R0201_00014
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0331:
	NPCMsg msg_0545_T20R0201_00012
	NPCMsg msg_0545_T20R0201_00013
	WaitButtonOrDpad
	GoTo _043F

_033F:
	GoTo _043F

_0345:
	BankOrWalletIsFull 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _044F
	CheckBankBalance VAR_SPECIAL_RESULT, 1
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _045E
	BankTransaction 1, VAR_SPECIAL_RESULT
	HideSavingsBox
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _046D
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _0487
	ReleaseAll
	End

_039B:
	BankOrWalletIsFull 0, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0492
	HasEnoughMoneyVar VAR_SPECIAL_RESULT, 1
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _04A1
	BankTransaction 0, VAR_SPECIAL_RESULT
	HideSavingsBox
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _04B0
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _0487
	ReleaseAll
	End

_03EF:
	NPCMsg msg_0545_T20R0201_00025
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	HideSavingsBox
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _04C7
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00017
	SetFlag FLAG_SYS_MOMS_SAVINGS
	GoTo _04D6

_0419:
	HideSavingsBox
	TouchscreenMenuShow
	NPCMsg msg_0545_T20R0201_00021
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0428:
	NPCMsg msg_0545_T20R0201_00018
	ClearFlag FLAG_SYS_MOMS_SAVINGS
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
	CloseMsg
	RegisterGearNumber PHONE_CONTACT_PROF__ELM
	SetVar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	ReleaseAll
	End

_044F:
	TouchscreenMenuShow
	HideSavingsBox
	NPCMsg msg_0545_T20R0201_00028
	WaitButton
	CloseMsg
	ReleaseAll
	End

_045E:
	TouchscreenMenuShow
	HideSavingsBox
	NPCMsg msg_0545_T20R0201_00022
	WaitButton
	CloseMsg
	ReleaseAll
	End

_046D:
	CloseMsg
	Wait 8, VAR_SPECIAL_RESULT
	PlaySE SEQ_SE_GS_OKOZUKAI
	BufferPlayersName 0
	NPCMsg msg_0545_T20R0201_00024
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0487:
	NPCMsg msg_0545_T20R0201_00021
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0492:
	TouchscreenMenuShow
	HideSavingsBox
	NPCMsg msg_0545_T20R0201_00027
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04A1:
	TouchscreenMenuShow
	HideSavingsBox
	NPCMsg msg_0545_T20R0201_00026
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04B0:
	CloseMsg
	Wait 8, VAR_SPECIAL_RESULT
	PlaySE SEQ_SE_GS_OKOZUKAI
	NPCMsg msg_0545_T20R0201_00023
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04C7:
	NPCMsg msg_0545_T20R0201_00018
	ClearFlag FLAG_SYS_MOMS_SAVINGS
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04D6:
	WaitButton
	CloseMsg
	ReleaseAll
	End


_04DE:

	; 0x04DE
	step 62, 1
	step 33, 1
	EndMovement

_04EA:

	; 0x04EA
	step 32, 1
	EndMovement

_04F2:

	; 0x04F2
	step 12, 2
	step 14, 3
	step 12, 1
	EndMovement

_0502:

	; 0x0502
	step 33, 1
	step 13, 3
	step 15, 3
	step 32, 1
	EndMovement
	.balign 4, 0
