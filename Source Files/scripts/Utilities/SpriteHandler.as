package Utilities
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.*;
   
   public class SpriteHandler
   {
      
      private static var collRect:Class;
      
      private static var buttonZoneObject:Class;
      
      private static var regularDoor:Class;
      
      private static var battleScreenCurrMinionsTurn:Class;
      
      private static var miniMapTest:Class;
      
      private static var roomTransitionObject:Class;
      
      private static var entryObject:Class;
      
      private static var modStone_extraMinionOnDeathStone:Class;
      
      private static var modStone_extraMinionCrystal:Class;
      
      private static var modStone_extraMoveStone:Class;
      
      private static var modStone_resurection:Class;
      
      private static var modStone_shield:Class;
      
      private static var modStone_shieldStone:Class;
      
      private static var modStone_shieldStoneCounterIcon:Class;
      
      private static var modStone_tombstone:Class;
      
      private static var modStone_extraMoveYourBuffBackground:Class;
      
      private static var groundCrack_1:Class;
      
      private static var groundCrack_2:Class;
      
      private static var groundCrack_3:Class;
      
      private static var groundCrack_4:Class;
      
      private static var battleScreenIntro_teleportPiece1:Class;
      
      private static var battleScreenIntro_teleportPiece2:Class;
      
      private static var battleScreenIntro_teleportPiece3:Class;
      
      private static var battleScreenIntro_teleportPiece4:Class;
      
      private static var battleScreenIntro_teleportPiece5:Class;
      
      private static var battleScreenIntro_teleportPiece6:Class;
      
      private static var battleScreenIntro_teleportPiece7:Class;
      
      private static var battleScreenBackground_clouds:Class;
      
      private static var battleScreenBackground_horizon:Class;
      
      private static var battleScreenBackground_island:Class;
      
      private static var battleScreenBackground_lanternGlow:Class;
      
      private static var battleScreenBackground_mountain:Class;
      
      private static var battleScreenBackground_smallIsland:Class;
      
      private static var battleScreenBackground_city:Class;
      
      private static var battleScreenBackground_sky:Class;
      
      private static var battleScreenMenus_fillBar_background:Class;
      
      private static var battleScreenMenus_fillBar_energyCap:Class;
      
      private static var battleScreenMenus_fillBar_energyFill:Class;
      
      private static var battleScreenMenus_fillBar_healthCap:Class;
      
      private static var battleScreenMenus_fillBar_healthFill:Class;
      
      private static var battleScreenMenus_moveNameSingle_centerBubble:Class;
      
      private static var battleScreenMenus_moveNameSingle_sideBubble:Class;
      
      private static var battleScreenSelectedIndicator:Class;
      
      private static var battleScreenMenus_fillBar_expCap:Class;
      
      private static var battleScreenMenus_fillBar_expFill:Class;
      
      private static var battleScreenMenus_levelUp_popUp:Class;
      
      private static var battleScreenMenus_newSkillPointIndicator:Class;
      
      private static var battleScreenMenus_healthFillBar_background:Class;
      
      private static var battleScreenMenus_turnIndicator_player:Class;
      
      private static var battleScreenMenus_turnIndicator_enemy:Class;
      
      private static var battleScreenMenus_movesModuleBackground:Class;
      
      private static var superEffectivePopup:Class;
      
      private static var notEffectivePopup:Class;
      
      private static var critPopup:Class;
      
      private static var outOfEnergyTip:Class;
      
      private static var battleScreenMenus_fillBar_shieldFill:Class;
      
      private static var battleScreenMenus_fillBar_shieldCap:Class;
      
      private static var battleScreenVictoryBackground:Class;
      
      private static var battleScreenVictoryStar:Class;
      
      private static var battleScreenMenus_movesDeselectButton:Class;
      
      private static var damageRedirected:Class;
      
      private static var forfeitButton:Class;
      
      private static var battleScreenMenus_evolution_popUp:Class;
      
      private static var battleScreenMenus_evolution_mask:Class;
      
      private static var battleScreenMenus_evolution_closeButton:Class;
      
      private static var mainCharacter_female_front_still:Class;
      
      private static var mainCharacter_female_front_1:Class;
      
      private static var mainCharacter_female_front_2:Class;
      
      private static var mainCharacter_female_front_3:Class;
      
      private static var mainCharacter_female_front_4:Class;
      
      private static var mainCharacter_female_front_5:Class;
      
      private static var mainCharacter_female_front_6:Class;
      
      private static var mainCharacter_female_front_7:Class;
      
      private static var mainCharacter_female_front_8:Class;
      
      private static var mainCharacter_female_front_9:Class;
      
      private static var mainCharacter_female_front_10:Class;
      
      private static var mainCharacter_female_back_still:Class;
      
      private static var mainCharacter_female_back_1:Class;
      
      private static var mainCharacter_female_back_2:Class;
      
      private static var mainCharacter_female_back_3:Class;
      
      private static var mainCharacter_female_back_4:Class;
      
      private static var mainCharacter_female_back_5:Class;
      
      private static var mainCharacter_female_back_6:Class;
      
      private static var mainCharacter_female_back_7:Class;
      
      private static var mainCharacter_female_back_8:Class;
      
      private static var mainCharacter_female_back_9:Class;
      
      private static var mainCharacter_female_back_10:Class;
      
      private static var mainCharacter_female_side_still:Class;
      
      private static var mainCharacter_female_side_1:Class;
      
      private static var mainCharacter_female_side_2:Class;
      
      private static var mainCharacter_female_side_3:Class;
      
      private static var mainCharacter_female_side_4:Class;
      
      private static var mainCharacter_female_side_5:Class;
      
      private static var mainCharacter_female_side_6:Class;
      
      private static var mainCharacter_female_side_7:Class;
      
      private static var mainCharacter_female_side_8:Class;
      
      private static var mainCharacter_female_side_9:Class;
      
      private static var mainCharacter_female_side_10:Class;
      
      private static var mainCharacter_male_front_still:Class;
      
      private static var mainCharacter_male_front_1:Class;
      
      private static var mainCharacter_male_front_2:Class;
      
      private static var mainCharacter_male_front_3:Class;
      
      private static var mainCharacter_male_front_4:Class;
      
      private static var mainCharacter_male_front_5:Class;
      
      private static var mainCharacter_male_front_6:Class;
      
      private static var mainCharacter_male_front_7:Class;
      
      private static var mainCharacter_male_front_8:Class;
      
      private static var mainCharacter_male_front_9:Class;
      
      private static var mainCharacter_male_front_10:Class;
      
      private static var mainCharacter_male_back_still:Class;
      
      private static var mainCharacter_male_back_1:Class;
      
      private static var mainCharacter_male_back_2:Class;
      
      private static var mainCharacter_male_back_3:Class;
      
      private static var mainCharacter_male_back_4:Class;
      
      private static var mainCharacter_male_back_5:Class;
      
      private static var mainCharacter_male_back_6:Class;
      
      private static var mainCharacter_male_back_7:Class;
      
      private static var mainCharacter_male_back_8:Class;
      
      private static var mainCharacter_male_back_9:Class;
      
      private static var mainCharacter_male_back_10:Class;
      
      private static var mainCharacter_male_side_still:Class;
      
      private static var mainCharacter_male_side_1:Class;
      
      private static var mainCharacter_male_side_2:Class;
      
      private static var mainCharacter_male_side_3:Class;
      
      private static var mainCharacter_male_side_4:Class;
      
      private static var mainCharacter_male_side_5:Class;
      
      private static var mainCharacter_male_side_6:Class;
      
      private static var mainCharacter_male_side_7:Class;
      
      private static var mainCharacter_male_side_8:Class;
      
      private static var mainCharacter_male_side_9:Class;
      
      private static var mainCharacter_male_side_10:Class;
      
      private static var sageSeal_1_1:Class;
      
      private static var sageSeal_1_2:Class;
      
      private static var sageSeal_1_3:Class;
      
      private static var sageSeal_2_1:Class;
      
      private static var sageSeal_2_2:Class;
      
      private static var sageSeal_2_3:Class;
      
      private static var sageSeal_3_1:Class;
      
      private static var sageSeal_3_2:Class;
      
      private static var sageSeal_3_3:Class;
      
      private static var sageSeal_4_1:Class;
      
      private static var sageSeal_4_2:Class;
      
      private static var sageSeal_4_3:Class;
      
      private static var sageSeal_5_1:Class;
      
      private static var sageSeal_5_2:Class;
      
      private static var sageSeal_5_3:Class;
      
      private static var sageSeal_5_4:Class;
      
      private static var sageSeal_6_1:Class;
      
      private static var sageSeal_6_2:Class;
      
      private static var sageSeal_6_3:Class;
      
      private static var sageSeal_6_4:Class;
      
      private static var sageSeal_background:Class;
      
      private static var hud_sealPiecesBackground:Class;
      
      private static var hud_statBonus_0:Class;
      
      private static var hud_statBonus_1:Class;
      
      private static var hud_statBonus_2:Class;
      
      private static var hud_statBonus_3:Class;
      
      private static var hud_statBonus_4:Class;
      
      private static var topDown_giftButton:Class;
      
      private static var topDown_notTellingButton:Class;
      
      private static var topDown_rescueButton:Class;
      
      private static var topDown_pictureGiftButton:Class;
      
      private static var topDown_pictureNotTellingButton:Class;
      
      private static var topDown_pictureRescueButton:Class;
      
      private static var menus_backgroundMedium:Class;
      
      private static var menus_backgroundSmall:Class;
      
      private static var menus_changeButton:Class;
      
      private static var menus_detailsButton:Class;
      
      private static var menus_emptyGemSocket:Class;
      
      private static var menus_gemsBackground:Class;
      
      private static var menus_gemSelectBackground:Class;
      
      private static var menus_minionInfo_background:Class;
      
      private static var menus_minionInfo_emptyGemSlot:Class;
      
      private static var menus_minionInfo_energyBar_cap:Class;
      
      private static var menus_minionInfo_energyBar_full:Class;
      
      private static var menus_minionInfo_healthBar_cap:Class;
      
      private static var menus_minionInfo_healthBar_full:Class;
      
      private static var menus_minionXP_background:Class;
      
      private static var menus_minionXP_fill:Class;
      
      private static var menus_movesBackground:Class;
      
      private static var menus_returnButton:Class;
      
      private static var menus_scrollButton_down:Class;
      
      private static var menus_scrollButton_up:Class;
      
      private static var menus_selectionPopUp_background:Class;
      
      private static var menus_selectionPopUp_cancelButton:Class;
      
      private static var menus_selectionPopUp_detailsButton:Class;
      
      private static var menus_selectionPopUp_skillsTreeButton:Class;
      
      private static var menus_selectionPopUp_switchButton:Class;
      
      private static var menus_statsBackground:Class;
      
      private static var menus_statsBars_cap_armor:Class;
      
      private static var menus_statsBars_cap_armorPenetration:Class;
      
      private static var menus_statsBars_cap_attack:Class;
      
      private static var menus_statsBars_cap_health:Class;
      
      private static var menus_statsBars_cap_speed:Class;
      
      private static var menus_statsBars_full_armor:Class;
      
      private static var menus_statsBars_full_armorPenetration:Class;
      
      private static var menus_statsBars_full_attack:Class;
      
      private static var menus_statsBars_full_health:Class;
      
      private static var menus_statsBars_full_speed:Class;
      
      private static var menus_topDownMenuPopUp_background:Class;
      
      private static var menus_topDownMenuPopUp_settings:Class;
      
      private static var menus_topDownMenuPopUp_mainMenu:Class;
      
      private static var menus_topDownMenuPopUp_save:Class;
      
      private static var menus_pendant:Class;
      
      private static var menus_topDownMenuPopUp_minionDex:Class;
      
      private static var menus_topDownMenuPopUp_minions:Class;
      
      private static var menus_topDownMenuPopUp_resume:Class;
      
      private static var menus_topDownMenuPopUp_you:Class;
      
      private static var menus_gameplayMenuTab:Class;
      
      private static var menus_minionIcon_background:Class;
      
      private static var menus_minionIcon_mask:Class;
      
      private static var menus_exitButton:Class;
      
      private static var menus_skillTree_otherTreeIndicator:Class;
      
      private static var menus_skillTree_advancedButton:Class;
      
      private static var menus_skillTree_advancedTabsCentert:Class;
      
      private static var menus_skillTree_advancedTabsLeft:Class;
      
      private static var menus_skillTree_background:Class;
      
      private static var menus_skillTree_buttonBackground:Class;
      
      private static var menus_skillTree_movesBackground:Class;
      
      private static var menus_skillTree_pointsBubble:Class;
      
      private static var menus_skillTree_resetButton:Class;
      
      private static var menus_skillTree_simpleButton:Class;
      
      private static var menus_speechBubble:Class;
      
      private static var menus_speechBubble_arrow:Class;
      
      private static var menus_speechBubble_yesButton:Class;
      
      private static var menus_speechBubble_noButton:Class;
      
      private static var menus_gemMenuBackground:Class;
      
      private static var menus_gemMenu_equipButton:Class;
      
      private static var menus_tempAd:Class;
      
      private static var menus_sponsorMoreGames_button:Class;
      
      private static var menus_sponsorMoreGames_background:Class;
      
      private static var menus_gemMenuGemSelected:Class;
      
      private static var menus_gemLockedButton:Class;
      
      private static var menus_gemPremiumButton:Class;
      
      private static var menus_gemMenu_unEquipButton:Class;
      
      private static var menus_minionInfo_filledGemSlot:Class;
      
      private static var menus_backgroundLarge:Class;
      
      private static var menus_gemCombiner_addButton:Class;
      
      private static var menus_gemCombiner_buySellButton:Class;
      
      private static var menus_gemCombiner_characterDetailsBackground:Class;
      
      private static var menus_gemCombiner_male_charIcon:Class;
      
      private static var menus_gemCombiner_female_charIcon:Class;
      
      private static var menus_gemCombiner_CombineButton:Class;
      
      private static var menus_gemCombiner_resetButton:Class;
      
      private static var menus_gemCombiner_npcsGemsBackground:Class;
      
      private static var menus_minionStorage_addToPartyButton:Class;
      
      private static var menus_minionStorage_boxSelectBar:Class;
      
      private static var menus_minionStorage_boxSelectedIcon:Class;
      
      private static var menus_minionStorage_closeParty:Class;
      
      private static var menus_minionStorage_minionsBackground:Class;
      
      private static var menus_minionStorage_minionSelectIcon:Class;
      
      private static var menus_minionStorage_partyBackground:Class;
      
      private static var menus_minionStorage_swapButtonOff:Class;
      
      private static var menus_minionStorage_swapButtonOn:Class;
      
      private static var menus_minionStorage_nextContainerButton:Class;
      
      private static var menus_minionStorage_releaseButton:Class;
      
      private static var menus_minionStorage_currTeamIndecator:Class;
      
      private static var conformationBox_background:Class;
      
      private static var conformationBox_noButton:Class;
      
      private static var conformationBox_yesButton:Class;
      
      private static var hud_inGame_gem:Class;
      
      private static var hud_inGame_key:Class;
      
      private static var hud_inGame_money:Class;
      
      private static var hud_starsAndKeysBackground:Class;
      
      private static var menus_maleBust_icon:Class;
      
      private static var menus_femaleBust_icon:Class;
      
      private static var menus_youMenu_resetButton:Class;
      
      private static var menus_youMenu_starUpgradeButtonAttack:Class;
      
      private static var menus_youMenu_starUpgradeButtonEnergy:Class;
      
      private static var menus_youMenu_starUpgradeButtonExtraMoney:Class;
      
      private static var menus_youMenu_starUpgradeButtonHealing:Class;
      
      private static var menus_youMenu_starUpgradeButtonHealth:Class;
      
      private static var menus_youMenu_starUpgradeButtonMinionSpeed:Class;
      
      private static var menus_youMenu_starUpgradeButtonWalkSpeed:Class;
      
      private static var menus_youMenu_starUpgradeButtonXP:Class;
      
      private static var menus_youMenu_yourInformationBackground:Class;
      
      private static var menus_youMenu_gemBackground:Class;
      
      private static var menus_skillTree_specializationBackground:Class;
      
      private static var menus_minionInfo_renameButton:Class;
      
      private static var menus_minionInfo_doneButton:Class;
      
      private static var menus_settings_graphicSetting_low:Class;
      
      private static var menus_settings_graphicSetting_mid:Class;
      
      private static var menus_settings_graphicSetting_high:Class;
      
      private static var menus_settings_nextGraphicSetting:Class;
      
      private static var menus_settings_offButton:Class;
      
      private static var menus_settings_onButton:Class;
      
      private static var hud_inGame_sageSeal_1:Class;
      
      private static var hud_inGame_sageSeal_2:Class;
      
      private static var hud_inGame_sageSeal_3:Class;
      
      private static var hud_inGame_sageSeal_4:Class;
      
      private static var hud_inGame_sageSeal_5:Class;
      
      private static var hud_inGame_sageSeal_6:Class;
      
      private static var hud_inGame_sageSeal_7:Class;
      
      private static var menus_plantMedallion:Class;
      
      private static var menus_fireMedallion:Class;
      
      private static var menus_electricMedallion:Class;
      
      private static var menus_undeadMedallion:Class;
      
      private static var menus_plantWizardMedallion:Class;
      
      private static var menus_undeadWizardMedallion:Class;
      
      private static var menus_savingPopup:Class;
      
      private static var menus_selectionPopUp_saveButton:Class;
      
      private static var menus_selectionPopUp_saveReturnToLobbyButton:Class;
      
      private static var minionPedia_background:Class;
      
      private static var minionPedia_minionBackground:Class;
      
      private static var minionPedia_minionSelectBackground:Class;
      
      private static var minionPedia_minionSelectedIcon:Class;
      
      private static var minionPedia_upArrow:Class;
      
      private static var minionPedia_doubleUpArrow:Class;
      
      private static var minionPedia_seenIcon:Class;
      
      private static var minionPedia_OwnedIcon:Class;
      
      private static var bonusItems_noThanksButton:Class;
      
      private static var bonusItems_sureButton:Class;
      
      private static var bonusItems_gemsBackground:Class;
      
      private static var bonusItems_minionBackground:Class;
      
      private static var bonusItems_sponsorPatch:Class;
      
      private static var tutorial_yourMinionHealth:Class;
      
      private static var tutorial_backgroundLarge:Class;
      
      private static var tutorial_backgroundSmall:Class;
      
      private static var tutorial_bigEnergyBar:Class;
      
      private static var tutorial_bigHealthBar:Class;
      
      private static var tutorial_bossDoor:Class;
      
      private static var tutorial_chooseAMove:Class;
      
      private static var tutorial_chooseAnOpponetsMinion:Class;
      
      private static var tutorial_choosingAMinionBar:Class;
      
      private static var tutorial_clickGroundToDeselectMinion:Class;
      
      private static var tutorial_deathIcon:Class;
      
      private static var tutorial_energyBarArrow:Class;
      
      private static var tutorial_energyBarBackground:Class;
      
      private static var tutorial_expertTrainer:Class;
      
      private static var tutorial_firstGemMenuPopup:Class;
      
      private static var tutorial_firstGemTutorial:Class;
      
      private static var tutorial_firstGem_side:Class;
      
      private static var tutorial_focusTarget:Class;
      
      private static var tutorial_hardTrainer:Class;
      
      private static var tutorial_keyKeeper1:Class;
      
      private static var tutorial_keyKeeper2:Class;
      
      private static var tutorial_keyKeeper3:Class;
      
      private static var tutorial_movement:Class;
      
      private static var tutorial_movement_down:Class;
      
      private static var tutorial_newTalentPointsPopup:Class;
      
      private static var tutorial_nextButton:Class;
      
      private static var tutorial_okButton:Class;
      
      private static var tutorial_optionalRespectTip:Class;
      
      private static var tutorial_pressSpacekey_down:Class;
      
      private static var tutorial_pressSpacekey_up:Class;
      
      private static var tutorial_resetTalentPointsIcon:Class;
      
      private static var tutorial_selectYourMinion:Class;
      
      private static var tutorial_showMeButton:Class;
      
      private static var tutorial_spaceToSkip:Class;
      
      private static var tutorial_starsAndNewMinions:Class;
      
      private static var tutorial_superEffectiveMoves:Class;
      
      private static var tutorial_turnSquare1:Class;
      
      private static var tutorial_turnSquare2:Class;
      
      private static var tutorial_turnSquare3:Class;
      
      private static var tutorial_turnSquare4:Class;
      
      private static var tutorial_useAHealer:Class;
      
      private static var tutorial_useATank:Class;
      
      private static var tutorial_yourMinionArrow:Class;
      
      private static var tutorial_yourMinionBackground:Class;
      
      private static var tutorial_yourThierMinionBackground:Class;
      
      private static var tutorial_newStars_top:Class;
      
      private static var tutorial_newStars_side:Class;
      
      private static var tutorial_swapMinions:Class;
      
      private static var tutorial_newTalentPointsPopup_side:Class;
      
      private static var tutorial_bonusRooms:Class;
      
      private static var gemCornerBlue:Class;
      
      private static var gemCornerOrange:Class;
      
      private static var gemCornerPurple:Class;
      
      private static var gemCornerRed:Class;
      
      private static var gemCornerYellow:Class;
      
      private static var gemTier1_mask:Class;
      
      private static var gemTier1_shape:Class;
      
      private static var gemTier2_mask:Class;
      
      private static var gemTier2_shape:Class;
      
      private static var gemTier3_mask:Class;
      
      private static var gemTier3_shape:Class;
      
      private static var gemTier4_mask:Class;
      
      private static var gemTier4_shape:Class;
      
      private static var gemTier5_mask:Class;
      
      private static var gemTier5_shape:Class;
      
      private static var gemTier6_mask:Class;
      
      private static var gemTier6_shape:Class;
      
      private static var gemTier7_mask:Class;
      
      private static var gemTier7_shape:Class;
      
      private static var gemTier8_mask:Class;
      
      private static var gemTier8_shape:Class;
      
      private static var gemTier9_mask:Class;
      
      private static var gemTier9_shape:Class;
      
      private static var gemTier10_mask:Class;
      
      private static var gemTier10_shape:Class;
      
      private static var gemTier11_mask:Class;
      
      private static var gemTier11_shape:Class;
      
      private static var fireRoom_bottomWall:Class;
      
      private static var fireRoom_flowers:Class;
      
      private static var fireRoom_groundCover:Class;
      
      private static var fireRoom_groundTile:Class;
      
      private static var fireRoom_groundTile_foliage:Class;
      
      private static var fireRoom_groundTile_fossils:Class;
      
      private static var fireRoom_groundTile_magma:Class;
      
      private static var fireRoom_gysers:Class;
      
      private static var fireRoom_lavaPit1:Class;
      
      private static var fireRoom_lavaPit2:Class;
      
      private static var fireRoom_lavaPitSmall:Class;
      
      private static var fireRoom_lowerLeftCorner:Class;
      
      private static var fireRoom_lowerRightCorner:Class;
      
      private static var fireRoom_palmTrees:Class;
      
      private static var fireRoom_path_lowerLeft:Class;
      
      private static var fireRoom_path_upperLeft:Class;
      
      private static var fireRoom_path1:Class;
      
      private static var fireRoom_path2:Class;
      
      private static var fireRoom_rocks:Class;
      
      private static var fireRoom_sideWall:Class;
      
      private static var fireRoom_tiki1:Class;
      
      private static var fireRoom_tiki2:Class;
      
      private static var fireRoom_topWall:Class;
      
      private static var fireRoom_upperLeftCorner:Class;
      
      private static var fireRoom_upperRightCorner:Class;
      
      private static var fireRoom_bottomDoor:Class;
      
      private static var fireRoom_sideDoor:Class;
      
      private static var fireRoom_topDoor:Class;
      
      private static var fireRoom_firePit:Class;
      
      private static var fireRoom_femaleFireEnemy_front:Class;
      
      private static var fireRoom_femaleFireEnemy_side:Class;
      
      private static var fireRoom_musclesEnemy_front:Class;
      
      private static var fireRoom_musclesEnemy_side:Class;
      
      private static var fireRoom_voodooEnemy_front:Class;
      
      private static var fireRoom_voodooEnemy_side:Class;
      
      private static var plantRoom_bridgeBase:Class;
      
      private static var plantRoom_bridgeTrees_bottomLeft:Class;
      
      private static var plantRoom_bridgeTrees_bottomRight:Class;
      
      private static var plantRoom_bridgeTrees_topLeft:Class;
      
      private static var plantRoom_bridgeTrees_topRight:Class;
      
      private static var plantRoom_pond:Class;
      
      private static var plantRoom_river_corner:Class;
      
      private static var plantRoom_river_leftEnd:Class;
      
      private static var plantRoom_river_rightEnd:Class;
      
      private static var plantRoom_river_sparkle1:Class;
      
      private static var plantRoom_river_sparkle2:Class;
      
      private static var plantRoom_river_splash:Class;
      
      private static var plantRoom_river_wallArch:Class;
      
      private static var plantRoom_bush:Class;
      
      private static var plantRoom_berryBushes:Class;
      
      private static var plantRoom_bottomDoor:Class;
      
      private static var plantRoom_bottomWall:Class;
      
      private static var plantRoom_boulder:Class;
      
      private static var plantRoom_boulderSmall:Class;
      
      private static var plantRoom_flowers1:Class;
      
      private static var plantRoom_flowers2:Class;
      
      private static var plantRoom_flowers3:Class;
      
      private static var plantRoom_groundTile:Class;
      
      private static var plantRoom_groundTile_clover:Class;
      
      private static var plantRoom_groundTile_dandelion:Class;
      
      private static var plantRoom_groundTile_deadPatches:Class;
      
      private static var plantRoom_groundTile_flowers:Class;
      
      private static var plantRoom_lowerLeftCorner:Class;
      
      private static var plantRoom_lowerRightCorner:Class;
      
      private static var plantRoom_mushrooms:Class;
      
      private static var plantRoom_oakTree:Class;
      
      private static var plantRoom_oakTree2:Class;
      
      private static var plantRoom_path_lowerLeft:Class;
      
      private static var plantRoom_path_upperLeft:Class;
      
      private static var plantRoom_path1:Class;
      
      private static var plantRoom_path2:Class;
      
      private static var plantRoom_pineTree1:Class;
      
      private static var plantRoom_pineTree2:Class;
      
      private static var plantRoom_lowerLeftWallSection:Class;
      
      private static var plantRoom_sideDoor:Class;
      
      private static var plantRoom_sideWall:Class;
      
      private static var plantRoom_stump:Class;
      
      private static var plantRoom_topDoor:Class;
      
      private static var plantRoom_topWall:Class;
      
      private static var plantRoom_trellis:Class;
      
      private static var plantRoom_upperLeftCorner:Class;
      
      private static var plantRoom_upperRightCorner:Class;
      
      private static var plantRoom_forestEnemy_front:Class;
      
      private static var plantRoom_forestEnemy_side:Class;
      
      private static var plantRoom_forestEnemyBoy_front:Class;
      
      private static var plantRoom_forestEnemyGirl_front:Class;
      
      private static var plantRoom_outdoorEnemy_front:Class;
      
      private static var plantRoom_outdoorEnemy_side:Class;
      
      private static var plantRoom_waterEnemy_front:Class;
      
      private static var plantRoom_waterEnemy_side:Class;
      
      private static var electricRoom_acidPuddle:Class;
      
      private static var electricRoom_barrel:Class;
      
      private static var electricRoom_beakerSet1:Class;
      
      private static var electricRoom_beakerSet2:Class;
      
      private static var electricRoom_bookshelf:Class;
      
      private static var electricRoom_bookshelf_beakers:Class;
      
      private static var electricRoom_bookshelf_books:Class;
      
      private static var electricRoom_conveyorBelt:Class;
      
      private static var electricRoom_crate:Class;
      
      private static var electricRoom_dissectionSet:Class;
      
      private static var electricRoom_emptyVat:Class;
      
      private static var electricRoom_floorTile:Class;
      
      private static var electricRoom_floorTile_blackAndWhite:Class;
      
      private static var electricRoom_floorTile_metalLitter:Class;
      
      private static var electricRoom_floorTile_pipes:Class;
      
      private static var electricRoom_floorTile_pipesWithGauge:Class;
      
      private static var electricRoom_frontTable_center:Class;
      
      private static var electricRoom_frontTable_left:Class;
      
      private static var electricRoom_frontTable_right:Class;
      
      private static var electricRoom_junkPile:Class;
      
      private static var electricRoom_machine:Class;
      
      private static var electricRoom_occupiedVat:Class;
      
      private static var electricRoom_oilPuddle:Class;
      
      private static var electricRoom_sideTable_bottom:Class;
      
      private static var electricRoom_sideTable_center:Class;
      
      private static var electricRoom_sideTable_top:Class;
      
      private static var electricRoom_teslaCoil:Class;
      
      private static var electricRoom_wallCables_bottom:Class;
      
      private static var electricRoom_wallCables_side:Class;
      
      private static var electricRoom_wallCables_top1:Class;
      
      private static var electricRoom_wallCables_top2:Class;
      
      private static var electricRoom_cyborgEnemy_front:Class;
      
      private static var electricRoom_cyborgEnemy_side:Class;
      
      private static var electricRoom_femaleEnemy_front:Class;
      
      private static var electricRoom_femaleEnemy_side:Class;
      
      private static var electricRoom_labcoatEnemy_front:Class;
      
      private static var electricRoom_labcoatEnemy_side:Class;
      
      private static var undeadRoom_altar:Class;
      
      private static var undeadRoom_bottomDoor:Class;
      
      private static var undeadRoom_bottomWall:Class;
      
      private static var undeadRoom_bush:Class;
      
      private static var undeadRoom_cattails:Class;
      
      private static var undeadRoom_costumeEnemy_front:Class;
      
      private static var undeadRoom_costumeEnemy_side:Class;
      
      private static var undeadRoom_gothEnemy_front:Class;
      
      private static var undeadRoom_gothEnemy_side:Class;
      
      private static var undeadRoom_grassPatch1:Class;
      
      private static var undeadRoom_grassPatch2:Class;
      
      private static var undeadRoom_grassPatch3:Class;
      
      private static var undeadRoom_grassPatch4:Class;
      
      private static var undeadRoom_groundTile:Class;
      
      private static var undeadRoom_groundTile_cobwebs:Class;
      
      private static var undeadRoom_groundTile_debris:Class;
      
      private static var undeadRoom_groundTile_moss:Class;
      
      private static var undeadRoom_groundTile_purpleCracks:Class;
      
      private static var undeadRoom_headstones1:Class;
      
      private static var undeadRoom_headstones2:Class;
      
      private static var undeadRoom_headstones3:Class;
      
      private static var undeadRoom_lowerLeftCorner:Class;
      
      private static var undeadRoom_lowerRightCorner:Class;
      
      private static var undeadRoom_mushrooms:Class;
      
      private static var undeadRoom_necromancerEnemy_front:Class;
      
      private static var undeadRoom_necromancerEnemy_side:Class;
      
      private static var undeadRoom_oak:Class;
      
      private static var undeadRoom_path_lowerLeft:Class;
      
      private static var undeadRoom_path_upperLeft:Class;
      
      private static var undeadRoom_path1:Class;
      
      private static var undeadRoom_path2:Class;
      
      private static var undeadRoom_ribs:Class;
      
      private static var undeadRoom_sideDoor:Class;
      
      private static var undeadRoom_sideWall:Class;
      
      private static var undeadRoom_skull:Class;
      
      private static var undeadRoom_swamp:Class;
      
      private static var undeadRoom_thornBush:Class;
      
      private static var undeadRoom_topDoor:Class;
      
      private static var undeadRoom_topWall:Class;
      
      private static var undeadRoom_upperLeftCorner:Class;
      
      private static var undeadRoom_upperRightCorner:Class;
      
      private static var undeadRoom_willow:Class;
      
      private static var generalRoom_sideTorch1:Class;
      
      private static var generalRoom_sideTorch2:Class;
      
      private static var generalRoom_sideTorch3:Class;
      
      private static var generalRoom_sideTorch4:Class;
      
      private static var generalRoom_sideTorch5:Class;
      
      private static var generalRoom_sideTorch6:Class;
      
      private static var generalRoom_topTorch1:Class;
      
      private static var generalRoom_topTorch2:Class;
      
      private static var generalRoom_topTorch3:Class;
      
      private static var generalRoom_topTorch4:Class;
      
      private static var generalRoom_topTorch5:Class;
      
      private static var generalRoom_topTorch6:Class;
      
      private static var generalRoom_topTorch7:Class;
      
      private static var generalRoom_topTorch_plantBase:Class;
      
      private static var generalRoom_topTorch_plantGlow:Class;
      
      private static var generalRoom_expertStatue:Class;
      
      private static var generalRoom_topDoor_floorPatch:Class;
      
      private static var generalRoom_bottomDoor_floorPatch:Class;
      
      private static var generalRoom_entryDoor:Class;
      
      private static var generalRoom_gymDoor:Class;
      
      private static var generalRoom_wideRedRunner_connector:Class;
      
      private static var generalRoom_wideRedRunner_mid1:Class;
      
      private static var generalRoom_wideRedRunner_mid2:Class;
      
      private static var generalRoom_wideRedRunner_top:Class;
      
      private static var generalRoom_electricGymEnemy:Class;
      
      private static var generalRoom_fireGymEnemy:Class;
      
      private static var generalRoom_grandWizard:Class;
      
      private static var generalRoom_plantGymEnemy:Class;
      
      private static var generalRoom_plantWizard:Class;
      
      private static var generalRoom_undeadGymEnemy:Class;
      
      private static var generalRoom_undeadWizard:Class;
      
      private static var generalRoom_specialDoor_locked:Class;
      
      private static var generalRoom_specialDoor_open:Class;
      
      private static var generalRoom_healStone:Class;
      
      private static var generalRoom_healStone_glow:Class;
      
      private static var generalRoom_healAnimation_crosses:Class;
      
      private static var generalRoom_healAnimation_healed:Class;
      
      private static var room_teleporterOff:Class;
      
      private static var room_expertTeleporter:Class;
      
      private static var room_generalTeleporter:Class;
      
      private static var room_expertTeleporter_glow:Class;
      
      private static var room_generalTeleporter_glow:Class;
      
      private static var generalRoom_genericTapestry_plant:Class;
      
      private static var generalRoom_genericTapestrySide_plant:Class;
      
      private static var generalRoom_bottomDoor:Class;
      
      private static var generalRoom_bottomPillar:Class;
      
      private static var generalRoom_bottomTorch1:Class;
      
      private static var generalRoom_bottomTorch2:Class;
      
      private static var generalRoom_bottomTorch3:Class;
      
      private static var generalRoom_bottomTorch4:Class;
      
      private static var generalRoom_bottomTorch5:Class;
      
      private static var generalRoom_bottomTorch6:Class;
      
      private static var generalRoom_bottomWall:Class;
      
      private static var generalRoom_bottomWall_crack:Class;
      
      private static var generalRoom_candelabra:Class;
      
      private static var generalRoom_detailTapestry_demonic:Class;
      
      private static var generalRoom_detailTapestry_electric:Class;
      
      private static var generalRoom_detailTapestry_fire:Class;
      
      private static var generalRoom_floorRunnerMid1:Class;
      
      private static var generalRoom_floorRunnerMid2:Class;
      
      private static var generalRoom_floorRunnerTop:Class;
      
      private static var generalRoom_floorTile:Class;
      
      private static var generalRoom_genericTapestry_fire:Class;
      
      private static var generalRoom_genericTapestrySide_fire:Class;
      
      private static var generalRoom_goldFloorVase:Class;
      
      private static var generalRoom_lowerLeft_tSection:Class;
      
      private static var generalRoom_lowerLeftCorner:Class;
      
      private static var generalRoom_lowerRight_tSection:Class;
      
      private static var generalRoom_lowerRightCorner:Class;
      
      private static var generalRoom_partialWall:Class;
      
      private static var generalRoom_rocks1:Class;
      
      private static var generalRoom_rocks2:Class;
      
      private static var generalRoom_sideDoor:Class;
      
      private static var generalRoom_sidePillar:Class;
      
      private static var generalRoom_sideWall:Class;
      
      private static var generalRoom_sideWall_crack:Class;
      
      private static var generalRoom_silverFloorVase:Class;
      
      private static var generalRoom_tableCandles:Class;
      
      private static var generalRoom_tableHorn:Class;
      
      private static var generalRoom_tablePlate:Class;
      
      private static var generalRoom_tableRunner:Class;
      
      private static var generalRoom_tableSkeleton:Class;
      
      private static var generalRoom_tableVase:Class;
      
      private static var generalRoom_topDoor:Class;
      
      private static var generalRoom_topPillar:Class;
      
      private static var generalRoom_topWall:Class;
      
      private static var generalRoom_topWall_crack:Class;
      
      private static var generalRoom_upperLeft_tSection:Class;
      
      private static var generalRoom_upperLeftCorner:Class;
      
      private static var generalRoom_upperRight_tSection:Class;
      
      private static var generalRoom_upperRightCorner:Class;
      
      private static var generalRoom_floorMosaic_floral:Class;
      
      private static var generalRoom_floorMosaic_sun:Class;
      
      private static var generalRoom_floorMosaic_target:Class;
      
      private static var generalRoom_sideTable_bottom:Class;
      
      private static var generalRoom_sideTable_center:Class;
      
      private static var generalRoom_sideTable_top:Class;
      
      private static var generalRoom_topTable_center:Class;
      
      private static var generalRoom_topTable_left:Class;
      
      private static var generalRoom_topTable_right:Class;
      
      private static var generalRoom_floorRunner_rotationConnect:Class;
      
      private static var room_gemChest:Class;
      
      private static var room_goldChest:Class;
      
      private static var eggery_egg:Class;
      
      private static var eggery_eggPit_back:Class;
      
      private static var eggery_eggPit_front:Class;
      
      private static var eggery_minionDetailsBackground:Class;
      
      private static var menus_compare_arrow:Class;
      
      private static var eggery_fireplace:Class;
      
      private static var eggery_fireplaceFire1:Class;
      
      private static var eggery_fireplaceFire2:Class;
      
      private static var eggery_fireplaceFire3:Class;
      
      private static var eggery_fireplaceFire4:Class;
      
      private static var eggery_fireplaceFire5:Class;
      
      private static var eggery_fireplaceFire6:Class;
      
      private static var eggery_fireplaceFire7:Class;
      
      private static var eggery_haySmall:Class;
      
      private static var eggery_hay:Class;
      
      private static var generalRoom_eggeryDoor_locked:Class;
      
      private static var generalRoom_eggeryDoor_open:Class;
      
      private static var generalRoom_bossEnemy:Class;
      
      private static var generalRoom_hardEnemy:Class;
      
      private static var generalRoom_expertEnemy:Class;
      
      private static var generalRoom_detailTapestry_plant:Class;
      
      private static var generalRoom_green_floorRunner_rotationConnect:Class;
      
      private static var generalRoom_green_floorRunnerMid1:Class;
      
      private static var generalRoom_green_floorRunnerMid2:Class;
      
      private static var generalRoom_green_floorRunnerTop:Class;
      
      private static var generalRoom_bottomTorch_plant:Class;
      
      private static var generalRoom_sideTorch_plant:Class;
      
      private static var generalRoom_topTorch_plant:Class;
      
      private static var generalRoom_gemCombiner:Class;
      
      private static var generalRoom_gemCombiner_anvil:Class;
      
      private static var generalRoom_gemSalesman_blanket:Class;
      
      private static var generalRoom_gemSalesman:Class;
      
      private static var generalRoom_minionKeeper:Class;
      
      private static var generalRoom_largeMosaic:Class;
      
      private static var generalRoom_largePillar:Class;
      
      private static var generalRoom_titanDoorBars_down:Class;
      
      private static var generalRoom_titanDoorBars_up:Class;
      
      private static var generalRoom_velvetRope:Class;
      
      private static var generalRoom_vipSign:Class;
      
      private static var generalRoom_blocked_bottomDoor:Class;
      
      private static var generalRoom_eggeryDoor_locked_sixKeys:Class;
      
      private static var visualMove_statDecrease:Class;
      
      private static var visualMove_statIncrease:Class;
      
      private static var visualMove_moveMissed:Class;
      
      private static var visualMove_charging:Class;
      
      private static var visualMove_exhausted:Class;
      
      private static var visualMove_frozen:Class;
      
      private static var visualMove_stunned:Class;
      
      private static var visualMove_reflectedDamage:Class;
      
      private static var titan1:Class;
      
      private static var titan2:Class;
      
      private static var demonicBatDog:Class;
      
      private static var demonicCat1:Class;
      
      private static var demonicCat2:Class;
      
      private static var demonicEyeball1:Class;
      
      private static var demonicEyeball2:Class;
      
      private static var demonicEyeball3:Class;
      
      private static var dinoRex1:Class;
      
      private static var dinoRex2:Class;
      
      private static var dinoRex3:Class;
      
      private static var earthBear1:Class;
      
      private static var earthBear2:Class;
      
      private static var earthBeetle1:Class;
      
      private static var earthBeetle2:Class;
      
      private static var earthBeetle3:Class;
      
      private static var earthMole1:Class;
      
      private static var earthMole2:Class;
      
      private static var earthMole3:Class;
      
      private static var earthTortoiseWhite:Class;
      
      private static var earthWorm1:Class;
      
      private static var earthWorm2:Class;
      
      private static var earthWorm3:Class;
      
      private static var energyBoar1:Class;
      
      private static var energyBoar2:Class;
      
      private static var energyBoar3:Class;
      
      private static var energyCheetah1:Class;
      
      private static var energyCheetah2:Class;
      
      private static var energyCheetah3:Class;
      
      private static var energyJellyfish1:Class;
      
      private static var energyJellyfish2:Class;
      
      private static var energyScorpion1:Class;
      
      private static var energyScorpion2:Class;
      
      private static var energyScorpion3:Class;
      
      private static var featheredSerpent:Class;
      
      private static var fireMage:Class;
      
      private static var fireMonkey1:Class;
      
      private static var fireMonkey2:Class;
      
      private static var fireRaptor1:Class;
      
      private static var fireRaptor2:Class;
      
      private static var fireRaptor3:Class;
      
      private static var fireToad1:Class;
      
      private static var fireToad2:Class;
      
      private static var fireToad3:Class;
      
      private static var flyingGriffin1:Class;
      
      private static var flyingGriffin2:Class;
      
      private static var flyingHarpy:Class;
      
      private static var flyingOwl1:Class;
      
      private static var flyingOwl2:Class;
      
      private static var flyingSongbird1:Class;
      
      private static var flyingSongbird2:Class;
      
      private static var flyingSongbird3:Class;
      
      private static var holyBlueBell:Class;
      
      private static var holyFox:Class;
      
      private static var holyMantis:Class;
      
      private static var holyPinkBell:Class;
      
      private static var iceStag:Class;
      
      private static var iceTree1:Class;
      
      private static var iceTree2:Class;
      
      private static var normalArmadillo:Class;
      
      private static var normalArmadillo1:Class;
      
      private static var normalRaccoon1:Class;
      
      private static var normalRaccoon2:Class;
      
      private static var normalSlime1:Class;
      
      private static var normalSlime2:Class;
      
      private static var normalSlime3:Class;
      
      private static var normalTiger1:Class;
      
      private static var normalTiger2:Class;
      
      private static var plantGorilla1:Class;
      
      private static var plantGorilla2:Class;
      
      private static var plantLizard:Class;
      
      private static var plantSquid1:Class;
      
      private static var plantSquid2:Class;
      
      private static var plantSquid3:Class;
      
      private static var plantViper1:Class;
      
      private static var plantViper2:Class;
      
      private static var plantViper3:Class;
      
      private static var robotAnteater:Class;
      
      private static var robotAnteater1:Class;
      
      private static var robotBull:Class;
      
      private static var robotDeathCall:Class;
      
      private static var robotHummingbird:Class;
      
      private static var robotShark:Class;
      
      private static var undeadCrow1:Class;
      
      private static var undeadCrow2:Class;
      
      private static var undeadCrow3:Class;
      
      private static var undeadEel:Class;
      
      private static var undeadGolem:Class;
      
      private static var undeadLich1:Class;
      
      private static var undeadLich2:Class;
      
      private static var undeadLich3:Class;
      
      private static var undeadScarecrow1:Class;
      
      private static var undeadScarecrow2:Class;
      
      private static var undeadScarecrow3:Class;
      
      private static var undeadWarrior:Class;
      
      private static var waterDog1:Class;
      
      private static var waterDog2:Class;
      
      private static var waterHorse:Class;
      
      private static var waterKirin:Class;
      
      private static var waterLandShark:Class;
      
      private static var waterSeal1:Class;
      
      private static var waterSeal2:Class;
      
      private static var unknownMinion:Class;
      
      private static var moveIcon_crazed:Class;
      
      private static var moveIcon_dominate:Class;
      
      private static var moveIcon_titanBlast:Class;
      
      private static var moveIcon_titanHeal:Class;
      
      private static var moveIcon_titanLight:Class;
      
      private static var moveIcon_titanRecovery:Class;
      
      private static var moveIcon_titanSlam:Class;
      
      private static var moveIcon_titanSlash:Class;
      
      private static var moveIcon_kingsRush:Class;
      
      private static var moveIcon_agileInspiration:Class;
      
      private static var moveIcon_agility:Class;
      
      private static var moveIcon_alloyCoat:Class;
      
      private static var moveIcon_ancientForce:Class;
      
      private static var moveIcon_ashenReminder:Class;
      
      private static var moveIcon_avalanche:Class;
      
      private static var moveIcon_batchBolt:Class;
      
      private static var moveIcon_blaze:Class;
      
      private static var moveIcon_blindingJolt:Class;
      
      private static var moveIcon_bloodFusion:Class;
      
      private static var moveIcon_bloodPress:Class;
      
      private static var moveIcon_blowBy:Class;
      
      private static var moveIcon_boneChill:Class;
      
      private static var moveIcon_boneCrunch:Class;
      
      private static var moveIcon_brilliance:Class;
      
      private static var moveIcon_burn:Class;
      
      private static var moveIcon_chargeBlast:Class;
      
      private static var moveIcon_chargePass:Class;
      
      private static var moveIcon_chosenEarth:Class;
      
      private static var moveIcon_claw:Class;
      
      private static var moveIcon_cleanseDarkness:Class;
      
      private static var moveIcon_cleansingHeal:Class;
      
      private static var moveIcon_cleric:Class;
      
      private static var moveIcon_cogFallout:Class;
      
      private static var moveIcon_coldfront:Class;
      
      private static var moveIcon_concentration:Class;
      
      private static var moveIcon_crazedBlast:Class;
      
      private static var moveIcon_crusade:Class;
      
      private static var moveIcon_crush:Class;
      
      private static var moveIcon_cuttingWind:Class;
      
      private static var moveIcon_deadlyInspiration:Class;
      
      private static var moveIcon_deadTransfer:Class;
      
      private static var moveIcon_deathCall:Class;
      
      private static var moveIcon_deathlyEnergy:Class;
      
      private static var moveIcon_demonicBargain:Class;
      
      private static var moveIcon_demonicForce:Class;
      
      private static var moveIcon_demonicSacrifice:Class;
      
      private static var moveIcon_demonicStrike:Class;
      
      private static var moveIcon_demoralize:Class;
      
      private static var moveIcon_demoralizingCharge:Class;
      
      private static var moveIcon_destabalize:Class;
      
      private static var moveIcon_diamondInspiration:Class;
      
      private static var moveIcon_diamondSkin:Class;
      
      private static var moveIcon_download:Class;
      
      private static var moveIcon_drain:Class;
      
      private static var moveIcon_dryIce:Class;
      
      private static var moveIcon_earthBarrier:Class;
      
      private static var moveIcon_earthquake:Class;
      
      private static var moveIcon_earthShield:Class;
      
      private static var moveIcon_earthyFortitude:Class;
      
      private static var moveIcon_efficiency:Class;
      
      private static var moveIcon_energize:Class;
      
      private static var moveIcon_energizingInspiration:Class;
      
      private static var moveIcon_evilEye:Class;
      
      private static var moveIcon_ferocity:Class;
      
      private static var moveIcon_fireball:Class;
      
      private static var moveIcon_fireBash:Class;
      
      private static var moveIcon_fireBlast:Class;
      
      private static var moveIcon_fireBolt:Class;
      
      private static var moveIcon_fireRam:Class;
      
      private static var moveIcon_flareUp:Class;
      
      private static var moveIcon_fleshSacrifice:Class;
      
      private static var moveIcon_flurry:Class;
      
      private static var moveIcon_focus:Class;
      
      private static var moveIcon_focusedCharge:Class;
      
      private static var moveIcon_forcefulHeal:Class;
      
      private static var moveIcon_fortitude:Class;
      
      private static var moveIcon_freshStream:Class;
      
      private static var moveIcon_grassBlade:Class;
      
      private static var moveIcon_grind:Class;
      
      private static var moveIcon_hailstone:Class;
      
      private static var moveIcon_haunt:Class;
      
      private static var moveIcon_holyBurn:Class;
      
      private static var moveIcon_holyLight:Class;
      
      private static var moveIcon_holyStrike:Class;
      
      private static var moveIcon_hope:Class;
      
      private static var moveIcon_hulkInspiration:Class;
      
      private static var moveIcon_hurricane:Class;
      
      private static var moveIcon_iceBarrier:Class;
      
      private static var moveIcon_iceEnclosure:Class;
      
      private static var moveIcon_iceShield:Class;
      
      private static var moveIcon_icyBlast:Class;
      
      private static var moveIcon_infest:Class;
      
      private static var moveIcon_inflame:Class;
      
      private static var moveIcon_innerForce:Class;
      
      private static var moveIcon_intenseFlame:Class;
      
      private static var moveIcon_kindle:Class;
      
      private static var moveIcon_lichBurn:Class;
      
      private static var moveIcon_lifelessTouch:Class;
      
      private static var moveIcon_madness:Class;
      
      private static var moveIcon_martyr:Class;
      
      private static var moveIcon_mendingInspiration:Class;
      
      private static var moveIcon_metalMold:Class;
      
      private static var moveIcon_metalShield:Class;
      
      private static var moveIcon_meteorStrike:Class;
      
      private static var moveIcon_mirrorCoating:Class;
      
      private static var moveIcon_mirrorSkin:Class;
      
      private static var moveIcon_mortify:Class;
      
      private static var moveIcon_mudBlast:Class;
      
      private static var moveIcon_mysticIce:Class;
      
      private static var moveIcon_needleBarrage:Class;
      
      private static var moveIcon_nourish:Class;
      
      private static var moveIcon_oreDrill:Class;
      
      private static var moveIcon_overflow:Class;
      
      private static var moveIcon_overload:Class;
      
      private static var moveIcon_peck:Class;
      
      private static var moveIcon_penance:Class;
      
      private static var moveIcon_persaverance:Class;
      
      private static var moveIcon_phantomStrike:Class;
      
      private static var moveIcon_piercingCharge:Class;
      
      private static var moveIcon_platinum:Class;
      
      private static var moveIcon_poisonIvy:Class;
      
      private static var moveIcon_poisonTooth:Class;
      
      private static var moveIcon_pound:Class;
      
      private static var moveIcon_prehistoricBite:Class;
      
      private static var moveIcon_priest:Class;
      
      private static var moveIcon_purge:Class;
      
      private static var moveIcon_quickness:Class;
      
      private static var moveIcon_rainfall:Class;
      
      private static var moveIcon_rancidBite:Class;
      
      private static var moveIcon_razorVine:Class;
      
      private static var moveIcon_recklessDash:Class;
      
      private static var moveIcon_recklessGrasp:Class;
      
      private static var moveIcon_refreshingWave:Class;
      
      private static var moveIcon_regrowth:Class;
      
      private static var moveIcon_resurgence:Class;
      
      private static var moveIcon_righteousFate:Class;
      
      private static var moveIcon_righteousZeal:Class;
      
      private static var moveIcon_roar:Class;
      
      private static var moveIcon_rockBlast:Class;
      
      private static var moveIcon_rockSkin:Class;
      
      private static var moveIcon_rockSlide:Class;
      
      private static var moveIcon_rockThrow:Class;
      
      private static var moveIcon_sear:Class;
      
      private static var moveIcon_serenity:Class;
      
      private static var moveIcon_skillfull:Class;
      
      private static var moveIcon_skinTrap:Class;
      
      private static var moveIcon_sleet:Class;
      
      private static var moveIcon_slow:Class;
      
      private static var moveIcon_soak:Class;
      
      private static var moveIcon_solder:Class;
      
      private static var moveIcon_spark:Class;
      
      private static var moveIcon_spike:Class;
      
      private static var moveIcon_sporeBlast:Class;
      
      private static var moveIcon_staticPummel:Class;
      
      private static var moveIcon_steelSpike:Class;
      
      private static var moveIcon_stoneFall:Class;
      
      private static var moveIcon_stonequake:Class;
      
      private static var moveIcon_stun:Class;
      
      private static var moveIcon_swiftMend:Class;
      
      private static var moveIcon_tackle:Class;
      
      private static var moveIcon_taunt:Class;
      
      private static var moveIcon_thunderstorm:Class;
      
      private static var moveIcon_timber:Class;
      
      private static var moveIcon_tire:Class;
      
      private static var moveIcon_touchFire:Class;
      
      private static var moveIcon_treeSlam:Class;
      
      private static var moveIcon_twinMissile:Class;
      
      private static var moveIcon_vicious:Class;
      
      private static var moveIcon_volley:Class;
      
      private static var moveIcon_warmth:Class;
      
      private static var moveIcon_waterInfusion:Class;
      
      private static var moveIcon_waterJet:Class;
      
      private static var moveIcon_waterSlam:Class;
      
      private static var moveIcon_wildfire:Class;
      
      private static var moveIcon_wildLance:Class;
      
      private static var moveIcon_wildTackle:Class;
      
      private static var moveIcon_windLance:Class;
      
      private static var menus_minionType_earth:Class;
      
      private static var menus_minionType_plant:Class;
      
      private static var menus_minionType_undead:Class;
      
      private static var menus_minionType_demonic:Class;
      
      private static var menus_minionType_dino:Class;
      
      private static var menus_minionType_energy:Class;
      
      private static var menus_minionType_fire:Class;
      
      private static var menus_minionType_flying:Class;
      
      private static var menus_minionType_holy:Class;
      
      private static var menus_minionType_ice:Class;
      
      private static var menus_minionType_robot:Class;
      
      private static var menus_minionType_titan:Class;
      
      private static var menus_minionType_water:Class;
      
      private static var menus_minionType_normal:Class;
      
      private static var moveDescription_type_earth:Class;
      
      private static var moveDescription_type_plant:Class;
      
      private static var moveDescription_type_undead:Class;
      
      private static var moveDescription_type_demonic:Class;
      
      private static var moveDescription_type_dino:Class;
      
      private static var moveDescription_type_energy:Class;
      
      private static var moveDescription_type_fire:Class;
      
      private static var moveDescription_type_flying:Class;
      
      private static var moveDescription_type_holy:Class;
      
      private static var moveDescription_type_ice:Class;
      
      private static var moveDescription_type_robot:Class;
      
      private static var moveDescription_type_titan:Class;
      
      private static var moveDescription_type_water:Class;
      
      private static var moveDescription_type_normal:Class;
      
      private static var roomSelect_grandSageIcon:Class;
      
      private static var roomSelect_plantRoom:Class;
      
      private static var roomSelect_fireRoom:Class;
      
      private static var roomSelect_electricRoom:Class;
      
      private static var roomSelect_undeadRoom:Class;
      
      private static var roomSelect_towerTop:Class;
      
      private static var roomSelect_towerCovered:Class;
      
      private static var roomSelect_towerCoveredLock:Class;
      
      private static var roomSelect_returnButton:Class;
      
      private static var roomSelect_roomFont_0:Class;
      
      private static var roomSelect_roomFont_1:Class;
      
      private static var roomSelect_roomFont_2:Class;
      
      private static var roomSelect_roomFont_3:Class;
      
      private static var roomSelect_roomFont_4:Class;
      
      private static var roomSelect_roomFont_5:Class;
      
      private static var roomSelect_roomFont_6:Class;
      
      private static var roomSelect_roomFont_7:Class;
      
      private static var roomSelect_roomFont_8:Class;
      
      private static var roomSelect_roomFont_9:Class;
      
      private static var roomSelect_roomInformationBackground:Class;
      
      private static var roomSelect_roomInformationGoButton:Class;
      
      private static var roomSelect_roomInformationNewIcon:Class;
      
      private static var roomSelect_tempCharIcon:Class;
      
      private static var roomSelect_upArrow:Class;
      
      private static var roomSelect_maleIcon:Class;
      
      private static var roomSelect_femaleIcon:Class;
      
      private static var roomSelect_background_stars:Class;
      
      private static var roomSelect_roomInformationStars:Class;
      
      private static var roomSelect_background_frontMountains:Class;
      
      private static var roomSelect_roomFont_z:Class;
      
      private static var roomSelect_electricRares:Class;
      
      private static var roomSelect_fireRares:Class;
      
      private static var roomSelect_grassRares:Class;
      
      private static var roomSelect_undeadRares:Class;
      
      private static var roomSelect_normalModeButton:Class;
      
      private static var roomSelect_hardModeButton:Class;
      
      private static var roomSelect_normalModeButton_off:Class;
      
      private static var roomSelect_hardModeButton_off:Class;
      
      private static var roomSelect_hardModeTab:Class;
      
      private static var whiteFadeBackground:Class;
      
      private static var menu_skipIntroButton:Class;
      
      private static var menu_muteMusicButton_off:Class;
      
      private static var menu_muteMusicButton_on:Class;
      
      private static var menu_muteSoundButton_off:Class;
      
      private static var menu_muteSoundButton_on:Class;
      
      private static var mainMenu_characterCreation_editNameButton:Class;
      
      private static var mainMenu_characterCreation_femaleIcon:Class;
      
      private static var mainMenu_characterCreation_maleFemaleSelectedIcon:Class;
      
      private static var mainMenu_characterCreation_maleIcon:Class;
      
      private static var mainMenu_characterCreation_okButton:Class;
      
      private static var mainMenu_characterCreationBackground:Class;
      
      private static var mainMenu_creditsButton:Class;
      
      private static var mainMenu_ourLogo:Class;
      
      private static var mainMenu_playButton:Class;
      
      private static var mainMenu_saveSlot_gymBadge:Class;
      
      private static var mainMenu_saveSlot_starIcon:Class;
      
      private static var mainMenu_saveSlotBackground:Class;
      
      private static var mainMenu_saveSlotFilled:Class;
      
      private static var mainMenu_hostGamesLogo:Class;
      
      private static var mainMenu_titleLogo:Class;
      
      private static var mainMenu_titleScreen_background:Class;
      
      private static var mainMenu_titleScreen_ourLogo:Class;
      
      private static var mainMenu_titleScreen_sponsorLogo:Class;
      
      private static var mainMenu_credits_background:Class;
      
      private static var mainMenu_credits_returnButton:Class;
      
      private static var mainMenu_saveSlot_deleteButton:Class;
      
      private static var mainMenu_characterCreation_maleIcon_fullSized:Class;
      
      private static var mainMenu_characterCreation_femaleIcon_fullSized:Class;
      
      private static var mainMenu_titleScreen_doorLeft:Class;
      
      private static var mainMenu_titleScreen_doorRight:Class;
      
      private static var mainMenu_titleScreen_doorLeft_glow:Class;
      
      private static var mainMenu_titleScreen_doorRight_glow:Class;
      
      private static var mainMenu_titleScreen_doorCracksGlow:Class;
      
      private static var mainMenu_doorAnimationMask1:Class;
      
      private static var titleScreen_electricSageStone:Class;
      
      private static var titleScreen_fireSageStone:Class;
      
      private static var titleScreen_plantSageStone:Class;
      
      private static var titleScreen_plantWizardSageStone:Class;
      
      private static var titleScreen_undeadSageStone:Class;
      
      private static var titleScreen_undeadWizardSageStone:Class;
      
      private static var mv_crown:Class;
      
      private static var mv_starburst:Class;
      
      private static var mv_titanBlast:Class;
      
      private static var mv_titanFist:Class;
      
      private static var mv_titanHeal:Class;
      
      private static var mv_titanSword:Class;
      
      private static var mv_crazed:Class;
      
      private static var mv_fireball:Class;
      
      private static var mv_rock1:Class;
      
      private static var mv_arcFlame:Class;
      
      private static var mv_clawNoFur:Class;
      
      private static var mv_poisonDrop:Class;
      
      private static var mv_iceShield:Class;
      
      private static var mv_yellowAndOrangeImpact:Class;
      
      private static var mv_fireFist:Class;
      
      private static var mv_soundWaves:Class;
      
      private static var mv_fireBlast:Class;
      
      private static var mv_skullAndFlames:Class;
      
      private static var mv_screamingGhost:Class;
      
      private static var mv_blueLightningBolt:Class;
      
      private static var mv_orangeHealthSymbol:Class;
      
      private static var mv_fireRam:Class;
      
      private static var mv_cog:Class;
      
      private static var mv_ancientForce:Class;
      
      private static var mv_meteor:Class;
      
      private static var mv_missle:Class;
      
      private static var mv_lightBeam:Class;
      
      private static var mv_hailstone:Class;
      
      private static var mv_steelSpike:Class;
      
      private static var mv_rock2:Class;
      
      private static var mv_fireBolt:Class;
      
      private static var mv_raindrop:Class;
      
      private static var mv_downwardAirImpact:Class;
      
      private static var mv_snowflake:Class;
      
      private static var mv_lightningBolt:Class;
      
      private static var mv_bloodSymbol:Class;
      
      private static var mv_diamondRocks:Class;
      
      private static var mv_greenSkull:Class;
      
      private static var mv_rottenHeart:Class;
      
      private static var mv_goldMask:Class;
      
      private static var mv_stoneBarrier:Class;
      
      private static var mv_nuclearWater:Class;
      
      private static var mv_iceBarrier:Class;
      
      private static var mv_metalMold:Class;
      
      private static var mv_drill:Class;
      
      private static var mv_beak:Class;
      
      private static var mv_fang:Class;
      
      private static var mv_fallingWater:Class;
      
      private static var mv_lightningFist:Class;
      
      private static var mv_waterJet:Class;
      
      private static var mv_waterFist:Class;
      
      private static var mv_roughFist:Class;
      
      private static var mv_sword:Class;
      
      private static var mv_spikeCluster:Class;
      
      private static var mv_tire:Class;
      
      private static var mv_raindropHealSymbol:Class;
      
      private static var mv_healSignGreen:Class;
      
      private static var mv_leafWithSkull:Class;
      
      private static var mv_sprout:Class;
      
      private static var mv_spores:Class;
      
      private static var mv_spider:Class;
      
      private static var mv_eyeball:Class;
      
      private static var mv_blueHorizontalBolt:Class;
      
      private static var mv_smallYellowImpact:Class;
      
      private static var mv_holyBurn:Class;
      
      private static var mv_hornedskull:Class;
      
      private static var mv_demonicSacrifice:Class;
      
      private static var mv_bearTrap:Class;
      
      private static var mv_leafYinYang:Class;
      
      private static var mv_demonEye:Class;
      
      private static var mv_boltEye:Class;
      
      private static var mv_brokenBone:Class;
      
      private static var mv_eyes:Class;
      
      private static var mv_frozenSkull:Class;
      
      private static var mv_grossMouth:Class;
      
      private static var mv_stream:Class;
      
      private static var mv_skeletonGhost:Class;
      
      private static var mv_mirror:Class;
      
      private static var mv_handsShake:Class;
      
      private static var mv_bloodPress:Class;
      
      private static var mv_blueSwoopingArrows:Class;
      
      private static var mv_swoopingArrows:Class;
      
      private static var mv_mudBlast:Class;
      
      private static var mv_metalPlate:Class;
      
      private static var mv_lightningBlast:Class;
      
      private static var mv_iceBlast:Class;
      
      private static var mv_crazyBlast:Class;
      
      private static var mv_windBlade:Class;
      
      private static var mv_tricerotopsHead:Class;
      
      private static var mv_cuttingWind:Class;
      
      private static var mv_rockBlast:Class;
      
      private static var mv_sideDash:Class;
      
      private static var mv_staticBolt:Class;
      
      private static var mv_blueLightBurst:Class;
      
      private static var mv_greenHealHand:Class;
      
      private static var mv_brokenShield:Class;
      
      private static var mv_focusedCharge:Class;
      
      private static var mv_demonFist:Class;
      
      private static var mv_dinoClaw:Class;
      
      private static var mv_ghostFist:Class;
      
      private static var mv_holyFist:Class;
      
      private static var mv_leafSword:Class;
      
      private static var mv_purpleFist:Class;
      
      private static var mv_skeletonHand:Class;
      
      private static var mv_holyHand:Class;
      
      private static var mv_radianceArcs:Class;
      
      private static var mv_reaper:Class;
      
      private static var mv_dryIce:Class;
      
      private static var mv_earthShield:Class;
      
      private static var mv_shield:Class;
      
      private static var mv_pinkHands:Class;
      
      private static var mv_dinoHeadPowerUp:Class;
      
      private static var mv_blueHands:Class;
      
      private static var mv_purpleCrystal:Class;
      
      private static var mv_earthlyFortitude:Class;
      
      private static var mv_yellowLightRays:Class;
      
      private static var mv_touchFire:Class;
      
      private static var mv_goldSword:Class;
      
      private static var mv_handsAndPlant:Class;
      
      private static var mv_binary:Class;
      
      private static var mv_drain:Class;
      
      private static var mv_sparks:Class;
      
      private static var mv_staticBurst:Class;
      
      private static var mv_lightCircle:Class;
      
      private static var mv_plank:Class;
      
      private static var mv_bullet:Class;
      
      private static var mv_spiderweb:Class;
      
      private static var mv_motionArcsBlue:Class;
      
      private static var mv_motionArcsYellow:Class;
      
      private static var mv_razorWhip:Class;
      
      private static var mv_wave:Class;
      
      private static var mv_teethSet:Class;
      
      private static var mv_flameWithFace:Class;
      
      private static var mv_blueMysticalFlame:Class;
      
      private static var mv_whirlwind:Class;
      
      private static var mv_fireStrip:Class;
      
      private static var mv_lance:Class;
      
      private static var mv_windLance:Class;
      
      private static var mv_poundFist:Class;
      
      private static var mv_pawGrind:Class;
      
      private static var mv_inflame:Class;
      
      private static var mv_kindle:Class;
      
      private static var mv_vines:Class;
      
      private static var mv_alloyBall:Class;
      
      private static var mv_ashenReminder:Class;
      
      private static var generalRoom_titanEgg:Class;
      
      private static var generalRoom_fountain:Class;
      
      private static var generalRoom_titanDoorGaurd1:Class;
      
      private static var generalRoom_titanDoorGaurd2:Class;
      
      private static var generalRoom_sideMosaic:Class;
      
      private static var generalRoom_titanEggPit_back:Class;
      
      private static var generalRoom_titanEggPit_front:Class;
      
      private static var generalRoom_titanStatue:Class;
      
      private static var generalRoom_gymDais:Class;
      
      private static var generalRoom_detailTapestry_undead:Class;
      
      private static var generalRoom_genericTapestry_demon:Class;
      
      private static var generalRoom_genericTapestry_dino:Class;
      
      private static var generalRoom_genericTapestry_electric:Class;
      
      private static var generalRoom_genericTapestry_undead:Class;
      
      private static var generalRoom_genericTapestrySide_demon:Class;
      
      private static var generalRoom_genericTapestrySide_dino:Class;
      
      private static var generalRoom_genericTapestrySide_electric:Class;
      
      private static var generalRoom_genericTapestrySide_undead:Class;
      
      private static var generalRoom_purple_floorRunner_rotationConnect:Class;
      
      private static var generalRoom_purple_floorRunnerMid1:Class;
      
      private static var generalRoom_purple_floorRunnerMid2:Class;
      
      private static var generalRoom_purple_floorRunnerTop:Class;
      
      private static var generalRoom_lobby_bottomDoor:Class;
      
      private static var generalRoom_lobby_sideDoor:Class;
      
      private static var generalRoom_lobby_topDoor:Class;
      
      private static var generalRoom_bottomTorch_undead:Class;
      
      private static var generalRoom_sideTorch_undead:Class;
      
      private static var generalRoom_topTorch_undead:Class;
      
      private static var generalRoom_yellow_floorRunner_rotationConnect:Class;
      
      private static var generalRoom_yellow_floorRunnerMid1:Class;
      
      private static var generalRoom_yellow_floorRunnerMid2:Class;
      
      private static var generalRoom_yellow_floorRunnerTop:Class;
      
      private static var generalRoom_topTorch_electric:Class;
      
      private static var generalRoom_sideTorch_electric:Class;
      
      private static var generalRoom_bottomTorch_electric:Class;
      
      private static var generalRoom_electricGymStatue:Class;
      
      private static var generalRoom_electricMedallionStatue:Class;
      
      private static var generalRoom_fireMedallionStatue:Class;
      
      private static var generalRoom_fireGymStatue:Class;
      
      private static var generalRoom_plantGymStatue:Class;
      
      private static var generalRoom_plantMedallionStatue:Class;
      
      private static var generalRoom_plantWizardMedallionStatue:Class;
      
      private static var generalRoom_statuePedestal:Class;
      
      private static var generalRoom_undeadGymStatue:Class;
      
      private static var generalRoom_undeadMedallionStatue:Class;
      
      private static var generalRoom_undeadWizardMedallionStatue:Class;
      
      private static var generalRoom_detailTapestry_dino:Class;
      
      private static var miniMap_background:Class;
      
      private static var miniMap_hallway_floor1:Class;
      
      private static var miniMap_hallway_floor2:Class;
      
      private static var miniMap_hallway_floor3:Class;
      
      private static var miniMap_hallway_floor4_1:Class;
      
      private static var miniMap_hallway_floor4_2:Class;
      
      private static var miniMap_hallway_floor4_3:Class;
      
      private static var miniMap_hallway_floor5_1:Class;
      
      private static var miniMap_hallway_floor5_2:Class;
      
      private static var miniMap_hallway_floor6:Class;
      
      private static var miniMap_hallway_floor7:Class;
      
      private static var miniMap_hallway_floor8_1:Class;
      
      private static var miniMap_hallway_floor8_2:Class;
      
      private static var miniMap_hallway_floor9:Class;
      
      private static var miniMap_hallway_floor10:Class;
      
      private static var miniMap_hallway_floor11:Class;
      
      private static var miniMap_hallway_floor13_1:Class;
      
      private static var miniMap_hallway_floor13_2:Class;
      
      private static var miniMap_hallway_floor13_3:Class;
      
      private static var miniMap_hallway_floor14:Class;
      
      private static var miniMap_hallway_floor15:Class;
      
      private static var miniMap_hallway_floor16:Class;
      
      private static var miniMap_hallway_floor17:Class;
      
      private static var miniMap_hallway_floor18:Class;
      
      private static var miniMap_hallway_floor19:Class;
      
      private static var miniMap_hallway_floor20:Class;
      
      private static var miniMap_hallway_floor21:Class;
      
      private static var miniMap_hallway_floor22:Class;
      
      private static var miniMap_hallway_floor23:Class;
      
      private static var miniMap_hallway_floor24:Class;
      
      private static var miniMap_hwaySmall_vert:Class;
      
      private static var miniMap_hwaySmall_hori:Class;
      
      private static var miniMap_room1:Class;
      
      private static var miniMap_eggeryOverlay:Class;
       
      
      private var MAIN_FONT:Class;
      
      private var m_currSSIndex:Array;
      
      private var m_currSS:Array;
      
      private var m_objectPool:Array;
      
      public function SpriteHandler()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Boolean(this))
         {
            this.MAIN_FONT = SpriteHandler_MAIN_FONT;
            if(!_loc1_)
            {
               super();
               if(_loc2_ || Boolean(this))
               {
                  this.m_objectPool = new Array();
               }
            }
         }
      }
      
      public function CreateSprite(param1:String) : Sprite
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Sprite = null;
         var _loc3_:Bitmap = null;
         var _loc4_:Vector.<Bitmap> = null;
         var _loc6_:int = 0;
         _loc2_ = new Sprite();
         if(!_loc8_)
         {
            §§push(this.m_objectPool);
            if(!_loc8_)
            {
               §§push(param1);
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  if(§§pop()[§§pop()] == null)
                  {
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        addr52:
                        §§push(this.m_objectPool);
                        if(_loc7_)
                        {
                           addr67:
                           addr56:
                           §§push(param1);
                           if(_loc7_)
                           {
                              §§pop()[§§pop()] = new Vector.<Bitmap>();
                              addr64:
                              §§push(this.m_objectPool);
                           }
                           var _loc5_:int = (_loc4_ = §§pop()[§§pop()]).length / 2;
                           if(!(_loc8_ && Boolean(_loc3_)))
                           {
                              _loc6_ = 0;
                           }
                           do
                           {
                              if(_loc6_ >= _loc4_.length)
                              {
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 if(_loc4_[_loc6_].parent.parent != null)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    _loc2_ = _loc4_[_loc6_].parent as Sprite;
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       _loc2_.visible = true;
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          _loc2_.x = 0;
                                       }
                                       _loc2_.y = 0;
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       _loc2_.rotation = 0;
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr146);
                                       }
                                       §§goto(addr156);
                                    }
                                    addr146:
                                    _loc2_.scaleX = 1;
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                       addr156:
                                       _loc2_.scaleY = 1;
                                       _loc2_.alpha = 1;
                                       if(_loc8_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                    }
                                    return _loc2_;
                                 }
                                 addr197:
                                 _loc3_ = new Bitmap(this.GetBitmapData(param1));
                                 if(_loc7_)
                                 {
                                    _loc4_.push(_loc3_);
                                 }
                                 _loc2_.addChild(_loc3_);
                              }
                              §§goto(addr212);
                           }
                           while(_loc6_++, _loc7_);
                           
                           if(_loc3_ == null)
                           {
                              if(!_loc8_)
                              {
                                 §§goto(addr197);
                              }
                              addr212:
                              return _loc2_;
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr67);
                        §§push(param1);
                     }
                  }
                  §§goto(addr64);
               }
               §§goto(addr67);
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      public function CreateSpriteRemapColor(param1:String, param2:int, param3:int, param4:int) : Sprite
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Sprite = null;
         var _loc6_:BitmapData = null;
         _loc5_ = new Sprite();
         _loc6_ = Singleton.utility.m_spriteHandler.GetBitmapData(param1);
         _loc6_ = Singleton.utility.m_spriteHandler.RemapMagenta(_loc6_,param2,param3,param4);
         if(!(_loc7_ && Boolean(this)))
         {
            _loc5_.addChild(new Bitmap(_loc6_));
         }
         return _loc5_;
      }
      
      public function RemapMagenta(param1:BitmapData, param2:int, param3:int, param4:int) : BitmapData
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:ByteArray = null;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:* = 0;
         var _loc9_:uint = 0;
         var _loc10_:* = NaN;
         _loc6_ = int((_loc5_ = param1.getPixels(param1.rect)).length);
         loop0:
         while(true)
         {
            §§push(_loc6_);
            while(true)
            {
               var _loc11_:*;
               §§push(_loc11_ = §§pop() - 4);
               if(!(_loc13_ && Boolean(param3)))
               {
                  _loc6_ = §§pop();
                  §§push(_loc11_);
               }
               if(§§pop() >= 0)
               {
                  _loc7_ = uint(_loc5_[_loc6_ + 1]);
                  if(!_loc13_)
                  {
                     §§push(uint(_loc5_[_loc6_ + 2]));
                     if(_loc12_ || Boolean(param1))
                     {
                        _loc8_ = §§pop();
                        if(_loc12_)
                        {
                           _loc9_ = uint(_loc5_[_loc6_ + 3]);
                           if(_loc12_)
                           {
                              §§push(_loc7_);
                              if(!_loc13_)
                              {
                                 §§goto(addr78);
                              }
                              §§goto(addr198);
                           }
                           break;
                        }
                        §§goto(addr280);
                     }
                     addr78:
                     §§push(0);
                     if(_loc12_ || Boolean(param2))
                     {
                        §§push(§§pop() > §§pop());
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 §§pop();
                                 §§push(_loc7_ == _loc9_);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        §§push(0);
                        if(_loc13_ && Boolean(param3))
                        {
                           continue;
                        }
                        _loc10_ = §§pop();
                        if(!_loc13_)
                        {
                           §§push(_loc7_);
                           if(!_loc13_)
                           {
                              §§push(255);
                              if(_loc12_ || Boolean(param3))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc13_ && Boolean(param3)))
                                    {
                                       §§push(_loc8_);
                                       if(!_loc13_)
                                       {
                                          §§push(255);
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc10_ = §§pop();
                                             addr147:
                                             _loc5_[_loc6_ + 1] = param2 + Math.round((255 - param2) * _loc10_);
                                             _loc5_[_loc6_ + 2] = param3 + Math.round((255 - param3) * _loc10_);
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr210:
                                          §§push(255);
                                       }
                                       addr211:
                                       _loc10_ = §§pop() / §§pop();
                                       _loc5_[_loc6_ + 1] = Math.round(param2 * _loc10_);
                                       if(_loc12_)
                                       {
                                          _loc5_[_loc6_ + 2] = Math.round(param3 * _loc10_);
                                          _loc5_[_loc6_ + 3] = Math.round(param4 * _loc10_);
                                          if(_loc12_ || Boolean(this))
                                          {
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr288);
                                    }
                                    §§goto(addr147);
                                 }
                                 else
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc13_ && Boolean(param3)))
                                    {
                                       addr198:
                                       §§push(0);
                                       if(!_loc13_)
                                       {
                                          §§goto(addr201);
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           §§goto(addr198);
                        }
                        else
                        {
                           §§goto(addr280);
                        }
                     }
                     addr201:
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc13_ && Boolean(param2)))
                        {
                           §§goto(addr210);
                           §§push(_loc7_);
                        }
                        else
                        {
                           addr283:
                           param1.setPixels(param1.rect,_loc5_);
                        }
                        addr288:
                        return param1;
                     }
                     continue loop0;
                  }
                  break;
               }
               if(!_loc13_)
               {
                  addr280:
                  _loc5_.position = 0;
               }
               §§goto(addr283);
            }
            _loc5_[_loc6_ + 3] = param4 + Math.round((255 - param4) * _loc10_);
         }
      }
      
      public function RemapCyan(param1:BitmapData, param2:int, param3:int, param4:int) : BitmapData
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:ByteArray = null;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:* = 0;
         var _loc9_:uint = 0;
         var _loc10_:* = NaN;
         _loc6_ = int((_loc5_ = param1.getPixels(param1.rect)).length);
         loop0:
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               §§push(§§pop() - 4);
               if(_loc12_ || Boolean(param1))
               {
                  var _loc11_:*;
                  §§push(_loc11_ = §§pop());
                  if(_loc12_ || Boolean(param1))
                  {
                     _loc6_ = §§pop();
                     §§push(_loc11_);
                  }
               }
               while(true)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc13_ && Boolean(param1)))
                     {
                        _loc5_.position = 0;
                        addr320:
                        param1.setPixels(param1.rect,_loc5_);
                        break;
                     }
                     break;
                  }
                  _loc7_ = uint(_loc5_[_loc6_ + 1]);
                  §§push(uint(_loc5_[_loc6_ + 2]));
                  if(_loc12_)
                  {
                     _loc8_ = §§pop();
                     _loc9_ = uint(_loc5_[_loc6_ + 3]);
                     if(!(_loc13_ && Boolean(param2)))
                     {
                        addr72:
                        §§push(_loc8_);
                        §§push(0);
                        if(!_loc13_)
                        {
                           §§push(§§pop() > §§pop());
                           if(_loc12_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    addr87:
                                    §§pop();
                                    §§push(_loc8_ == _loc9_);
                                 }
                              }
                              if(!§§pop())
                              {
                                 continue loop0;
                              }
                              if(_loc13_ && Boolean(this))
                              {
                                 continue loop0;
                              }
                              §§push(0);
                              if(_loc13_ && Boolean(param1))
                              {
                                 continue loop1;
                              }
                              §§push(§§pop());
                              if(_loc12_ || Boolean(param3))
                              {
                                 _loc10_ = §§pop();
                                 addr116:
                                 §§push(_loc8_);
                                 if(!(_loc13_ && Boolean(this)))
                                 {
                                    §§push(255);
                                    if(_loc12_ || Boolean(param3))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc13_ && Boolean(param3)))
                                          {
                                             §§push(_loc7_);
                                             if(!_loc13_)
                                             {
                                                §§push(255);
                                                if(_loc12_ || Boolean(param2))
                                                {
                                                   _loc10_ = §§pop() / §§pop();
                                                   addr151:
                                                   if(!(_loc12_ || Boolean(param2)))
                                                   {
                                                      continue loop0;
                                                   }
                                                   _loc5_[_loc6_ + 1] = param2 + Math.round((255 - param2) * _loc10_);
                                                   if(!(_loc13_ && Boolean(this)))
                                                   {
                                                      _loc5_[_loc6_ + 2] = param3 + Math.round((255 - param3) * _loc10_);
                                                      _loc5_[_loc6_ + 3] = param4 + Math.round((255 - param4) * _loc10_);
                                                      if(!(_loc13_ && Boolean(this)))
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr320);
                                                   }
                                                }
                                                else
                                                {
                                                   addr241:
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                   addr245:
                                                   _loc10_ = §§pop();
                                                   addr246:
                                                   _loc5_[_loc6_ + 1] = Math.round(param2 * _loc10_);
                                                   _loc5_[_loc6_ + 2] = Math.round(param3 * _loc10_);
                                                }
                                                _loc5_[_loc6_ + 3] = Math.round(param4 * _loc10_);
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             addr240:
                                             §§goto(addr241);
                                             §§push(255);
                                             §§goto(addr241);
                                          }
                                          §§goto(addr246);
                                       }
                                       else
                                       {
                                          §§push(_loc7_);
                                          if(_loc12_ || Boolean(param2))
                                          {
                                             §§push(0);
                                             if(_loc12_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      §§goto(addr240);
                                                      §§push(_loc7_);
                                                   }
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr245);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr241);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr72);
                  §§goto(addr320);
               }
               return param1;
            }
         }
      }
      
      public function GetBitmapData(param1:String) : BitmapData
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Class = null;
         var _loc3_:Array = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         _loc2_ = SpriteHandler[param1] as Class;
         if(!_loc7_)
         {
            if(_loc2_ == null)
            {
               _loc3_ = this.m_currSSIndex[param1];
               (_loc4_ = new BitmapData(_loc3_[6],_loc3_[7],true,16777215)).copyPixels(this.m_currSS[_loc3_[8]],new Rectangle(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]),new Point(_loc3_[4],_loc3_[5]));
               return _loc4_;
            }
         }
         return (_loc5_ = new _loc2_() as Bitmap).bitmapData;
      }
      
      public function LoadSpriteSheets() : void
      {
      }
      
      public function CreateSSIndexArray(param1:ByteArray, param2:int = 0, param3:Boolean = false) : Array
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc4_:ByteArray = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         _loc4_ = param1;
         _loc5_ = _loc4_.readUTFBytes(_loc4_.length);
         _loc6_ = new XML(_loc5_);
         if(_loc12_)
         {
            if(param3)
            {
               §§goto(addr52);
            }
            else
            {
               _loc7_ = new Array();
            }
            §§goto(addr63);
         }
         addr52:
         _loc7_ = this.m_currSSIndex;
         if(_loc12_)
         {
            addr63:
            _loc10_ = 0;
         }
         while(_loc10_ < _loc6_.*.length())
         {
            if(_loc6_.sprite[_loc10_].@oX.length() == 0)
            {
               if(!_loc12_)
               {
                  break;
               }
               _loc8_ = new Array(_loc6_.sprite[_loc10_].@x,_loc6_.sprite[_loc10_].@y,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,0,0,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,param2);
               if(!(_loc12_ || Boolean(this)))
               {
                  continue;
               }
            }
            else
            {
               _loc8_ = new Array(_loc6_.sprite[_loc10_].@x,_loc6_.sprite[_loc10_].@y,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,_loc6_.sprite[_loc10_].@oX,_loc6_.sprite[_loc10_].@oY,_loc6_.sprite[_loc10_].@oW,_loc6_.sprite[_loc10_].@oH,param2);
            }
            §§push(_loc6_.sprite[_loc10_].@n);
            if(!(_loc11_ && param3))
            {
               §§push(§§pop());
               if(_loc12_)
               {
                  §§push(_loc9_ = §§pop());
               }
               §§push(String(§§pop().slice(§§pop().indexOf("/") + 1)));
            }
            _loc9_ = §§pop();
            if(!_loc11_)
            {
               _loc7_[_loc9_] = _loc8_;
               if(_loc12_)
               {
                  _loc10_++;
               }
            }
         }
         return _loc7_;
      }
   }
}
