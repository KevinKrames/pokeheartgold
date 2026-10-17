#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_D18R0101.h"
#include "msgdata\msg\msg_0060_D18R0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_D18R0101_000
	scrdef scr_seq_D18R0101_001
	scrdef scr_seq_D18R0101_002
	scrdef scr_seq_D18R0101_003
	scrdef_end

scr_seq_D18R0101_000:
	FollowMonResetMovement
	LockAll
	SetVar VAR_UNK_40A2, 1
	ReleaseAll
	End

scr_seq_D18R0101_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0060_D18R0101_00003
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D18R0101_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	NPCMsg msg_0060_D18R0101_00004
	WaitButton
	CloseMsg
	ReleaseAll
	End

scr_seq_D18R0101_003:
	FollowMonResetMovement
	LockAll
	CallStd std_play_rival_intro_music
	ApplyMovement 0, _016A
	WaitMovement
	BufferRivalsName 0
	NPCMsg msg_0060_D18R0101_00000
	CloseMsg
	GetStarterChoice VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 152
	GoToIf ne, _007F
	TrainerBattle TRAINER_RIVAL_SILVER_8, 0, 0, 0
	GoTo _009A

_007F:
	CompareVarToValue VAR_SPECIAL_RESULT, 155
	GoToIf ne, _00F3
	TrainerBattle TRAINER_RIVAL_SILVER_11, 0, 0, 0
	GoTo _009A

_009A:
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0154
	CallStd std_play_rival_outro_music
	BufferRivalsName 0
	NPCMsg msg_0060_D18R0101_00001
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	ApplyMovement obj_player, _0182
	ApplyMovement 0, _0192
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	HidePerson 0
	CallStd std_fade_end_rival_outro_music
	SetFlag FLAG_HIDE_BURNED_TOWER_1F_RIVAL
	SetVar VAR_UNK_40A6, 1
	ReleaseAll
	End

_00F3:
	TrainerBattle TRAINER_RIVAL_SILVER_4, 0, 0, 0
	CheckBattleWon VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0154
	CallStd std_play_rival_outro_music
	BufferRivalsName 0
	NPCMsg msg_0060_D18R0101_00001
	CloseMsg
	ToggleFollowingPokemonMovement 0
	WaitFollowingPokemonMovement
	FollowingPokemonMovement 56
	ApplyMovement obj_player, _0182
	ApplyMovement 0, _0192
	WaitMovement
	WaitFollowingPokemonMovement
	ToggleFollowingPokemonMovement 1
	FollowingPokemonMovement 48
	HidePerson 0
	CallStd std_fade_end_rival_outro_music
	SetFlag FLAG_HIDE_BURNED_TOWER_1F_RIVAL
	SetVar VAR_UNK_40A6, 1
	ReleaseAll
	End

_0154:
	WhiteOut
	ReleaseAll
	End

	; 0x015A
	.byte 0x02, 0x00, 0x01, 0x00, 0x4b, 0x00
	.byte 0x01, 0x00, 0x0e, 0x00, 0x03, 0x00, 0xfe, 0x00, 0x00, 0x00

_016A:

	; 0x016A
	step 1, 1
	step 75, 1
	step 13, 4
	step 14, 1
	step 1, 1
	EndMovement

_0182:

	; 0x0182
	step 13, 2
	step 15, 1
	step 2, 1
	EndMovement

_0192:

	; 0x0192
	step 13, 3
	step 14, 1
	step 13, 1
	step 14, 3
	step 13, 1
	step 14, 4
	step 13, 3
	EndMovement
	.balign 4, 0
