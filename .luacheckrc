std = "lua51"
max_line_length = false
exclude_files = {
	"**/Libs/**/*.lua",
	".luacheckrc",
    "**/Deprecated/**/*.lua",
    "**/spec/**/*.lua",
}
ignore = {
	"11./SLASH_.*", -- Setting an undefined (Slash handler) global variable
	"11./BINDING_.*", -- Setting an undefined (Keybinding header) global variable
	"211", -- Unused local variable
	"211/L", -- Unused local variable "L"
	"211/CL", -- Unused local variable "CL"
	"212", -- Unused argument
	"43.", -- Shadowing an upvalue, an upvalue argument, an upvalue loop variable.
--    "431", -- shadowing upvalue
	"542", -- An empty if branch
}
globals = {
	-- Saved Variables
	"GSEStorage",
    "GSEOptions",
    "GSELibrary",

	-- GSE
	"GSE",
    "GSEGUI",
    "GNOME",

    -- Libraries
    "LibStub",
    "ElvUI",

	-- Lua
	"bit.band",
	"string.split",
	"table.wipe",
	"time",

	-- Utility functions
	"geterrorhandler",
	"fastrandom",
	"format",
	"strjoin",
	"strsplit",
	"tContains",
	"tDeleteItem",
	"tIndexOf",
	"tinsert",
	"tostringall",
	"tremove",

	-- WoW
	"ALL",
	"ALWAYS",
	"BNET_CLIENT_WOW",
	"BOSS",
	"BOSSES_KILLED",
	"CANCEL",
	"CHALLENGE_MODE",
	"CLOSE",
	"COMBATLOG_OBJECT_AFFILIATION_MINE",
	"COMBATLOG_OBJECT_REACTION_HOSTILE",
	"COMBATLOG_OBJECT_TYPE_NPC",
	"COMBATLOG_OBJECT_TYPE_PET",
	"COMBATLOG_OBJECT_TYPE_PLAYER",
	"COMBATLOGDISABLED",
	"COMBATLOGENABLED",
	"DEFAULT",
	"DEFAULT_CHAT_FRAME",
	"DISABLE",
	"ENABLE",
	"EXPANSION_NAME0",
	"EXPANSION_NAME1",
	"EXPANSION_NAME2",
	"EXPANSION_NAME3",
	"EXPANSION_NAME4",
	"EXPANSION_NAME5",
	"EXPANSION_NAME6",
	"EXPANSION_NAME7",
	"EXPANSION_NAME8",
	"FACTION_ALLIANCE",
	"FACTION_HORDE",
	"GAMEOPTIONS_MENU",
	"GUILD",
	"GUILD_INTEREST_RP",
	"HIDE",
	"LARGE",
	"LOCK_FRAME",
	"MISCELLANEOUS",
	"NO",
	"NONE",
	"NORMAL_FONT_COLOR",
	"OKAY",
	"OVERVIEW",
	"PET",
	"PLAYER_DIFFICULTY1",
	"PLAYER_DIFFICULTY2",
	"PLAYER_DIFFICULTY3",
	"PLAYER_DIFFICULTY6",
	"PLAYER_DIFFICULTY_TIMEWALKER",
	"RAID_CLASS_COLORS",
	"RAID_DIFFICULTY1",
	"RAID_DIFFICULTY2",
	"RAID_DIFFICULTY3",
	"RAID_DIFFICULTY4",
	"RAID_INFO_WORLD_BOSS",
	"RAID_TARGET_1",
	"RAID_TARGET_2",
	"RAID_TARGET_3",
	"RAID_TARGET_4",
	"RAID_TARGET_5",
	"RAID_TARGET_6",
	"RAID_TARGET_7",
	"RAID_TARGET_8",
	"SCENARIO_STAGE",
	"SHARE_QUEST_ABBREV",
	"SHORT",
	"SMALL",
	"SOUNDKIT",
	"SPECIALIZATION",
	"SPELL_FAILED_OUT_OF_RANGE",
	"STATICPOPUP_NUMDIALOGS",
	"TAXIROUTE_LINEFACTOR",
	"TAXIROUTE_LINEFACTOR_2",
	"TOAST_DURATION_LONG",
	"WOW_PROJECT_MAINLINE",
	"WOW_PROJECT_ID",
	"YES",

	"AlertFrame",
	"BackdropTemplateMixin",
	"ChatFontNormal",
	"UIParent",
	"GameFontHighlight",
	"GameFontHighlightSmall",
	"GameFontNormal",
	"GameFontNormalSmall",
	"MovieFrame",
	"ObjectiveTrackerFrame",
	"RaidBossEmoteFrame",
	"RolePollPopup",
	"SlashCmdList",
	"StaticPopupDialogs",
	"TimerTracker",
	"WorldFrame",

	"CinematicFrame_CancelCinematic",
	"ObjectiveTracker_Collapse",
	"ObjectiveTracker_Expand",
	"OptionsList_OnLoad",
	"StaticPopup_Hide",
	"TimerTracker_OnEvent",

	"C_BattleNet.GetAccountInfoByID",
	"C_BattleNet.GetFriendAccountInfo",
	"C_BattleNet.GetGameAccountInfoByID",
	"C_ChallengeMode.GetActiveKeystoneInfo",
	"C_ChatInfo.IsAddonMessagePrefixRegistered",
	"C_ChatInfo.RegisterAddonMessagePrefix",
	"C_ChatInfo.SendAddonMessageLogged",
	"C_ChatInfo.SendAddonMessage",
	"C_DateAndTime.GetCurrentCalendarTime",
	"C_EncounterJournal.GetSectionIconFlags",
	"C_EncounterJournal.GetSectionInfo",
	"C_FriendList.GetFriendInfo",
	"C_Garrison.IsOnGarrisonMap",
	"C_LFGInfo",
	"C_LFGInfo.GetDungeonInfo",
	"C_Map.GetBestMapForUnit",
	"C_Map.GetMapInfo",
	"C_Map.GetPlayerMapPosition",
	"C_Map.GetWorldPosFromMapPos",
	"C_NamePlate.GetNamePlateForUnit",
	"C_NamePlate.GetNamePlates",
	"C_PlayerInfo.IsPlayerInChromieTime",
	"C_QuestLog.IsQuestFlaggedCompleted",
	"C_Scenario.GetCriteriaInfo",
	"C_Scenario.GetInfo",
	"C_Scenario.GetStepInfo",
	"C_Scenario.IsInScenario",
	"C_Timer.After",
	"C_Timer.NewTicker",
	"C_UIWidgetManager.GetStatusBarWidgetVisualizationInfo",
	"AcceptGroup",
	"Ambiguate",
	"BNGetNumFriends",
	"BNIsSelf",
	"BNSendGameData",
	"BNSendWhisper",
	"ChatEdit_GetActiveWindow",
	"CheckInteractDistance",
	"CombatLogGetCurrentEventInfo",
	"CreateFrame",
	"CreateVector2D",
	"EnableAddOn",
	"EJ_GetEncounterInfo",
	"EJ_GetEncounterInfoByIndex",
	"EJ_GetInstanceInfo",
	"EJ_GetCreatureInfo",
	"EJ_SetDifficulty",
	"FlashClientIcon",
	"FreeTimerTrackerTimer",
	"GameTooltip",
	"GetAchievementInfo",
	"GetAchievementLink",
	"GetAddOnEnableState",
	"GetAddOnInfo",
	"GetAddOnMetadata",
	"GetAutoCompleteRealms",
	"GetAverageItemLevel",
	"GetBattlefieldPortExpiration",
	"GetBattlefieldStatus",
	"GetBuildInfo",
	"GetCursorPosition",
	"GetCVar",
	"GetCVarBool",
	"GetDungeonInfo",
	"GetExpansionLevel",
	"GetGameTime",
	"GetGuildRosterInfo",
	"GetGuildRosterShowOffline",
	"GetLFGMode",
	"GetInstanceInfo",
	"GetInventoryItemLink",
	"GetItemInfo",
	"GetLocale",
	"GetLootSpecialization",
	"GetNetStats",
	"GetNumAddOns",
	"GetNumGroupMembers",
	"GetNumGuildMembers",
	"GetNumSavedInstances",
	"GetNumSubgroupMembers",
	"GetNumTrackedAchievements",
	"GetPartyAssignment",
	"GetPlayerFacing",
	"GetPlayerFactionGroup",
	"GetRaidRosterInfo",
	"GetRaidTargetIndex",
	"GetRealmName",
	"GetRealZoneText",
	"GetSavedInstanceInfo",
	"GetSpecialization",
	"GetSpecializationInfo",
	"GetSpecializationInfoByID",
	"GetSpecializationRole",
	"GetSpellCooldown",
	"GetSpellInfo",
	"GetSpellTexture",
	"GetSubZoneText",
	"GetTime",
	"GetUnitName",
	"GetZoneText",
	"IsAddOnLoaded",
	"InCombatLockdown",
	"IsEncounterInProgress",
	"IsFalling",
	"InGuildParty",
	"IsInGroup",
	"IsInGuild",
	"IsInInstance",
	"IsInScenarioGroup",
	"IsInRaid",
	"IsItemInRange",
	"IsMacClient",
	"IsPartyLFG",
	"IsShiftKeyDown",
	"IsTestBuild",
	"IsWindowsClient",
	"ItemRefTooltip",
	"LoadAddOn",
	"LoggingCombat",
	"Mixin",
	"PlayMusic",
	"PlaySound",
	"PlaySoundFile",
	"SendChatMessage",
	"SetCVar",
	"SetRaidTarget",
	"StaticPopup_Show",
	"StopMusic",
	"ToggleDropDownMenu",
	"UIDropDownMenu_AddButton",
	"UIDropDownMenu_CreateInfo",
	"UIDropDownMenu_Initialize",
	"UnitAffectingCombat",
	"UnitAura",
	"UnitBuff",
	"UnitCanAttack",
	"UnitCastingInfo",
	"UnitChannelInfo",
	"UnitClass",
	"UnitDebuff",
	"UnitDetailedThreatSituation",
	"UnitDistanceSquared",
	"UnitExists",
	"UnitGetTotalAbsorbs",
	"UnitGUID",
	"UnitGroupRolesAssigned",
	"UnitHealth",
	"UnitHealthMax",
	"UnitInBattleground",
	"UnitInRange",
	"UnitInVehicle",
	"UnitIsAFK",
	"UnitIsConnected",
	"UnitIsDead",
	"UnitIsDeadOrGhost",
	"UnitIsEnemy",
	"UnitIsFriend",
	"UnitIsGhost",
	"UnitIsGroupAssistant",
	"UnitIsGroupLeader",
	"UnitIsPlayer",
	"UnitIsUnit",
	"UnitLevel",
	"UnitName",
	"UnitPhaseReason",
	"UnitPlayerOrPetInParty",
	"UnitPlayerOrPetInRaid",
	"UnitPosition",
	"UnitPower",
	"UnitPowerMax",
	"UnitPowerType",
	"UnitRealmRelationship",
	"UnitSetRole",
	"UnitThreatSituation",

    --WOW functions
    "PickupMacro",
    "GameFontNormalLarge",   
    "GameTooltipText",   
}