#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T22.h"
#include "msgdata\msg\msg_0556_T22.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T22_000
	scrdef scr_seq_T22_001
	scrdef scr_seq_T22_002
	scrdef scr_seq_T22_003
	scrdef scr_seq_T22_004
	scrdef scr_seq_T22_005
	scrdef scr_seq_T22_006
	scrdef scr_seq_T22_007
	scrdef scr_seq_T22_008
	scrdef scr_seq_T22_009
	scrdef scr_seq_T22_010
	scrdef scr_seq_T22_011
	scrdef scr_seq_T22_012
	scrdef scr_seq_T22_013
	scrdef scr_seq_T22_014
	scrdef scr_seq_T22_015
	scrdef scr_seq_T22_016
	scrdef_end

scr_seq_T22_000:
	SetFlag FLAG_GOT_PICK_UP_EGG_CALL_FROM_ELM
	SetVar VAR_SPECIAL_x8004, 1
	SetVar VAR_SPECIAL_x8005, 2
	SetVar VAR_SPECIAL_x8006, 1
	CallStd std_phone_call
	SetVar VAR_SCENE_VIOLET_CITY_OW, 2
	ClearFlag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	SetFlag FLAG_HIDE_ELMS_LAB_AIDE
	End

scr_seq_T22_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _01DB
	ApplyMovement 2, _0CC6
	GoTo _01F6

scr_seq_T22_002:
	End

scr_seq_T22_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	Call _021F
	Call _0240
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf eq, _02C6
	NPCMsg msg_0556_T22_00017
	CloseMsg
	Call _021F
	ReleaseAll
	End

scr_seq_T22_004:
	FollowMonResetMovement
	LockAll
	CallStd std_play_kimono_girl_music
	CallStd std_fade_end_kimono_girl_music
	HidePerson 7
	SetFlag FLAG_HIDE_VIOLET_KIMONO_GIRL
	ReleaseAll
	SetVar VAR_SCENE_VIOLET_CITY_OW, 4
	End

scr_seq_T22_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00026
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_006:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00027
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_007:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0556_T22_00012, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T22_008:
	DirectionSignpost msg_0556_T22_00009, 0, 13, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T22_009:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0556_T22_00010, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T22_010:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0556_T22_00011, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T22_011:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00005
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_012:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_013:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00007
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_014:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0556_T22_00008
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T22_015:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg 28
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0373
	GoTo _03F9

scr_seq_T22_016:
	CallStd 2072
	End

_01DB:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0404
	ApplyMovement 2, _0CEA
	GoTo _01F6

_01F6:
	WaitMovement
	NPCMsg msg_0556_T22_00001
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _041F
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _042A
	End

_021F:
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _044E
	ApplyMovement 10, _0D0E
	WaitMovement
	GoTo _046B

_0240:
	HasItem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _046D
	SetVar VAR_SPECIAL_x8000, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _04D2
	SetVar VAR_SPECIAL_x8001, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0516
	SetVar VAR_SPECIAL_x8002, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0539
	SetVar VAR_SPECIAL_x8003, 1
	SetVar VAR_SPECIAL_x8006, 1
	Return

_02C6:
	NPCMsg msg_0556_T22_00018
	TouchscreenMenuHide
	MenuInitStdGmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8000, 1
	GoToIf ne, _053B
	MenuItemAdd 205, 255, 0
	CompareVarToValue VAR_SPECIAL_x8001, 1
	GoToIf ne, _05C6
	MenuItemAdd 206, 255, 1
	CompareVarToValue VAR_SPECIAL_x8002, 1
	GoToIf ne, _063C
	MenuItemAdd 207, 255, 2
	CompareVarToValue VAR_SPECIAL_x8003, 1
	GoToIf ne, _069D
	MenuItemAdd 208, 255, 3
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_0373:
	BufferPlayersName 0
	NPCMsg 29
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
	GoToIf eq, _03F9
	CopyVar VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	GetPartyMonSpecies VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0988
	PartyMonIsMine VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0993
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 30
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _09A3
	GoTo _03F9

_03F9:
	NPCMsg 33
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0404:
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _09E9
	ApplyMovement 2, _0D52
	GoTo _01F6

_041F:
	NPCMsg msg_0556_T22_00002
	WaitButton
	CloseMsg
	ReleaseAll
	End

_042A:
	NPCMsg msg_0556_T22_00003
	CloseMsg
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _0A1A
	ApplyMovement 2, _0D76
	GoTo _0A35

_044E:
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _0A68
	ApplyMovement 10, _0D9E
	WaitMovement
	GoTo _046B

_046B:
	Return

_046D:
	HasItem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _04D2
	SetVar VAR_SPECIAL_x8001, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0516
	SetVar VAR_SPECIAL_x8002, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0539
	SetVar VAR_SPECIAL_x8003, 1
	SetVar VAR_SPECIAL_x8006, 1
	Return

_04D2:
	HasItem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0516
	SetVar VAR_SPECIAL_x8002, 1
	SetVar VAR_SPECIAL_x8006, 1
	HasItem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0539
	SetVar VAR_SPECIAL_x8003, 1
	SetVar VAR_SPECIAL_x8006, 1
	Return

_0516:
	HasItem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0539
	SetVar VAR_SPECIAL_x8003, 1
	SetVar VAR_SPECIAL_x8006, 1
	Return

_0539:
	Return

_053B:
	CompareVarToValue VAR_SPECIAL_x8001, 1
	GoToIf ne, _05C6
	MenuItemAdd 206, 255, 1
	CompareVarToValue VAR_SPECIAL_x8002, 1
	GoToIf ne, _063C
	MenuItemAdd 207, 255, 2
	CompareVarToValue VAR_SPECIAL_x8003, 1
	GoToIf ne, _069D
	MenuItemAdd 208, 255, 3
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_05C6:
	CompareVarToValue VAR_SPECIAL_x8002, 1
	GoToIf ne, _063C
	MenuItemAdd 207, 255, 2
	CompareVarToValue VAR_SPECIAL_x8003, 1
	GoToIf ne, _069D
	MenuItemAdd 208, 255, 3
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_063C:
	CompareVarToValue VAR_SPECIAL_x8003, 1
	GoToIf ne, _069D
	MenuItemAdd 208, 255, 3
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_069D:
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_06E9:
	NPCMsg msg_0556_T22_00021
	SetVar VAR_SPECIAL_x8004, 149
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 151
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 154
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 149
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 151
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 154
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	TakeItem ITEM_RED_SHARD, 1, VAR_SPECIAL_RESULT
	GoTo _0A83

_078D:
	NPCMsg msg_0556_T22_00022
	SetVar VAR_SPECIAL_x8004, 155
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 150
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 160
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 155
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 150
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 160
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	TakeItem ITEM_BLUE_SHARD, 1, VAR_SPECIAL_RESULT
	GoTo _0A83

_0831:
	NPCMsg msg_0556_T22_00023
	SetVar VAR_SPECIAL_x8004, 153
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 158
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 163
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 153
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 158
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 163
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	TakeItem ITEM_YELLOW_SHARD, 1, VAR_SPECIAL_RESULT
	GoTo _0A83

_08D5:
	NPCMsg msg_0556_T22_00024
	SetVar VAR_SPECIAL_x8004, 152
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 157
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 162
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0A74
	SetVar VAR_SPECIAL_x8004, 152
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 157
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetVar VAR_SPECIAL_x8004, 162
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	TakeItem ITEM_GREEN_SHARD, 1, VAR_SPECIAL_RESULT
	GoTo _0A83

_0979:
	NPCMsg msg_0556_T22_00020
	CloseMsg
	Call _021F
	ReleaseAll
	End

_0988:
	NPCMsg 36
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0993:
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 35
	WaitButton
	CloseMsg
	ReleaseAll
	End

_09A3:
	NPCMsg 31
	CloseMsg
	SetVar VAR_SPECIAL_RESULT, 0
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NicknameInput VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0ABD
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 32
	WaitButton
	CloseMsg
	ReleaseAll
	End

_09E9:
	ApplyMovement 2, _0DE2
	WaitMovement
	NPCMsg msg_0556_T22_00001
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _041F
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _042A
	End

_0A1A:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _0ACD
	ApplyMovement 2, _0E06
	GoTo _0A35

_0A35:
	WaitMovement
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf eq, _0AE8
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf eq, _0B14
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B40
	GoTo _0B6C

_0A68:
	ApplyMovement 10, _0E26
	WaitMovement
	Return

_0A74:
	NPCMsg msg_0556_T22_00025
	CloseMsg
	Call _021F
	ReleaseAll
	End

_0A83:
	SetVar VAR_SPECIAL_x8000, 0
	SetVar VAR_SPECIAL_x8001, 0
	SetVar VAR_SPECIAL_x8002, 0
	SetVar VAR_SPECIAL_x8003, 0
	SetVar VAR_SPECIAL_x8006, 0
	Call _0240
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0B98
	NPCMsg msg_0556_T22_00019
	GoTo _0B9E

_0ABD:
	BufferPartyMonNick 0, VAR_SPECIAL_x8005
	NPCMsg 34
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0ACD:
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0C48
	ApplyMovement 2, _0E6A
	GoTo _0A35

_0AE8:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 2, _0E8E
	ApplyMovement obj_player, _0EDA
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	GoTo _0C83

_0B14:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 2, _0E8E
	ApplyMovement obj_player, _0EFA
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	GoTo _0C83

_0B40:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 2, _0F1A
	ApplyMovement obj_player, _100A
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	GoTo _0C83

_0B6C:
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement 2, _0E8E
	ApplyMovement obj_player, _103E
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	GoTo _0C83

_0B98:
	GoTo _0979

_0B9E:
	TouchscreenMenuHide
	MenuInitStdGmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8000, 1
	GoToIf ne, _053B
	MenuItemAdd 205, 255, 0
	CompareVarToValue VAR_SPECIAL_x8001, 1
	GoToIf ne, _05C6
	MenuItemAdd 206, 255, 1
	CompareVarToValue VAR_SPECIAL_x8002, 1
	GoToIf ne, _063C
	MenuItemAdd 207, 255, 2
	CompareVarToValue VAR_SPECIAL_x8003, 1
	GoToIf ne, _069D
	MenuItemAdd 208, 255, 3
	MenuItemAdd 126, 255, 4
	MenuExec
	TouchscreenMenuShow
	CopyVar VAR_SPECIAL_x8008, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8008, 0
	GoToIf eq, _06E9
	CompareVarToValue VAR_SPECIAL_x8008, 1
	GoToIf eq, _078D
	CompareVarToValue VAR_SPECIAL_x8008, 2
	GoToIf eq, _0831
	CompareVarToValue VAR_SPECIAL_x8008, 3
	GoToIf eq, _08D5
	GoTo _0979

_0C48:
	ApplyMovement 2, _105A
	WaitMovement
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf eq, _0AE8
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf eq, _0B14
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0B40
	GoTo _0B6C

_0C83:
	NPCMsg msg_0556_T22_00004
	CloseMsg
	ApplyMovement 2, _1086
	WaitMovement
	DoorAnimationLoad 15, 8, 15, 1, 77
	DoorAnimationOpen 77
	DoorAnimationWait 77
	ApplyMovement 2, _108E
	WaitMovement
	DoorAnimationClose 77
	DoorAnimationWait 77
	DoorAnimationUnload 77
	HidePerson 2
	SetFlag FLAG_UNK_19A
	ClearFlag FLAG_HIDE_EARL_IN_SCHOOL
	ReleaseAll
	End


_0CC6:

	; 0x0CC6
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	EndMovement

_0CEA:

	; 0x0CEA
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	EndMovement

_0D0E:

	; 0x0D0E
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	EndMovement

_0D52:

	; 0x0D52
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_0D76:

	; 0x0D76
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_0D9E:

	; 0x0D9E
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	EndMovement

_0DE2:

	; 0x0DE2
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	EndMovement

_0E06:

	; 0x0E06
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_0E26:

	; 0x0E26
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	EndMovement

_0E6A:

	; 0x0E6A
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_0E8E:

	; 0x0E8E
	step 17, 8
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 33, 1
	EndMovement

_0EDA:

	; 0x0EDA
	step 63, 1
	step 90, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	EndMovement

_0EFA:

	; 0x0EFA
	step 63, 1
	step 91, 1
	step 89, 8
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	EndMovement

_0F1A:

	; 0x0F1A
	step 18, 2
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 3
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 19, 2
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 17, 5
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 19, 21
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 16, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_100A:

	; 0x100A
	step 17, 1
	step 19, 1
	step 38, 1
	step 63, 2
	step 37, 1
	step 63, 2
	step 18, 1
	step 89, 6
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	EndMovement

_103E:

	; 0x103E
	step 63, 1
	step 89, 9
	step 35, 1
	step 62, 1
	step 91, 21
	step 32, 1
	EndMovement

_105A:

	; 0x105A
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	EndMovement

_1086:

	; 0x1086
	step 12, 2
	EndMovement

_108E:

	; 0x108E
	step 12, 1
	EndMovement
	.balign 4, 0
