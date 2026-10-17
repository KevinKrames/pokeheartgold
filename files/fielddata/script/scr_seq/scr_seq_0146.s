#include "constants/scrcmd.h"
#include "fielddata\script\scr_seq\event_0146.h"
#include "msgdata\msg\msg_0211.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_0146_000
	scrdef scr_seq_0146_001
	scrdef scr_seq_0146_002
	scrdef scr_seq_0146_003
	scrdef scr_seq_0146_004
	scrdef scr_seq_0146_005
	scrdef scr_seq_0146_006
	scrdef scr_seq_0146_007
	scrdef scr_seq_0146_008
	scrdef scr_seq_0146_009
	scrdef scr_seq_0146_010
	scrdef scr_seq_0146_011
	scrdef scr_seq_0146_012
	scrdef scr_seq_0146_013
	scrdef scr_seq_0146_014
	scrdef scr_seq_0146_015
	scrdef scr_seq_0146_016
	scrdef scr_seq_0146_017
	scrdef scr_seq_0146_018
	scrdef_end

scr_seq_0146_000:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_CUT
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _03F4
	CheckBadge BADGE_HIVE, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _03F4
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0401
	CloseMsg
	GoTo _0432

scr_seq_0146_001:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_ROCK_SMASH
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _0436
	CheckBadge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0436
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0443
	CloseMsg
	GoTo _0432

scr_seq_0146_002:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	StrengthFlagAction 2, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _046E
	Call _04AF
	GoTo _0432

scr_seq_0146_003:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_ROCK_CLIMB
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _04B8
	CheckBadge BADGE_EARTH, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _04B8
	CheckEscortMode VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _04C5
	NPCMsg msg_0211_00020
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _04D2
	CloseMsg
	GoTo _04F2

scr_seq_0146_004:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	CheckEscortMode VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf eq, _04F6
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0503
	CloseMsg
	GoTo _04F2

scr_seq_0146_005:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_WATERFALL
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _0519
	CheckBadge BADGE_RISING, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0519
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0526
	CloseMsg
	GoTo _04F2

scr_seq_0146_006:
	End

scr_seq_0146_007:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00001
	CloseMsg
	GetFollowPokePartyIndex VAR_SPECIAL_x8004
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _053C
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _0559

scr_seq_0146_008:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00005
	CloseMsg
	GetFollowPokePartyIndex VAR_SPECIAL_x8004
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _057A
	SetVar VAR_SPECIAL_x8007, 0
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _059D

scr_seq_0146_009:
	FollowMonResetMovement
	LockAll
	StrengthFlagAction 2, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _05CA
	Call _04AF
	GoTo _05FA

scr_seq_0146_010:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00021
	CloseMsg
	RockClimb VAR_SPECIAL_x8000
	ReleaseAll
	End

scr_seq_0146_011:
	FollowMonResetMovement
	LockAll
	Release obj_player
	Surf VAR_SPECIAL_x8000
	Lock obj_player
	ReleaseAll
	End

scr_seq_0146_012:
	FollowMonResetMovement
	LockAll
	Release obj_player
	Waterfall VAR_SPECIAL_x8000
	Lock obj_player
	ReleaseAll
	End

scr_seq_0146_013:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00028
	CloseMsg
	GetFollowPokePartyIndex VAR_SPECIAL_x8005
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _05FE
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0615

scr_seq_0146_014:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	FacePlayer
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_HEADBUTT
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _0626
	NPCMsg msg_0211_00032
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0633
	CloseMsg
	GoTo _0432

scr_seq_0146_015:
	PlaySE SEQ_SE_GS_IWAOTOSHI01
	Wait 12, VAR_SPECIAL_RESULT
	PlaySE SEQ_SE_GS_IWAOTOSHI02
	ScreenShake 0, 4, 2, 8
	ScreenShake 0, 2, 1, 8
	WaitSE SEQ_SE_GS_IWAOTOSHI02
	NPCMsg msg_0211_00013
	WaitButton
	CloseMsg
	End

scr_seq_0146_016:
	PlaySE SEQ_SE_DP_SELECT
	LockAll
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_WHIRLPOOL
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _0672
	CheckBadge BADGE_GLACIER, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0672
	NPCMsg msg_0211_00029
	TouchscreenMenuHide
	GetMenuChoice VAR_SPECIAL_RESULT
	TouchscreenMenuShow
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _067F
	CloseMsg
	GoTo _04F2

scr_seq_0146_017:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00030
	CloseMsg
	Release obj_player
	Whirlpool VAR_SPECIAL_x8000
	Lock obj_player
	ReleaseAll
	End

scr_seq_0146_018:
	FollowMonResetMovement
	LockAll
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00033
	CloseMsg
	GetFollowPokePartyIndex VAR_SPECIAL_x8004
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _069F
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _06BC

_03F4:
	NPCMsg msg_0211_00002
	WaitButton
	CloseMsg
	GoTo _0432

_0401:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_CUT
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	GetFollowPokePartyIndex VAR_SPECIAL_x8005
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _06DD
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _06FA

_0432:
	ReleaseAll
	End

_0436:
	NPCMsg msg_0211_00004
	WaitButton
	CloseMsg
	GoTo _0432

_0443:
	GetFollowPokePartyIndex VAR_SPECIAL_x8005
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _0717
	SetVar VAR_SPECIAL_x8007, 0
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _073A

_046E:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_STRENGTH
	CompareVarToValue VAR_SPECIAL_RESULT, 6
	GoToIf eq, _0761
	CheckBadge BADGE_PLAIN, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _0761
	SetVar VAR_SPECIAL_RESULT, 0
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _076E
	CloseMsg
	GoTo _0432

_04AF:
	NPCMsg msg_0211_00010
	WaitButton
	CloseMsg
	Return

_04B8:
	NPCMsg msg_0211_00022
	WaitButton
	CloseMsg
	GoTo _04F2

_04C5:
	NPCMsg msg_0211_00023
	WaitButton
	CloseMsg
	GoTo _04F2

_04D2:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_ROCK_CLIMB
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	BufferPartyMonNick 0, VAR_SPECIAL_RESULT
	NPCMsg msg_0211_00021
	CloseMsg
	RockClimb VAR_SPECIAL_x8004
	GoTo _04F2

_04F2:
	ReleaseAll
	End

_04F6:
	NPCMsg msg_0211_00016
	WaitButton
	CloseMsg
	GoTo _04F2

_0503:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_SURF
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	Surf VAR_SPECIAL_x8004
	GoTo _04F2

_0519:
	NPCMsg msg_0211_00026
	WaitButton
	CloseMsg
	GoTo _04F2

_0526:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_WATERFALL
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	Waterfall VAR_SPECIAL_x8004
	GoTo _04F2

_053C:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _07A0
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _0559

_0559:
	Wait 7, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07BD
	ReleaseAll
	End

_057A:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _07D4
	SetVar VAR_SPECIAL_x8007, 0
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _059D

_059D:
	Wait 10, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07F7
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_05CA:
	StrengthFlagAction 1
	BufferPartyMonNick 0, VAR_SPECIAL_x8000
	NPCMsg msg_0211_00011
	CloseMsg
	GetFollowPokePartyIndex VAR_SPECIAL_x8004
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _085B
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0872

_05FA:
	ReleaseAll
	End

_05FE:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0878
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0615

_0615:
	FlashAction 1
	FlashEffect
	Wait 42, VAR_SPECIAL_RESULT
	GoTo _05FA

_0626:
	NPCMsg msg_0211_00034
	WaitButton
	CloseMsg
	GoTo _0432

_0633:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_HEADBUTT
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	GetFollowPokePartyIndex VAR_SPECIAL_x8005
	BufferPartyMonNick 0, VAR_SPECIAL_RESULT
	NPCMsg msg_0211_00033
	CloseMsg
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _088F
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _08AC

_0672:
	NPCMsg msg_0211_00031
	WaitButton
	CloseMsg
	GoTo _04F2

_067F:
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_WHIRLPOOL
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	BufferPartyMonNick 0, VAR_SPECIAL_RESULT
	NPCMsg msg_0211_00030
	CloseMsg
	Whirlpool VAR_SPECIAL_x8004
	GoTo _04F2

_069F:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _08CD
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _06BC

_06BC:
	Wait 7, VAR_SPECIAL_RESULT
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _08EA
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_06DD:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0905
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _06FA

_06FA:
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0922
	GoTo _0432

_0717:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _093B
	SetVar VAR_SPECIAL_x8007, 0
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _073A

_073A:
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _095E
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_0761:
	NPCMsg msg_0211_00009
	WaitButton
	CloseMsg
	GoTo _0432

_076E:
	StrengthFlagAction 1
	GetPartySlotWithMove VAR_SPECIAL_RESULT, MOVE_STRENGTH
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	GetFollowPokePartyIndex VAR_SPECIAL_x8005
	GetPlayerState VAR_SPECIAL_RESULT
	FollowMonIsInactiveOrVisible VAR_SPECIAL_x8006
	CompareVarToValue VAR_SPECIAL_RESULT, 2
	GoToIf ne, _0981
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	GoTo _0998

_07A0:
	CompareVarToVar VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	GoToIf eq, _099E
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _0559

_07BD:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07BD
	ReleaseAll
	End

_07D4:
	CompareVarToVar VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	GoToIf eq, _09BB
	SetVar VAR_SPECIAL_x8007, 0
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _059D

_07F7:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07F7
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_081A:
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _09D8
	CopyVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8006
	SetVar VAR_SPECIAL_x8005, 1
	BufferItemNameIndef 1, VAR_SPECIAL_x8004
	Capitalize 1
	NPCMsg msg_0211_00006
	HasSpaceForItem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 0
	GoToIf eq, _09DA
	CallStd std_obtain_item_verbose
	CloseMsg
	End

_085B:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _09E2
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0872

_0872:
	GoTo _05FA

_0878:
	CompareVarToVar VAR_SPECIAL_x8000, VAR_SPECIAL_x8005
	GoToIf eq, _09F9
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0615

_088F:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0A10
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _08AC

_08AC:
	Wait 7, VAR_SPECIAL_RESULT
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0A2D
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_08CD:
	CompareVarToVar VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	GoToIf eq, _0A48
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _06BC

_08EA:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _08EA
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_0905:
	CompareVarToVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	GoToIf eq, _0A65
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _06FA

_0922:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0922
	GoTo _0432

_093B:
	CompareVarToVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	GoToIf eq, _0A82
	SetVar VAR_SPECIAL_x8007, 0
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _073A

_095E:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _095E
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_0981:
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0A9F
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	GoTo _0998

_0998:
	GoTo _0432

_099E:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0AB6
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _0559

_09BB:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0AF9
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _059D

_09D8:
	End

_09DA:
	CallStd std_bag_is_full
	CloseMsg
	End

_09E2:
	CompareVarToVar VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	GoToIf eq, _0B4E
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0872

_09F9:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0B65
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0615

_0A10:
	CompareVarToVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	GoToIf eq, _0B96
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _08AC

_0A2D:
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0A2D
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_0A48:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0BB3
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _06BC

_0A65:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0BEC
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 0, VAR_SPECIAL_x8005
	GoTo _06FA

_0A82:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0C31
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 1, VAR_SPECIAL_x8005
	GoTo _073A

_0A9F:
	CompareVarToVar VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	GoToIf eq, _0C86
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	GoTo _0998

_0AB6:
	SwapPlayerAndFollowMonPositions 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0C9D
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 3, VAR_SPECIAL_x8005
	Wait 7, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07BD
	ReleaseAll
	End

_0AF9:
	SwapPlayerAndFollowMonPositions 1
	SetVar VAR_SPECIAL_x8007, 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0CBE
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 2, VAR_SPECIAL_x8005
	Wait 10, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _07F7
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_0B4E:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0CDF
	PlayFieldMoveCutIn VAR_SPECIAL_x8000
	GoTo _0872

_0B65:
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0D06
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	FollowMonFlash 16, 2
	FollowMonFlash 16, 2
	FlashAction 1
	FlashEffect
	Wait 42, VAR_SPECIAL_RESULT
	GoTo _05FA

_0B96:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0D24
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	GoTo _08AC

_0BB3:
	FollowMonIsNextToPlayer VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0D5D
	SwapPlayerAndFollowMonPositions 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0D8C
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 5, VAR_SPECIAL_x8005
	GoTo _06BC

_0BEC:
	SwapPlayerAndFollowMonPositions 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0C9D
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 3, VAR_SPECIAL_x8005
	Wait 7, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0922
	GoTo _0432

_0C31:
	SetVar VAR_SPECIAL_x8007, 1
	SwapPlayerAndFollowMonPositions 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0CBE
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 2, VAR_SPECIAL_x8005
	Wait 10, VAR_SPECIAL_RESULT
	HidePerson VAR_SPECIAL_LAST_TALKED
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _095E
	ReleaseAll
	RockSmashItemCheck VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	GoTo _081A

_0C86:
	CompareVarToValue VAR_SPECIAL_x8006, 1
	GoToIf ne, _0DAD
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	GoTo _0998

_0C9D:
	FollowMonAddMood 20
	FirstAliveMonHasType 12, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0DD4
	FollowMonJumpOnSpot 2
	FollowMonAddMood 1
	GoTo _0DD9

_0CBE:
	FollowMonAddMood 20
	FirstAliveMonHasType 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0DDB
	FollowMonJumpOnSpot 2
	FollowMonAddMood 1
	GoTo _0DE0

_0CDF:
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0DE2
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	FollowMonGrowAndShrink
	NPCMsg msg_0211_00012
	WaitButton
	CloseMsg
	GoTo _05FA

_0D06:
	FirstAliveMonHasType 14, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0E00
	FollowMonJumpOnSpot 2
	FollowMonAddMood 1
	GoTo _0E05

_0D24:
	FollowMonIsNextToPlayer VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0E07
	SwapPlayerAndFollowMonPositions 1
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0D8C
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	StartFieldMoveEffect 5, VAR_SPECIAL_x8005
	GoTo _08AC

_0D5D:
	FollowMonRecall
	FollowMonReleaseNextToPlayer
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	Wait 7, VAR_SPECIAL_RESULT
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _08EA
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_0D8C:
	FollowMonAddMood 20
	FirstAliveMonHasType 0, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0E36
	FollowMonJumpOnSpot 2
	FollowMonAddMood 1
	GoTo _0E3B

_0DAD:
	GetPartyLeadAlive VAR_TEMP_x4000
	GetPartyMonSpecies VAR_TEMP_x4000, VAR_TEMP_x4000
	Call _0DE2
	PlayCry VAR_TEMP_x4000, 0
	WaitCry
	FollowMonGrowAndShrink
	NPCMsg msg_0211_00012
	WaitButton
	CloseMsg
	GoTo _0432

_0DD4:
	FollowMonJumpOnSpot 1
	Return

_0DD9:
	Return

_0DDB:
	FollowMonJumpOnSpot 1
	Return

_0DE0:
	Return

_0DE2:
	FirstAliveMonHasType 0, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_RESULT, 1
	GoToIf ne, _0E3D
	FollowMonJumpOnSpot 2
	FollowMonAddMood 1
	GoTo _0E42

_0E00:
	FollowMonJumpOnSpot 1
	Return

_0E05:
	Return

_0E07:
	FollowMonRecall
	FollowMonReleaseNextToPlayer
	PlayFieldMoveCutIn VAR_SPECIAL_x8004
	StartFieldMoveEffect 4, VAR_SPECIAL_x8005
	Wait 7, VAR_SPECIAL_RESULT
	Wait 1, VAR_SPECIAL_RESULT
	CompareVarToValue VAR_SPECIAL_x8005, 0
	GoToIf eq, _0A2D
	ReleaseAll
	TryHeadbuttEncounter VAR_SPECIAL_RESULT
	End

_0E36:
	FollowMonJumpOnSpot 1
	Return

_0E3B:
	Return

_0E3D:
	FollowMonJumpOnSpot 1
	Return

_0E42:
	Return
	.balign 4, 0
