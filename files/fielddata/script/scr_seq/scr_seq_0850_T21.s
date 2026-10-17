#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_T21.h"
#include "msgdata\msg\msg_0550_T21.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T21_000
	scrdef scr_seq_T21_001
	scrdef scr_seq_T21_002
	scrdef scr_seq_T21_003
	scrdef scr_seq_T21_004
	scrdef scr_seq_T21_005
	scrdef scr_seq_T21_006
	scrdef scr_seq_T21_007
	scrdef scr_seq_T21_008
	scrdef scr_seq_T21_009
	scrdef scr_seq_T21_010
	scrdef scr_seq_T21_011
	scrdef_end

scr_seq_T21_000:
	End

scr_seq_T21_001:
	LockAll
	CallStd std_play_follow_music
	GiveRunningShoes
	BufferPlayersName 0
	NPCMsg msg_0550_T21_00007
	CloseMsg
	SetFlag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	BufferPlayersName 0
	NPCMsg msg_0550_T21_00010
	PlayFanfare SEQ_ME_KEYITEM
	WaitFanfare
	CloseMsg
	SetFlag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	RegisterPokegearCard 1
	SetVar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	SetVar VAR_SPECIAL_x8004, 468
	SetVar VAR_SPECIAL_x8005, 1
	CallStd std_give_item_verbose
	CloseMsg
	SetFlag FLAG_HIDE_ROUTE_30_APRICORN_MAN
	SetFlag FLAG_GOT_APRICORN_BOX
	SetVar VAR_SCENE_ROUTE_30_OW, 1
	HidePerson 0
	CallStd std_fade_end_mom_music
	ReleaseAll
	End

scr_seq_T21_002:
	FollowMonResetMovement
	LockAll
	ApplyMovement obj_player, _0724
	WaitMovement
	CallStd std_play_follow_music
	ClearFlag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	ShowPerson 0
	Lock 0
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	MovePersonFacing 0, VAR_TEMP_x4000, 1, 394, DIR_NORTH
	CompareVarToValue VAR_TEMP_x4000, 549
	GoToIf ne, _0271
	ApplyMovement 0, _0730
	GoTo _028C

scr_seq_T21_003:
	FollowMonResetMovement
	LockAll
	FadeOutBGM 0, 3
	ApplyMovement obj_player, _0740
	WaitMovement
	CallStd std_play_rival_intro_music
	GetPlayerCoords VAR_TEMP_x4000, VAR_TEMP_x4001
	MovePersonFacing 4, 583, 0, VAR_TEMP_x4001, DIR_WEST
	ApplyMovement 4, _0748
	WaitMovement
	NPCMsg msg_0550_T21_00013
	CloseMsg
	GetStarterChoice VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 152
	GoToIf ne, _02A9
	TrainerBattle TRAINER_PASSERBY_BOY_2, 0, 1, 0
	GoTo _02C4

scr_seq_T21_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN
	GoToIf eq, _0300
	NPCMsg msg_0550_T21_00020
	SetVar VAR_SPECIAL_x8004, 243
	SetVar VAR_SPECIAL_x8005, 1
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _030B
	CallStd std_give_item_verbose
	SetFlag FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN
	NPCMsg msg_0550_T21_00021
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21_005:
	SetSignpostMap 2, 0
	SetSignpostAction 3
	WaitSignpostAction
	TrainerTips msg_0550_T21_00024, VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T21_006:
	DirectionSignpost msg_0550_T21_00023, 0, 12, VAR_SPECIAL_RESULT
	SetSignpostAction 3
	WaitSignpostAction
	WaitSignpost VAR_SPECIAL_RESULT
	CallStd std_signpost
	End

scr_seq_T21_007:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0550_T21_00019
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21_008:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0550_T21_00017
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_T21_009:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 0
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _0316
	PhotoAlbumIsFull VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _032A
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 1
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 55
	GetPlayerFacing VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf ne, _033E
	ApplyMovement obj_player, _0750
	ApplyMovement 5, _0768
	GoTo _0359

scr_seq_T21_010:
	CheckFlag FLAG_UNK_189
	GoToIf lt, _03BA
	ClearFlag FLAG_UNK_189
	End

scr_seq_T21_011:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	CheckFlag FLAG_GAVE_RIVAL_NAME_TO_OFFICER
	GoToIf eq, _0407
	GoTo _03FE

_0271:
	CompareVarToValue VAR_TEMP_x4000, 550
	GoToIf ne, _0434
	ApplyMovement 0, _0730
	GoTo _028C

_028C:
	WaitMovement
	CompareVarToValue VAR_TEMP_x4000, 549
	GoToIf ne, _0459
	ApplyMovement obj_player, _0774
	GoTo _0474

_02A9:
	CompareVarToValue VAR_SPECIAL_RESULT, 155
	GoToIf ne, _04B4
	TrainerBattle TRAINER_PASSERBY_BOY_3, 0, 1, 0
	GoTo _02C4

_02C4:
	CheckBattleWon VAR_SPECIAL_RESULT
	CallStd std_play_rival_outro_music
	NPCMsg msg_0550_T21_00014
	CloseMsg
	PlaySE SEQ_SE_DP_WALL_HIT2
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	GetPlayerCoords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _04F8
	ApplyMovement obj_player, _077C
	GoTo _0527

_0300:
	NPCMsg msg_0550_T21_00021
	WaitButton
	CloseMsg
	ReleaseAll
	End

_030B:
	NPCMsg msg_0550_T21_00022
	WaitButton
	CloseMsg
	ReleaseAll
	End

_0316:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 5
	WaitButton
	CloseMsg
	ReleaseAll
	End

_032A:
	GetStdMsgNaix 2, VAR_SPECIAL_RESULT
	MsgBoxExtern VAR_SPECIAL_RESULT, 3
	WaitButton
	CloseMsg
	ReleaseAll
	End

_033E:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _054E
	ApplyMovement obj_player, _0790
	GoTo _0359

_0359:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0571
	ApplyMovement obj_partner_poke, _079C
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 1
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

_03BA:
	CheckBadge BADGE_PLAIN, VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 0
	GoToIf eq, _05AB
	GetWeekday VAR_TEMP_x4000
	CompareVarToValue VAR_TEMP_x4000, 1
	GoToIf eq, _05B1
	CompareVarToValue VAR_TEMP_x4000, 3
	GoToIf eq, _05B1
	CompareVarToValue VAR_TEMP_x4000, 5
	GoToIf eq, _05B1
	SetFlag FLAG_HIDE_CAMERON
	End

_03FE:
	NPCMsg 26
	CloseMsg
	ReleaseAll
	End

_0407:
	NPCMsg 25
	CloseMsg
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	NameRival VAR_SPECIAL_RESULT
	FadeScreen 6, 1, 1, RGB_BLACK
	WaitFade
	BufferRivalsName 1
	NPCMsg 27
	CloseMsg
	ReleaseAll
	End

_0434:
	ApplyMovement 0, _07AC
	WaitMovement
	CompareVarToValue VAR_TEMP_x4000, 549
	GoToIf ne, _0459
	ApplyMovement obj_player, _0774
	GoTo _0474

_0459:
	CompareVarToValue VAR_TEMP_x4000, 550
	GoToIf ne, _05B7
	ApplyMovement obj_player, _0774
	GoTo _0474

_0474:
	WaitMovement
	NPCMsg msg_0550_T21_00009
	BufferPlayersName 0
	NPCMsg msg_0550_T21_00010
	PlayFanfare SEQ_ME_KEYITEM
	WaitFanfare
	NPCMsg msg_0550_T21_00011
	NPCMsg msg_0550_T21_00012
	CloseMsg
	ApplyMovement 0, _07BC
	WaitMovement
	CallStd std_fade_end_mom_music
	Release 0
	HidePerson 0
	SetFlag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	RegisterPokegearCard 1
	ReleaseAll
	SetVar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	End

_04B4:
	TrainerBattle TRAINER_PASSERBY_BOY, 0, 1, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CallStd std_play_rival_outro_music
	NPCMsg msg_0550_T21_00014
	CloseMsg
	PlaySE SEQ_SE_DP_WALL_HIT2
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	GetPlayerCoords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _04F8
	ApplyMovement obj_player, _077C
	GoTo _0527

_04F8:
	ApplyMovement obj_player, _07C4
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _05FF
	ApplyMovement 4, _07D8
	GoTo _0639

_0527:
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	CompareVarToValue VAR_SPECIAL_x8005, 398
	GoToIf ne, _05FF
	ApplyMovement 4, _07D8
	GoTo _0639

_054E:
	CompareVarToValue VAR_SPECIAL_RESULT, 3
	GoToIf ne, _066B
	ApplyMovement obj_player, _080C
	ApplyMovement 5, _0768
	GoTo _0359

_0571:
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 1
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

_05AB:
	SetFlag FLAG_HIDE_CAMERON
	End

_05B1:
	ClearFlag FLAG_HIDE_CAMERON
	End

_05B7:
	ApplyMovement obj_player, _0828
	WaitMovement
	NPCMsg msg_0550_T21_00009
	BufferPlayersName 0
	NPCMsg msg_0550_T21_00010
	PlayFanfare SEQ_ME_KEYITEM
	WaitFanfare
	NPCMsg msg_0550_T21_00011
	NPCMsg msg_0550_T21_00012
	CloseMsg
	ApplyMovement 0, _07BC
	WaitMovement
	CallStd std_fade_end_mom_music
	Release 0
	HidePerson 0
	SetFlag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	RegisterPokegearCard 1
	ReleaseAll
	SetVar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	End

_05FF:
	ApplyMovement 4, _0830
	WaitMovement
	NPCMsg msg_0550_T21_00015
	CloseMsg
	GetPersonCoords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	CompareVarToValue VAR_SPECIAL_x8005, 401
	GoToIf ne, _06DC
	ApplyMovement 4, _0864
	ApplyMovement obj_player, _0874
	GoTo _0708

_0639:
	WaitMovement
	NPCMsg msg_0550_T21_00015
	CloseMsg
	GetPersonCoords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	CompareVarToValue VAR_SPECIAL_x8005, 401
	GoToIf ne, _06DC
	ApplyMovement 4, _0864
	ApplyMovement obj_player, _0874
	GoTo _0708

_066B:
	ApplyMovement obj_player, _0880
	ApplyMovement 5, _0768
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	FollowMonIsActive VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0571
	ApplyMovement obj_partner_poke, _079C
	WaitMovement
	SetFlag FLAG_UNK_189
	FadeScreen 6, 1, 0, RGB_BLACK
	WaitFade
	CameronPhoto 1
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

_06DC:
	ApplyMovement 4, _0894
	ApplyMovement obj_player, _0874
	WaitMovement
	HidePerson 4
	SetFlag FLAG_HIDE_CHERRYGROVE_RIVAL
	CallStd std_fade_end_rival_outro_music
	ReleaseAll
	SetVar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	SetFlag FLAG_MET_PASSERBY_BOY
	End

_0708:
	WaitMovement
	HidePerson 4
	SetFlag FLAG_HIDE_CHERRYGROVE_RIVAL
	CallStd std_fade_end_rival_outro_music
	ReleaseAll
	SetVar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	SetFlag FLAG_MET_PASSERBY_BOY
	End


_0724:

	; 0x0724
	step 75, 1
	step 37, 1
	EndMovement

_0730:

	; 0x0730
	step 18, 1
	step 16, 9
	step 35, 1
	EndMovement

_0740:

	; 0x0740
	step 75, 1
	EndMovement

_0748:

	; 0x0748
	step 14, 7
	EndMovement

_0750:

	; 0x0750
	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_0768:

	; 0x0768
	step 63, 1
	step 32, 1
	EndMovement

_0774:

	; 0x0774
	step 34, 1
	EndMovement

_077C:

	; 0x077C
	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	EndMovement

_0790:

	; 0x0790
	step 12, 3
	step 33, 1
	EndMovement

_079C:

	; 0x079C
	step 15, 1
	step 12, 1
	step 1, 1
	EndMovement

_07AC:

	; 0x07AC
	step 19, 1
	step 16, 9
	step 34, 1
	EndMovement

_07BC:

	; 0x07BC
	step 17, 9
	EndMovement

_07C4:

	; 0x07C4
	step 1, 1
	step 71, 1
	step 16, 1
	step 72, 1
	EndMovement

_07D8:

	; 0x07D8
	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 33, 1
	EndMovement

_080C:

	; 0x080C
	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_0828:

	; 0x0828
	step 35, 1
	EndMovement

_0830:

	; 0x0830
	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 32, 1
	EndMovement

_0864:

	; 0x0864
	step 14, 5
	step 12, 1
	step 14, 6
	EndMovement

_0874:

	; 0x0874
	step 63, 2
	step 34, 1
	EndMovement

_0880:

	; 0x0880
	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	EndMovement

_0894:

	; 0x0894
	step 14, 11
	EndMovement
	.balign 4, 0
