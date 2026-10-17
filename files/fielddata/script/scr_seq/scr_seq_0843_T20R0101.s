#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T20R0101.h"
#include "msgdata\msg\msg_0543_T20R0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T20R0101_000
	scrdef scr_seq_T20R0101_001
	scrdef scr_seq_T20R0101_002
	scrdef scr_seq_T20R0101_003
	scrdef scr_seq_T20R0101_004
	scrdef scr_seq_T20R0101_005
	scrdef scr_seq_T20R0101_006
	scrdef scr_seq_T20R0101_007
	scrdef scr_seq_T20R0101_008
	scrdef scr_seq_T20R0101_009
	scrdef scr_seq_T20R0101_010
	scrdef scr_seq_T20R0101_011
	scrdef scr_seq_T20R0101_012
	scrdef scr_seq_T20R0101_013
	scrdef scr_seq_T20R0101_014
	scrdef scr_seq_T20R0101_015
	scrdef scr_seq_T20R0101_016
	scrdef scr_seq_T20R0101_017
	scrdef scr_seq_T20R0101_018
	scrdef scr_seq_T20R0101_019
	scrdef scr_seq_T20R0101_020
	scrdef scr_seq_T20R0101_021
	scrdef_end

scr_seq_T20R0101_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_SS_TICKET_FROM_ELM
	GoToIf eq, _0435
	CheckFlag FLAG_GAME_CLEAR
	GoToIf eq, _04B7
	GetPartyCount VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _04E1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 172
	GoToIf ne, _04E1
	GetPartyMonForm2 VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0528
	CheckFlag FLAG_UNK_072
	GoToIf eq, _05CD
	CheckFlag FLAG_SYS_HATCHED_TOGEPI_EGG
	GoToIf eq, _0630
	CompareVarToValue VAR_SCENE_ELMS_LAB, 9
	GoToIf ge, _05CD
	CompareVarToValue VAR_SCENE_ELMS_LAB, 0
	GoToIf ne, _066A
	NPCMsg msg_0543_T20R0101_00005
	WaitButton
	CloseMsg
	ApplyMovement 0, _0F4A
	WaitMovement
	GoTo _0688

scr_seq_T20R0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CompareVarToValue VAR_UNK_40FC, 3
	GoToIf eq, _068C
	CompareVarToValue VAR_SCENE_ELMS_LAB, 0
	GoToIf ne, _0697
	NPCMsg msg_0543_T20R0101_00018
	GoTo _06AD

scr_seq_T20R0101_002:
	FollowMonResetMovement
	LockAll
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement obj_player, _0F52
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	ApplyMovement 1, _0F5E
	WaitMovement
	ClearFlag FLAG_HIDE_ELMS_LAB_FRIEND
	GoTo _06B5

scr_seq_T20R0101_003:
	FollowMonResetMovement
	LockAll
	GoTo _0750

scr_seq_T20R0101_004:
	End

scr_seq_T20R0101_005:
	BufferPlayersName 0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0543_T20R0101_00093
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_006:
	BufferPlayersName 0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0543_T20R0101_00094
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_007:
	BufferPlayersName 0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0543_T20R0101_00095
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_008:
	BufferPlayersName 0
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0543_T20R0101_00096
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_009:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	NPCMsg msg_0543_T20R0101_00097
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_010:
	GetFriendSprite VAR_OBJ_0
	CheckFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	GoToIf eq, _0799
	CompareVarToValue VAR_SCENE_ELMS_LAB, 0
	GoToIf ne, _07AB
	MovePersonFacing 0, 4, 0, 5, DIR_SOUTH
	GoTo _07CA

scr_seq_T20R0101_011:
	FollowMonResetMovement
	LockAll
	CheckFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	GoToIf eq, _07E0
	ApplyMovement obj_player, _0F66
	WaitMovement
	GoTo _0805

scr_seq_T20R0101_012:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_STARTER
	GoToIf eq, _080D
	ChooseStarter
	SetFlag FLAG_GOT_STARTER
	FollowMonSetPositionNextToPlayer 3, 2
	ToggleFollowingPokemonMovement 0
	FollowMonSpawnReleaseBall
	Wait 10, VAR_SPECIAL_RESULT
	ToggleFollowingPokemonMovement 1
	GetPartyMonSpecies 0, VAR_TEMP_x4001
	SetStarterChoice VAR_TEMP_x4001
	BufferPlayersName 0
	BufferMonSpeciesName 1, 0
	NPCMsg msg_0543_T20R0101_00007
	PlayFanfare SEQ_ME_POKEGET
	WaitFanfare
	TouchscreenMenuHide
	BufferMonSpeciesName 1, 0
	NPCMsg msg_0543_T20R0101_00008
	GetMenuChoice VAR_SPECIAL_RESULT
	CloseMsg
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	CallIf eq, _082E
	TouchscreenMenuShow
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GoTo _0871

scr_seq_T20R0101_013:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_STARTER
	GoToIf lt, _0885
	NPCMsg msg_0543_T20R0101_00092
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CloseMsg
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0890
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	PlayFanfare SEQ_ME_ASA
	HealParty
	LeaveOverworld
	RestoreOverworld
	WaitFanfare
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	ReleaseAll
	End

scr_seq_T20R0101_014:
	FollowMonResetMovement
	LockAll
	ApplyMovement 3, _0F6E
	WaitMovement
	ApplyMovement 3, _0F7A
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00058, msg_0543_T20R0101_00059
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	ApplyMovement obj_player, _0F86
	ApplyMovement 3, _0F8E
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	ApplyMovement 0, _0FA2
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00060, msg_0543_T20R0101_00061
	SetVar VAR_SPECIAL_x8004, 1
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0894
	CallStd std_bag_is_full
	GoTo _091A

scr_seq_T20R0101_015:
	FollowMonResetMovement
	LockAll
	ApplyMovement 2, _0FAA
	WaitMovement
	BufferPlayersName 0
	NPCMsg msg_0543_T20R0101_00056
	CloseMsg
	ApplyMovement 2, _0FB6
	WaitMovement
	SetVar VAR_UNK_40FC, 3
	ReleaseAll
	End

scr_seq_T20R0101_016:
	CheckFlag FLAG_UNK_8EC
	GoToIf eq, _099C
	CheckFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	GoToIf ne, _099C
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0543_T20R0101_00006
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_017:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	GoToIf ne, _09B6
	GoTo _09C2

scr_seq_T20R0101_018:
	LockAll
	CheckFlag FLAG_UNK_101
	GoToIf eq, _09EF
	SetVar VAR_SPECIAL_x8004, 434
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_100
	SetFlag FLAG_UNK_A8C
	NPCMsg 112
	SetVar VAR_SPECIAL_x8004, 0
	GoTo _09F8

scr_seq_T20R0101_019:
	LockAll
	CheckFlag FLAG_UNK_A8C
	GoToIf eq, _0A17
	GoTo _0A3C

scr_seq_T20R0101_020:
	LockAll
	SetVar VAR_SPECIAL_x8004, 502
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	CloseMsg
	ReleaseAll
	End

scr_seq_T20R0101_021:
	CallStd 2072
	End

_0435:
	GetPartyCount VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _04E1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4001
	CompareVarToValue VAR_TEMP_x4001, 172
	GoToIf ne, _04E1
	GetPartyMonForm2 VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0528
	CheckFlag FLAG_UNK_072
	GoToIf eq, _05CD
	CheckFlag FLAG_SYS_HATCHED_TOGEPI_EGG
	GoToIf eq, _0630
	CompareVarToValue VAR_SCENE_ELMS_LAB, 9
	GoToIf ge, _05CD
	CompareVarToValue VAR_SCENE_ELMS_LAB, 0
	GoToIf ne, _066A
	NPCMsg msg_0543_T20R0101_00005
	WaitButton
	CloseMsg
	ApplyMovement 0, _0F4A
	WaitMovement
	GoTo _0688

_04B7:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00071, msg_0543_T20R0101_00072
	SetVar VAR_SPECIAL_x8004, 456
	SetVar VAR_SPECIAL_x8005, 1
	SetFlag FLAG_GOT_SS_TICKET_FROM_ELM
	CallStd std_give_item_verbose
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00073, msg_0543_T20R0101_00074
	WaitButton
	CloseMsg
	ReleaseAll
	End

_04E1:
	CheckFlag FLAG_UNK_072
	GoToIf eq, _05CD
	CheckFlag FLAG_SYS_HATCHED_TOGEPI_EGG
	GoToIf eq, _0630
	CompareVarToValue VAR_SCENE_ELMS_LAB, 9
	GoToIf ge, _05CD
	CompareVarToValue VAR_SCENE_ELMS_LAB, 0
	GoToIf ne, _066A
	NPCMsg msg_0543_T20R0101_00005
	WaitButton
	CloseMsg
	ApplyMovement 0, _0F4A
	WaitMovement
	GoTo _0688

_0528:
	CompareVarToValue VAR_TEMP_x4006, 1
	GoToIf eq, _0A61
	CompareVarToValue VAR_UNK_412F, 2
	GoToIf ge, _0A72
	CompareVarToValue VAR_UNK_412F, 1
	GoToIf eq, _0A7D
	Call _0A96
	ApplyMovement 0, _0FC6
	WaitMovement
	NPCMsg msg_0543_T20R0101_00075
	CloseMsg
	ApplyMovement 0, _0FCE
	WaitMovement
	ApplyMovement obj_partner_poke, _0FDE
	WaitMovement
	NPCMsg msg_0543_T20R0101_00076
	CloseMsg
	ApplyMovement 0, _0FC6
	WaitMovement
	NPCMsg msg_0543_T20R0101_00077
	CloseMsg
	ApplyMovement 0, _0FEE
	WaitMovement
	NPCMsg msg_0543_T20R0101_00078
	CloseMsg
	ApplyMovement 0, _0FFA
	WaitMovement
	NPCMsg msg_0543_T20R0101_00079
	CloseMsg
	GetPersonCoords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	CompareVarToValue VAR_SPECIAL_x8006, 4
	GoToIf ne, _0ADA
	ApplyMovement 0, _100A
	GoTo _0B06

_05CD:
	CheckBadge BADGE_EARTH, VAR_TEMP_x4003
	CompareVarToValue VAR_TEMP_x4003, 1
	GoToIf eq, _0B2A
	CheckFlag FLAG_GOT_SS_TICKET_FROM_ELM
	GoToIf eq, _0B39
	CheckFlag FLAG_UNK_108
	GoToIf eq, _0B48
	CheckFlag FLAG_UNK_109
	GoToIf eq, _0B48
	CheckBadge BADGE_RISING, VAR_TEMP_x4002
	CompareVarToValue VAR_TEMP_x4002, 1
	GoToIf eq, _0B53
	CompareVarToValue VAR_TEMP_x400F, 1
	GoToIf eq, _0B5E
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00098, msg_0543_T20R0101_00099
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0630:
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4001
	UnsetPhoneCallTrigger 0
	CompareVarToValue VAR_TEMP_x4001, 175
	GoToIf eq, _0B6A
	CompareVarToValue VAR_TEMP_x4001, 176
	GoToIf eq, _0B6A
	CompareVarToValue VAR_TEMP_x4001, 468
	GoToIf eq, _0B6A
	GoTo _0BA0

_066A:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 2
	GoToIf gt, _0BB3
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00012, msg_0543_T20R0101_00013
	WaitButton
	CloseMsg
	GoTo _0688

_0688:
	ReleaseAll
	End

_068C:
	NPCMsg msg_0543_T20R0101_00057
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0697:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 2
	GoToIf ne, _0BCD
	NPCMsg msg_0543_T20R0101_00022
	GoTo _06AD

_06AD:
	WaitButton
	CloseMsg
	ReleaseAll
	End

_06B5:
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NameRival VAR_SPECIAL_RESULT
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _06B5
	ApplyMovement 1, _0F5E
	WaitMovement
	BufferRivalsName 1
	NPCMsg msg_0543_T20R0101_00027
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0BE9
	CloseMsg
	NPCMsg msg_0543_T20R0101_00028
	CloseMsg
	HidePerson 1
	ApplyMovement 0, _102E
	WaitMovement
	SetFlag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	SetFlag FLAG_HIDE_ELMS_LAB_OFFICER
	SetFlag FLAG_HIDE_ELMS_LAB_FRIEND
	SetFlag FLAG_GAVE_RIVAL_NAME_TO_OFFICER
	BufferPlayersName 0
	NPCMsg msg_0543_T20R0101_00034
	PlayFanfare SEQ_ME_ITEM
	WaitFanfare
	SetVar VAR_SPECIAL_x8004, 484
	SetVar VAR_SPECIAL_x8005, 1
	TakeItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CloseMsg
	GoTo _0BF4

_0750:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00019, msg_0543_T20R0101_00020
	SetVar VAR_SPECIAL_x8004, 17
	SetVar VAR_SPECIAL_x8005, 5
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0C2A
	SetVar VAR_SPECIAL_x8004, 17
	SetVar VAR_SPECIAL_x8005, 5
	CallStd std_obtain_item_verbose
	CloseMsg
	SetVar VAR_SCENE_ELMS_LAB, 2
	NPCMsg msg_0543_T20R0101_00021
	CloseMsg
	ReleaseAll
	End

_0799:
	MovePersonFacing 0, 4, 0, 5, DIR_EAST
	GoTo _07CA

_07AB:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 3
	GoToIf ne, _0C34
	MovePersonFacing 0, 4, 0, 5, DIR_SOUTH
	GoTo _07CA

_07CA:
	PlaceStarterBallsInElmsLab
	End

	; 0x07CE
	.byte 0x53, 0x01
	.byte 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x03, 0x00, 0x16, 0x00, 0xea, 0xff, 0xff, 0xff
_07E0:
	ApplyMovement 0, _103A
	WaitMovement
	NPCMsg msg_0543_T20R0101_00006
	CloseMsg
	ApplyMovement 0, _0F4A
	ApplyMovement obj_player, _104A
	WaitMovement
	ReleaseAll
	End

_0805:
	SetFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	ReleaseAll
	End

_080D:
	CheckFlag FLAG_GOT_TM51_FROM_FALKNER
	GoToIf eq, _0C6F
	CheckFlag FLAG_MET_PASSERBY_BOY
	GoToIf eq, _0C7A
	NPCMsg msg_0543_T20R0101_00015
	WaitButton
	CloseMsg
	ReleaseAll
	End

_082E:
	SetVar VAR_TEMP_x4000, 0
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NicknameInput 0, VAR_TEMP_x4000
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	TouchscreenMenuHide
	BufferPartyMonNick 1, 0
	NPCMsg msg_0543_T20R0101_00009
	GetMenuChoice VAR_SPECIAL_RESULT
	CloseMsg
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _082E
	Return

_0871:
	SetVar VAR_SCENE_ELMS_LAB, 1
	SetVar VAR_SCENE_NEW_BARK_TOWN_OW, 1
	ClearFlag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	ReleaseAll
	End

_0885:
	NPCMsg msg_0543_T20R0101_00014
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0890:
	ReleaseAll
	End

_0894:
	CallStd std_give_item_verbose
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00062, msg_0543_T20R0101_00063
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00064, msg_0543_T20R0101_00065
	CloseMsg
	ApplyMovement 3, _1052
	ApplyMovement obj_player, _105E
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00067, msg_0543_T20R0101_00068
	CloseMsg
	ApplyMovement 3, _106A
	WaitMovement
	HidePerson 3
	SetFlag FLAG_HIDE_ELMS_LAB_FRIEND
	PlaySE SEQ_SE_DP_KAIDAN2
	WaitSE SEQ_SE_DP_KAIDAN2
	ApplyMovement 0, _0FA2
	ApplyMovement obj_player, _107A
	WaitMovement
	NPCMsg msg_0543_T20R0101_00069
	WaitButton
	CloseMsg
	ReleaseAll
	SetVar VAR_SCENE_ELMS_LAB, 9
	SetVar VAR_UNK_4079, 3
	SetFlag FLAG_UNK_23B
	ClearFlag FLAG_HIDE_NEW_BARK_FRIEND_2
	SetVar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	SetVar VAR_UNK_407B, 2
	End

_091A:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00062, msg_0543_T20R0101_00063
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00064, msg_0543_T20R0101_00065
	CloseMsg
	ApplyMovement 3, _1052
	ApplyMovement obj_player, _105E
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00067, msg_0543_T20R0101_00068
	CloseMsg
	ApplyMovement 3, _106A
	WaitMovement
	HidePerson 3
	SetFlag FLAG_HIDE_ELMS_LAB_FRIEND
	PlaySE SEQ_SE_DP_KAIDAN2
	WaitSE SEQ_SE_DP_KAIDAN2
	ApplyMovement 0, _0FA2
	ApplyMovement obj_player, _107A
	WaitMovement
	NPCMsg msg_0543_T20R0101_00069
	WaitButton
	CloseMsg
	ReleaseAll
	SetVar VAR_SCENE_ELMS_LAB, 9
	SetVar VAR_UNK_4079, 3
	SetFlag FLAG_UNK_23B
	ClearFlag FLAG_HIDE_NEW_BARK_FRIEND_2
	SetVar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	SetVar VAR_UNK_407B, 2
	End

_099C:
	CheckFlag FLAG_UNK_8ED
	GoToIf eq, _0C85
	CheckFlag FLAG_GOT_STARTER
	GoToIf eq, _0C89
	ReleaseAll
	End

_09B6:
	BufferPlayersName 0
	NPCMsg 111
	CloseMsg
	ReleaseAll
	End

_09C2:
	NPCMsg 109
	CloseMsg
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NamePlayer 32780
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	BufferPlayersName 0
	NPCMsg 110
	CloseMsg
	ReleaseAll
	End

_09EF:
	NPCMsg 114
	CloseMsg
	ReleaseAll
	End

_09F8:
	CompareVarToValue VAR_SPECIAL_x8004, 81
	GoToIf ge, _0CBF
	AddVar VAR_SPECIAL_x8004, 1
	GiveOrTakeSeal VAR_SPECIAL_x8004, 99
	GoTo _09F8

_0A17:
	NPCMsg 121
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0CD2
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0CE3
	End

_0A3C:
	NPCMsg 122
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0CE3
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0CD2
	End

_0A61:
	NPCMsg msg_0543_T20R0101_00083
	WaitButton
	CloseMsg
	AddVar VAR_TEMP_x4006, 1
	ReleaseAll
	End

_0A72:
	NPCMsg msg_0543_T20R0101_00091
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0A7D:
	MonGetFriendship VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	CompareVarToValue VAR_SPECIAL_RESULT, 220
	GoToIf ge, _0CF4
	GoTo _04E1

_0A96:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00084, msg_0543_T20R0101_00085
	CloseMsg
	GetPlayerFacing VAR_TEMP_x4005
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GetPersonCoords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	CompareVarToValue VAR_TEMP_x4005, 0
	GoToIf ne, _0D39
	ApplyMovement obj_player, _1082
	WaitMovement
	ApplyMovement obj_partner_poke, _108E
	GoTo _0D5E

_0ADA:
	ApplyMovement 0, _109E
	WaitMovement
	NPCMsg msg_0543_T20R0101_00080
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8006, 4
	GoToIf ne, _0D6C
	ApplyMovement 0, _10CA
	WaitMovement
	GoTo _0D91

_0B06:
	WaitMovement
	NPCMsg msg_0543_T20R0101_00080
	CloseMsg
	CompareVarToValue VAR_SPECIAL_x8006, 4
	GoToIf ne, _0D6C
	ApplyMovement 0, _10CA
	WaitMovement
	GoTo _0D91

_0B2A:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00102, msg_0543_T20R0101_00103
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0B39:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00073, msg_0543_T20R0101_00074
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0B48:
	NPCMsg msg_0543_T20R0101_00070
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0B53:
	NPCMsg msg_0543_T20R0101_00069
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0B5E:
	GenderMsgBox msg_0543_T20R0101_00100, msg_0543_T20R0101_00101
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0B6A:
	ApplyMovement 0, _10D2
	WaitMovement
	NPCMsg msg_0543_T20R0101_00046
	BufferPlayersName 0
	GetGameVersion VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 7
	GoToIf ne, _0DAC
	CheckFlag FLAG_UNK_108
	GoToIf lt, _0DC1
	GenderMsgBox msg_0543_T20R0101_00104, msg_0543_T20R0101_00105
	GoTo _0DCB

_0BA0:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00053, msg_0543_T20R0101_00054
	SetVar VAR_TEMP_x400F, 1
	GoTo _05CD

_0BB3:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 5
	GoToIf gt, _0DD1
	NPCMsg msg_0543_T20R0101_00040
	WaitButton
	CloseMsg
	GoTo _0688

_0BCD:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 4
	GoToIf ne, _0DEF
	NPCMsg msg_0543_T20R0101_00041
	SetVar VAR_SCENE_ELMS_LAB, 5
	GoTo _06AD

_0BE9:
	NPCMsg msg_0543_T20R0101_00029
	CloseMsg
	GoTo _06B5

_0BF4:
	SetFlag FLAG_HIDE_ROUTE_30_BATTLERS
	ClearFlag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	SetVar VAR_SCENE_ELMS_LAB, 4
	SetVar VAR_UNK_408B, 1
	ClearFlag FLAG_HIDE_ROUTE_29_FRIEND
	ClearFlag FLAG_HIDE_ROUTE_29_MARILL
	SetVar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	SetVar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	ClearFlag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	SetVar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	ReleaseAll
	End

_0C2A:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_0C34:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 8
	GoToIf ne, _07CA
	MovePersonFacing 0, 4, 0, 5, DIR_SOUTH
	MovePersonFacing 3, 7, 0, 12, DIR_EAST
	PlaceStarterBallsInElmsLab
	End

	; 0x0C5D
	.byte 0x53, 0x01, 0x00
	.byte 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x03, 0x00, 0x16, 0x00, 0x5b, 0xfb, 0xff, 0xff
_0C6F:
	NPCMsg msg_0543_T20R0101_00017
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0C7A:
	NPCMsg msg_0543_T20R0101_00016
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0C85:
	ReleaseAll
	End

_0C89:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	BufferPlayersName 0
	NPCMsg 107
	SetFlag FLAG_GOT_POKEGEAR
	PlayFanfare SEQ_ME_ITEM
	WaitFanfare
	NPCMsg 108
	SetVar VAR_SPECIAL_RESULT, 0
	SetFlag FLAG_UNK_8ED
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _0E05
	GoTo _0E13

_0CBF:
	PlayFanfare SEQ_ME_ITEM
	NPCMsg 118
	WaitFanfare
	CloseMsg
	SetFlag FLAG_UNK_101
	ReleaseAll
	End

_0CD2:
	ClearFlag FLAG_UNK_A8C
	NPCMsg 124
	WaitABPress
	CloseMsg
	TouchscreenMenuShow
	ReleaseAll
	End

_0CE3:
	SetFlag FLAG_UNK_A8C
	NPCMsg 123
	WaitABPress
	CloseMsg
	TouchscreenMenuShow
	ReleaseAll
	End

_0CF4:
	Call _0A96
	GenderMsgBox msg_0543_T20R0101_00086, msg_0543_T20R0101_00087
	CloseMsg
	ApplyMovement 0, _0FEE
	WaitMovement
	NPCMsg msg_0543_T20R0101_00088
	CloseMsg
	ApplyMovement 0, _0FCE
	WaitMovement
	NPCMsg msg_0543_T20R0101_00089
	CloseMsg
	ApplyMovement 0, _0FFA
	WaitMovement
	NPCMsg msg_0543_T20R0101_00090
	WaitButton
	CloseMsg
	SetVar VAR_UNK_412F, 2
	ReleaseAll
	End

_0D39:
	CompareVarToValue VAR_TEMP_x4005, 3
	GoToIf ne, _0E1D
	ApplyMovement obj_player, _10DE
	WaitMovement
	ApplyMovement obj_partner_poke, _10EE
	GoTo _0D5E

_0D5E:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Return

_0D6C:
	ApplyMovement 0, _1102
	WaitMovement
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00081, msg_0543_T20R0101_00082
	WaitButton
	CloseMsg
	SetVar VAR_UNK_412F, 1
	AddVar VAR_TEMP_x4006, 1
	ReleaseAll
	End

_0D91:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00081, msg_0543_T20R0101_00082
	WaitButton
	CloseMsg
	SetVar VAR_UNK_412F, 1
	AddVar VAR_TEMP_x4006, 1
	ReleaseAll
	End

_0DAC:
	CheckFlag FLAG_UNK_109
	GoToIf lt, _0E42
	GenderMsgBox msg_0543_T20R0101_00104, msg_0543_T20R0101_00105
	GoTo _0E8B

_0DC1:
	GenderMsgBox msg_0543_T20R0101_00047, msg_0543_T20R0101_00048
	GoTo _0E8B

_0DCB:
	GoTo _0E8B

_0DD1:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 6
	GoToIf ne, _0ED0
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00042, msg_0543_T20R0101_00043
	WaitButton
	CloseMsg
	GoTo _0688

_0DEF:
	CompareVarToValue VAR_SCENE_ELMS_LAB, 6
	GoToIf ne, _0EDF
	NPCMsg msg_0543_T20R0101_00055
	GoTo _06AD

_0E05:
	NPCMsg msg_0543_T20R0101_00012
	NPCMsg msg_0543_T20R0101_00013
	WaitButtonOrDpad
	GoTo _0EEA

_0E13:
	SetFlag FLAG_UNK_8EC
	GoTo _0EEA

_0E1D:
	CompareVarToValue VAR_TEMP_x4005, 2
	GoToIf ne, _0EFA
	ApplyMovement obj_player, _1112
	WaitMovement
	ApplyMovement obj_partner_poke, _1122
	GoTo _0D5E

_0E42:
	GenderMsgBox msg_0543_T20R0101_00047, msg_0543_T20R0101_00048
	SetVar VAR_SPECIAL_x8004, 229
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0F1F
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_072
	SetFlag FLAG_GOT_EVERSTONE_FROM_ELM
	SetVar VAR_TEMP_x400F, 0
	NPCMsg msg_0543_T20R0101_00049
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00050, msg_0543_T20R0101_00051
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0E8B:
	SetVar VAR_SPECIAL_x8004, 229
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0F1F
	CallStd std_give_item_verbose
	SetFlag FLAG_UNK_072
	SetFlag FLAG_GOT_EVERSTONE_FROM_ELM
	SetVar VAR_TEMP_x400F, 0
	NPCMsg msg_0543_T20R0101_00049
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00050, msg_0543_T20R0101_00051
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0ED0:
	BufferPlayersName 0
	GenderMsgBox msg_0543_T20R0101_00044, msg_0543_T20R0101_00045
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0EDF:
	NPCMsg msg_0543_T20R0101_00055
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0EEA:
	CloseMsg
	RegisterGearNumber PHONE_CONTACT_PROF__ELM
	SetVar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	ReleaseAll
	End

_0EFA:
	CompareVarToValue VAR_SPECIAL_x8006, 4
	GoToIf ne, _0F29
	ApplyMovement obj_player, _112A
	WaitMovement
	ApplyMovement obj_partner_poke, _1122
	GoTo _0D5E

_0F1F:
	CallStd std_bag_is_full
	CloseMsg
	ReleaseAll
	End

_0F29:
	ApplyMovement obj_player, _113E
	WaitMovement
	ApplyMovement obj_partner_poke, _10EE
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	Return

	; 0x0F49
	.byte 0x00

_0F4A:

	; 0x0F4A
	step 3, 1
	EndMovement

_0F52:

	; 0x0F52
	step 76, 8
	step 2, 1
	EndMovement

_0F5E:

	; 0x0F5E
	step 35, 1
	EndMovement

_0F66:

	; 0x0F66
	step 12, 3
	EndMovement

_0F6E:

	; 0x0F6E
	step 2, 1
	step 75, 1
	EndMovement

_0F7A:

	; 0x0F7A
	step 78, 3
	step 33, 1
	EndMovement

_0F86:

	; 0x0F86
	step 12, 7
	EndMovement

_0F8E:

	; 0x0F8E
	step 12, 5
	step 15, 1
	step 12, 1
	step 34, 1
	EndMovement

_0FA2:

	; 0x0FA2
	step 33, 1
	EndMovement

_0FAA:

	; 0x0FAA
	step 14, 5
	step 13, 1
	EndMovement

_0FB6:

	; 0x0FB6
	step 12, 1
	step 15, 5
	step 33, 1
	EndMovement

_0FC6:

	; 0x0FC6
	step 33, 1
	EndMovement

_0FCE:

	; 0x0FCE
	step 13, 1
	step 15, 1
	step 33, 1
	EndMovement

_0FDE:

	; 0x0FDE
	step 49, 1
	step 65, 1
	step 48, 1
	EndMovement

_0FEE:

	; 0x0FEE
	step 75, 1
	step 63, 1
	EndMovement

_0FFA:

	; 0x0FFA
	step 12, 1
	step 14, 1
	step 33, 1
	EndMovement

_100A:

	; 0x100A
	step 12, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	EndMovement

_102E:

	; 0x102E
	step 15, 4
	step 0, 1
	EndMovement

_103A:

	; 0x103A
	step 1, 1
	step 75, 1
	step 33, 2
	EndMovement

_104A:

	; 0x104A
	step 12, 1
	EndMovement

_1052:

	; 0x1052
	step 13, 1
	step 34, 1
	EndMovement

_105E:

	; 0x105E
	step 63, 1
	step 35, 1
	EndMovement

_106A:

	; 0x106A
	step 77, 3
	step 78, 1
	step 77, 4
	EndMovement

_107A:

	; 0x107A
	step 32, 1
	EndMovement

_1082:

	; 0x1082
	step 13, 1
	step 32, 1
	EndMovement

_108E:

	; 0x108E
	step 15, 1
	step 13, 1
	step 32, 1
	EndMovement

_109E:

	; 0x109E
	step 12, 1
	step 14, 2
	step 32, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	EndMovement

_10CA:

	; 0x10CA
	step 13, 1
	EndMovement

_10D2:

	; 0x10D2
	step 75, 1
	step 62, 1
	EndMovement

_10DE:

	; 0x10DE
	step 13, 2
	step 15, 1
	step 32, 1
	EndMovement

_10EE:

	; 0x10EE
	step 13, 1
	step 15, 2
	step 12, 1
	step 32, 1
	EndMovement

_1102:

	; 0x1102
	step 13, 1
	step 15, 2
	step 33, 1
	EndMovement

_1112:

	; 0x1112
	step 13, 2
	step 14, 1
	step 32, 1
	EndMovement

_1122:

	; 0x1122
	step 32, 1
	EndMovement

_112A:

	; 0x112A
	step 15, 1
	step 13, 3
	step 14, 1
	step 32, 1
	EndMovement

_113E:

	; 0x113E
	step 14, 1
	step 13, 3
	step 15, 1
	step 32, 1
	EndMovement
	.balign 4, 0
