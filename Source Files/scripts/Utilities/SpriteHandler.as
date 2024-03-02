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
      
      private static var collRect:Class = SpriteHandler_collRect;
      
      private static var buttonZoneObject:Class = SpriteHandler_buttonZoneObject;
      
      private static var regularDoor:Class = SpriteHandler_regularDoor;
      
      private static var battleScreenCurrMinionsTurn:Class = SpriteHandler_battleScreenCurrMinionsTurn;
      
      private static var miniMapTest:Class = SpriteHandler_miniMapTest;
      
      private static var roomTransitionObject:Class = SpriteHandler_roomTransitionObject;
      
      private static var entryObject:Class = SpriteHandler_entryObject;
      
      private static var modStone_extraMinionOnDeathStone:Class = SpriteHandler_modStone_extraMinionOnDeathStone;
      
      private static var modStone_extraMinionCrystal:Class = SpriteHandler_modStone_extraMinionCrystal;
      
      private static var modStone_extraMoveStone:Class = SpriteHandler_modStone_extraMoveStone;
      
      private static var modStone_resurection:Class = SpriteHandler_modStone_resurection;
      
      private static var modStone_shield:Class = SpriteHandler_modStone_shield;
      
      private static var modStone_shieldStone:Class = SpriteHandler_modStone_shieldStone;
      
      private static var modStone_shieldStoneCounterIcon:Class = SpriteHandler_modStone_shieldStoneCounterIcon;
      
      private static var modStone_tombstone:Class = SpriteHandler_modStone_tombstone;
      
      private static var modStone_extraMoveYourBuffBackground:Class = SpriteHandler_modStone_extraMoveYourBuffBackground;
      
      private static var groundCrack_1:Class = SpriteHandler_groundCrack_1;
      
      private static var groundCrack_2:Class = SpriteHandler_groundCrack_2;
      
      private static var groundCrack_3:Class = SpriteHandler_groundCrack_3;
      
      private static var groundCrack_4:Class = SpriteHandler_groundCrack_4;
      
      private static var battleScreenIntro_teleportPiece1:Class = SpriteHandler_battleScreenIntro_teleportPiece1;
      
      private static var battleScreenIntro_teleportPiece2:Class = SpriteHandler_battleScreenIntro_teleportPiece2;
      
      private static var battleScreenIntro_teleportPiece3:Class = SpriteHandler_battleScreenIntro_teleportPiece3;
      
      private static var battleScreenIntro_teleportPiece4:Class = SpriteHandler_battleScreenIntro_teleportPiece4;
      
      private static var battleScreenIntro_teleportPiece5:Class = SpriteHandler_battleScreenIntro_teleportPiece5;
      
      private static var battleScreenIntro_teleportPiece6:Class = SpriteHandler_battleScreenIntro_teleportPiece6;
      
      private static var battleScreenIntro_teleportPiece7:Class = SpriteHandler_battleScreenIntro_teleportPiece7;
      
      private static var battleScreenBackground_clouds:Class = SpriteHandler_battleScreenBackground_clouds;
      
      private static var battleScreenBackground_horizon:Class = SpriteHandler_battleScreenBackground_horizon;
      
      private static var battleScreenBackground_island:Class = SpriteHandler_battleScreenBackground_island;
      
      private static var battleScreenBackground_lanternGlow:Class = SpriteHandler_battleScreenBackground_lanternGlow;
      
      private static var battleScreenBackground_mountain:Class = SpriteHandler_battleScreenBackground_mountain;
      
      private static var battleScreenBackground_smallIsland:Class = SpriteHandler_battleScreenBackground_smallIsland;
      
      private static var battleScreenBackground_city:Class = SpriteHandler_battleScreenBackground_city;
      
      private static var battleScreenBackground_sky:Class = SpriteHandler_battleScreenBackground_sky;
      
      private static var battleScreenMenus_fillBar_background:Class = SpriteHandler_battleScreenMenus_fillBar_background;
      
      private static var battleScreenMenus_fillBar_energyCap:Class = SpriteHandler_battleScreenMenus_fillBar_energyCap;
      
      private static var battleScreenMenus_fillBar_energyFill:Class = SpriteHandler_battleScreenMenus_fillBar_energyFill;
      
      private static var battleScreenMenus_fillBar_healthCap:Class = SpriteHandler_battleScreenMenus_fillBar_healthCap;
      
      private static var battleScreenMenus_fillBar_healthFill:Class = SpriteHandler_battleScreenMenus_fillBar_healthFill;
      
      private static var battleScreenMenus_moveNameSingle_centerBubble:Class = SpriteHandler_battleScreenMenus_moveNameSingle_centerBubble;
      
      private static var battleScreenMenus_moveNameSingle_sideBubble:Class = SpriteHandler_battleScreenMenus_moveNameSingle_sideBubble;
      
      private static var battleScreenSelectedIndicator:Class = SpriteHandler_battleScreenSelectedIndicator;
      
      private static var battleScreenMenus_fillBar_expCap:Class = SpriteHandler_battleScreenMenus_fillBar_expCap;
      
      private static var battleScreenMenus_fillBar_expFill:Class = SpriteHandler_battleScreenMenus_fillBar_expFill;
      
      private static var battleScreenMenus_levelUp_popUp:Class = SpriteHandler_battleScreenMenus_levelUp_popUp;
      
      private static var battleScreenMenus_newSkillPointIndicator:Class = SpriteHandler_battleScreenMenus_newSkillPointIndicator;
      
      private static var battleScreenMenus_healthFillBar_background:Class = SpriteHandler_battleScreenMenus_healthFillBar_background;
      
      private static var battleScreenMenus_turnIndicator_player:Class = SpriteHandler_battleScreenMenus_turnIndicator_player;
      
      private static var battleScreenMenus_turnIndicator_enemy:Class = SpriteHandler_battleScreenMenus_turnIndicator_enemy;
      
      private static var battleScreenMenus_movesModuleBackground:Class = SpriteHandler_battleScreenMenus_movesModuleBackground;
      
      private static var superEffectivePopup:Class = SpriteHandler_superEffectivePopup;
      
      private static var notEffectivePopup:Class = SpriteHandler_notEffectivePopup;
      
      private static var critPopup:Class = SpriteHandler_critPopup;
      
      private static var outOfEnergyTip:Class = SpriteHandler_outOfEnergyTip;
      
      private static var battleScreenMenus_fillBar_shieldFill:Class = SpriteHandler_battleScreenMenus_fillBar_shieldFill;
      
      private static var battleScreenMenus_fillBar_shieldCap:Class = SpriteHandler_battleScreenMenus_fillBar_shieldCap;
      
      private static var battleScreenVictoryBackground:Class = SpriteHandler_battleScreenVictoryBackground;
      
      private static var battleScreenVictoryStar:Class = SpriteHandler_battleScreenVictoryStar;
      
      private static var battleScreenMenus_movesDeselectButton:Class = SpriteHandler_battleScreenMenus_movesDeselectButton;
      
      private static var damageRedirected:Class = SpriteHandler_damageRedirected;
      
      private static var forfeitButton:Class = SpriteHandler_forfeitButton;
      
      private static var battleScreenMenus_evolution_popUp:Class = SpriteHandler_battleScreenMenus_evolution_popUp;
      
      private static var battleScreenMenus_evolution_mask:Class = SpriteHandler_battleScreenMenus_evolution_mask;
      
      private static var battleScreenMenus_evolution_closeButton:Class = SpriteHandler_battleScreenMenus_evolution_closeButton;
      
      private static var mainCharacter_female_front_still:Class = SpriteHandler_mainCharacter_female_front_still;
      
      private static var mainCharacter_female_front_1:Class = SpriteHandler_mainCharacter_female_front_1;
      
      private static var mainCharacter_female_front_2:Class = SpriteHandler_mainCharacter_female_front_2;
      
      private static var mainCharacter_female_front_3:Class = SpriteHandler_mainCharacter_female_front_3;
      
      private static var mainCharacter_female_front_4:Class = SpriteHandler_mainCharacter_female_front_4;
      
      private static var mainCharacter_female_front_5:Class = SpriteHandler_mainCharacter_female_front_5;
      
      private static var mainCharacter_female_front_6:Class = SpriteHandler_mainCharacter_female_front_6;
      
      private static var mainCharacter_female_front_7:Class = SpriteHandler_mainCharacter_female_front_7;
      
      private static var mainCharacter_female_front_8:Class = SpriteHandler_mainCharacter_female_front_8;
      
      private static var mainCharacter_female_front_9:Class = SpriteHandler_mainCharacter_female_front_9;
      
      private static var mainCharacter_female_front_10:Class = SpriteHandler_mainCharacter_female_front_10;
      
      private static var mainCharacter_female_back_still:Class = SpriteHandler_mainCharacter_female_back_still;
      
      private static var mainCharacter_female_back_1:Class = SpriteHandler_mainCharacter_female_back_1;
      
      private static var mainCharacter_female_back_2:Class = SpriteHandler_mainCharacter_female_back_2;
      
      private static var mainCharacter_female_back_3:Class = SpriteHandler_mainCharacter_female_back_3;
      
      private static var mainCharacter_female_back_4:Class = SpriteHandler_mainCharacter_female_back_4;
      
      private static var mainCharacter_female_back_5:Class = SpriteHandler_mainCharacter_female_back_5;
      
      private static var mainCharacter_female_back_6:Class = SpriteHandler_mainCharacter_female_back_6;
      
      private static var mainCharacter_female_back_7:Class = SpriteHandler_mainCharacter_female_back_7;
      
      private static var mainCharacter_female_back_8:Class = SpriteHandler_mainCharacter_female_back_8;
      
      private static var mainCharacter_female_back_9:Class = SpriteHandler_mainCharacter_female_back_9;
      
      private static var mainCharacter_female_back_10:Class = SpriteHandler_mainCharacter_female_back_10;
      
      private static var mainCharacter_female_side_still:Class = SpriteHandler_mainCharacter_female_side_still;
      
      private static var mainCharacter_female_side_1:Class = SpriteHandler_mainCharacter_female_side_1;
      
      private static var mainCharacter_female_side_2:Class = SpriteHandler_mainCharacter_female_side_2;
      
      private static var mainCharacter_female_side_3:Class = SpriteHandler_mainCharacter_female_side_3;
      
      private static var mainCharacter_female_side_4:Class = SpriteHandler_mainCharacter_female_side_4;
      
      private static var mainCharacter_female_side_5:Class = SpriteHandler_mainCharacter_female_side_5;
      
      private static var mainCharacter_female_side_6:Class = SpriteHandler_mainCharacter_female_side_6;
      
      private static var mainCharacter_female_side_7:Class = SpriteHandler_mainCharacter_female_side_7;
      
      private static var mainCharacter_female_side_8:Class = SpriteHandler_mainCharacter_female_side_8;
      
      private static var mainCharacter_female_side_9:Class = SpriteHandler_mainCharacter_female_side_9;
      
      private static var mainCharacter_female_side_10:Class = SpriteHandler_mainCharacter_female_side_10;
      
      private static var mainCharacter_male_front_still:Class = SpriteHandler_mainCharacter_male_front_still;
      
      private static var mainCharacter_male_front_1:Class = SpriteHandler_mainCharacter_male_front_1;
      
      private static var mainCharacter_male_front_2:Class = SpriteHandler_mainCharacter_male_front_2;
      
      private static var mainCharacter_male_front_3:Class = SpriteHandler_mainCharacter_male_front_3;
      
      private static var mainCharacter_male_front_4:Class = SpriteHandler_mainCharacter_male_front_4;
      
      private static var mainCharacter_male_front_5:Class = SpriteHandler_mainCharacter_male_front_5;
      
      private static var mainCharacter_male_front_6:Class = SpriteHandler_mainCharacter_male_front_6;
      
      private static var mainCharacter_male_front_7:Class = SpriteHandler_mainCharacter_male_front_7;
      
      private static var mainCharacter_male_front_8:Class = SpriteHandler_mainCharacter_male_front_8;
      
      private static var mainCharacter_male_front_9:Class = SpriteHandler_mainCharacter_male_front_9;
      
      private static var mainCharacter_male_front_10:Class = SpriteHandler_mainCharacter_male_front_10;
      
      private static var mainCharacter_male_back_still:Class = SpriteHandler_mainCharacter_male_back_still;
      
      private static var mainCharacter_male_back_1:Class = SpriteHandler_mainCharacter_male_back_1;
      
      private static var mainCharacter_male_back_2:Class = SpriteHandler_mainCharacter_male_back_2;
      
      private static var mainCharacter_male_back_3:Class = SpriteHandler_mainCharacter_male_back_3;
      
      private static var mainCharacter_male_back_4:Class = SpriteHandler_mainCharacter_male_back_4;
      
      private static var mainCharacter_male_back_5:Class = SpriteHandler_mainCharacter_male_back_5;
      
      private static var mainCharacter_male_back_6:Class = SpriteHandler_mainCharacter_male_back_6;
      
      private static var mainCharacter_male_back_7:Class = SpriteHandler_mainCharacter_male_back_7;
      
      private static var mainCharacter_male_back_8:Class = SpriteHandler_mainCharacter_male_back_8;
      
      private static var mainCharacter_male_back_9:Class = SpriteHandler_mainCharacter_male_back_9;
      
      private static var mainCharacter_male_back_10:Class = SpriteHandler_mainCharacter_male_back_10;
      
      private static var mainCharacter_male_side_still:Class = SpriteHandler_mainCharacter_male_side_still;
      
      private static var mainCharacter_male_side_1:Class = SpriteHandler_mainCharacter_male_side_1;
      
      private static var mainCharacter_male_side_2:Class = SpriteHandler_mainCharacter_male_side_2;
      
      private static var mainCharacter_male_side_3:Class = SpriteHandler_mainCharacter_male_side_3;
      
      private static var mainCharacter_male_side_4:Class = SpriteHandler_mainCharacter_male_side_4;
      
      private static var mainCharacter_male_side_5:Class = SpriteHandler_mainCharacter_male_side_5;
      
      private static var mainCharacter_male_side_6:Class = SpriteHandler_mainCharacter_male_side_6;
      
      private static var mainCharacter_male_side_7:Class = SpriteHandler_mainCharacter_male_side_7;
      
      private static var mainCharacter_male_side_8:Class = SpriteHandler_mainCharacter_male_side_8;
      
      private static var mainCharacter_male_side_9:Class = SpriteHandler_mainCharacter_male_side_9;
      
      private static var mainCharacter_male_side_10:Class = SpriteHandler_mainCharacter_male_side_10;
      
      private static var sageSeal_1_1:Class = SpriteHandler_sageSeal_1_1;
      
      private static var sageSeal_1_2:Class = SpriteHandler_sageSeal_1_2;
      
      private static var sageSeal_1_3:Class = SpriteHandler_sageSeal_1_3;
      
      private static var sageSeal_2_1:Class = SpriteHandler_sageSeal_2_1;
      
      private static var sageSeal_2_2:Class = SpriteHandler_sageSeal_2_2;
      
      private static var sageSeal_2_3:Class = SpriteHandler_sageSeal_2_3;
      
      private static var sageSeal_3_1:Class = SpriteHandler_sageSeal_3_1;
      
      private static var sageSeal_3_2:Class = SpriteHandler_sageSeal_3_2;
      
      private static var sageSeal_3_3:Class = SpriteHandler_sageSeal_3_3;
      
      private static var sageSeal_4_1:Class = SpriteHandler_sageSeal_4_1;
      
      private static var sageSeal_4_2:Class = SpriteHandler_sageSeal_4_2;
      
      private static var sageSeal_4_3:Class = SpriteHandler_sageSeal_4_3;
      
      private static var sageSeal_5_1:Class = SpriteHandler_sageSeal_5_1;
      
      private static var sageSeal_5_2:Class = SpriteHandler_sageSeal_5_2;
      
      private static var sageSeal_5_3:Class = SpriteHandler_sageSeal_5_3;
      
      private static var sageSeal_5_4:Class = SpriteHandler_sageSeal_5_4;
      
      private static var sageSeal_6_1:Class = SpriteHandler_sageSeal_6_1;
      
      private static var sageSeal_6_2:Class = SpriteHandler_sageSeal_6_2;
      
      private static var sageSeal_6_3:Class = SpriteHandler_sageSeal_6_3;
      
      private static var sageSeal_6_4:Class = SpriteHandler_sageSeal_6_4;
      
      private static var sageSeal_background:Class = SpriteHandler_sageSeal_background;
      
      private static var hud_sealPiecesBackground:Class = SpriteHandler_hud_sealPiecesBackground;
      
      private static var hud_statBonus_0:Class = SpriteHandler_hud_statBonus_0;
      
      private static var hud_statBonus_1:Class = SpriteHandler_hud_statBonus_1;
      
      private static var hud_statBonus_2:Class = SpriteHandler_hud_statBonus_2;
      
      private static var hud_statBonus_3:Class = SpriteHandler_hud_statBonus_3;
      
      private static var hud_statBonus_4:Class = SpriteHandler_hud_statBonus_4;
      
      private static var topDown_giftButton:Class = SpriteHandler_topDown_giftButton;
      
      private static var topDown_notTellingButton:Class = SpriteHandler_topDown_notTellingButton;
      
      private static var topDown_rescueButton:Class = SpriteHandler_topDown_rescueButton;
      
      private static var topDown_pictureGiftButton:Class = SpriteHandler_topDown_pictureGiftButton;
      
      private static var topDown_pictureNotTellingButton:Class = SpriteHandler_topDown_pictureNotTellingButton;
      
      private static var topDown_pictureRescueButton:Class = SpriteHandler_topDown_pictureRescueButton;
      
      private static var menus_backgroundMedium:Class = SpriteHandler_menus_backgroundMedium;
      
      private static var menus_backgroundSmall:Class = SpriteHandler_menus_backgroundSmall;
      
      private static var menus_changeButton:Class = SpriteHandler_menus_changeButton;
      
      private static var menus_detailsButton:Class = SpriteHandler_menus_detailsButton;
      
      private static var menus_emptyGemSocket:Class = SpriteHandler_menus_emptyGemSocket;
      
      private static var menus_gemsBackground:Class = SpriteHandler_menus_gemsBackground;
      
      private static var menus_gemSelectBackground:Class = SpriteHandler_menus_gemSelectBackground;
      
      private static var menus_minionInfo_background:Class = SpriteHandler_menus_minionInfo_background;
      
      private static var menus_minionInfo_emptyGemSlot:Class = SpriteHandler_menus_minionInfo_emptyGemSlot;
      
      private static var menus_minionInfo_energyBar_cap:Class = SpriteHandler_menus_minionInfo_energyBar_cap;
      
      private static var menus_minionInfo_energyBar_full:Class = SpriteHandler_menus_minionInfo_energyBar_full;
      
      private static var menus_minionInfo_healthBar_cap:Class = SpriteHandler_menus_minionInfo_healthBar_cap;
      
      private static var menus_minionInfo_healthBar_full:Class = SpriteHandler_menus_minionInfo_healthBar_full;
      
      private static var menus_minionXP_background:Class = SpriteHandler_menus_minionXP_background;
      
      private static var menus_minionXP_fill:Class = SpriteHandler_menus_minionXP_fill;
      
      private static var menus_movesBackground:Class = SpriteHandler_menus_movesBackground;
      
      private static var menus_returnButton:Class = SpriteHandler_menus_returnButton;
      
      private static var menus_scrollButton_down:Class = SpriteHandler_menus_scrollButton_down;
      
      private static var menus_scrollButton_up:Class = SpriteHandler_menus_scrollButton_up;
      
      private static var menus_selectionPopUp_background:Class = SpriteHandler_menus_selectionPopUp_background;
      
      private static var menus_selectionPopUp_cancelButton:Class = SpriteHandler_menus_selectionPopUp_cancelButton;
      
      private static var menus_selectionPopUp_detailsButton:Class = SpriteHandler_menus_selectionPopUp_detailsButton;
      
      private static var menus_selectionPopUp_skillsTreeButton:Class = SpriteHandler_menus_selectionPopUp_skillsTreeButton;
      
      private static var menus_selectionPopUp_switchButton:Class = SpriteHandler_menus_selectionPopUp_switchButton;
      
      private static var menus_statsBackground:Class = SpriteHandler_menus_statsBackground;
      
      private static var menus_statsBars_cap_armor:Class = SpriteHandler_menus_statsBars_cap_armor;
      
      private static var menus_statsBars_cap_armorPenetration:Class = SpriteHandler_menus_statsBars_cap_armorPenetration;
      
      private static var menus_statsBars_cap_attack:Class = SpriteHandler_menus_statsBars_cap_attack;
      
      private static var menus_statsBars_cap_health:Class = SpriteHandler_menus_statsBars_cap_health;
      
      private static var menus_statsBars_cap_speed:Class = SpriteHandler_menus_statsBars_cap_speed;
      
      private static var menus_statsBars_full_armor:Class = SpriteHandler_menus_statsBars_full_armor;
      
      private static var menus_statsBars_full_armorPenetration:Class = SpriteHandler_menus_statsBars_full_armorPenetration;
      
      private static var menus_statsBars_full_attack:Class = SpriteHandler_menus_statsBars_full_attack;
      
      private static var menus_statsBars_full_health:Class = SpriteHandler_menus_statsBars_full_health;
      
      private static var menus_statsBars_full_speed:Class = SpriteHandler_menus_statsBars_full_speed;
      
      private static var menus_topDownMenuPopUp_background:Class = SpriteHandler_menus_topDownMenuPopUp_background;
      
      private static var menus_topDownMenuPopUp_settings:Class = SpriteHandler_menus_topDownMenuPopUp_settings;
      
      private static var menus_topDownMenuPopUp_mainMenu:Class = SpriteHandler_menus_topDownMenuPopUp_mainMenu;
      
      private static var menus_topDownMenuPopUp_save:Class = SpriteHandler_menus_topDownMenuPopUp_save;
      
      private static var menus_pendant:Class = SpriteHandler_menus_pendant;
      
      private static var menus_topDownMenuPopUp_minionDex:Class = SpriteHandler_menus_topDownMenuPopUp_minionDex;
      
      private static var menus_topDownMenuPopUp_minions:Class = SpriteHandler_menus_topDownMenuPopUp_minions;
      
      private static var menus_topDownMenuPopUp_resume:Class = SpriteHandler_menus_topDownMenuPopUp_resume;
      
      private static var menus_topDownMenuPopUp_you:Class = SpriteHandler_menus_topDownMenuPopUp_you;
      
      private static var menus_gameplayMenuTab:Class = SpriteHandler_menus_gameplayMenuTab;
      
      private static var menus_minionIcon_background:Class = SpriteHandler_menus_minionIcon_background;
      
      private static var menus_minionIcon_mask:Class = SpriteHandler_menus_minionIcon_mask;
      
      private static var menus_exitButton:Class = SpriteHandler_menus_exitButton;
      
      private static var menus_skillTree_otherTreeIndicator:Class = SpriteHandler_menus_skillTree_otherTreeIndicator;
      
      private static var menus_skillTree_advancedButton:Class = SpriteHandler_menus_skillTree_advancedButton;
      
      private static var menus_skillTree_advancedTabsCentert:Class = SpriteHandler_menus_skillTree_advancedTabsCentert;
      
      private static var menus_skillTree_advancedTabsLeft:Class = SpriteHandler_menus_skillTree_advancedTabsLeft;
      
      private static var menus_skillTree_background:Class = SpriteHandler_menus_skillTree_background;
      
      private static var menus_skillTree_buttonBackground:Class = SpriteHandler_menus_skillTree_buttonBackground;
      
      private static var menus_skillTree_movesBackground:Class = SpriteHandler_menus_skillTree_movesBackground;
      
      private static var menus_skillTree_pointsBubble:Class = SpriteHandler_menus_skillTree_pointsBubble;
      
      private static var menus_skillTree_resetButton:Class = SpriteHandler_menus_skillTree_resetButton;
      
      private static var menus_skillTree_simpleButton:Class = SpriteHandler_menus_skillTree_simpleButton;
      
      private static var menus_speechBubble:Class = SpriteHandler_menus_speechBubble;
      
      private static var menus_speechBubble_arrow:Class = SpriteHandler_menus_speechBubble_arrow;
      
      private static var menus_speechBubble_yesButton:Class = SpriteHandler_menus_speechBubble_yesButton;
      
      private static var menus_speechBubble_noButton:Class = SpriteHandler_menus_speechBubble_noButton;
      
      private static var menus_gemMenuBackground:Class = SpriteHandler_menus_gemMenuBackground;
      
      private static var menus_gemMenu_equipButton:Class = SpriteHandler_menus_gemMenu_equipButton;
      
      private static var menus_tempAd:Class = SpriteHandler_menus_tempAd;
      
      private static var menus_sponsorMoreGames_button:Class = SpriteHandler_menus_sponsorMoreGames_button;
      
      private static var menus_sponsorMoreGames_background:Class = SpriteHandler_menus_sponsorMoreGames_background;
      
      private static var menus_gemMenuGemSelected:Class = SpriteHandler_menus_gemMenuGemSelected;
      
      private static var menus_gemLockedButton:Class = SpriteHandler_menus_gemLockedButton;
      
      private static var menus_gemPremiumButton:Class = SpriteHandler_menus_gemPremiumButton;
      
      private static var menus_gemMenu_unEquipButton:Class = SpriteHandler_menus_gemMenu_unEquipButton;
      
      private static var menus_minionInfo_filledGemSlot:Class = SpriteHandler_menus_minionInfo_filledGemSlot;
      
      private static var menus_backgroundLarge:Class = SpriteHandler_menus_backgroundLarge;
      
      private static var menus_gemCombiner_addButton:Class = SpriteHandler_menus_gemCombiner_addButton;
      
      private static var menus_gemCombiner_buySellButton:Class = SpriteHandler_menus_gemCombiner_buySellButton;
      
      private static var menus_gemCombiner_characterDetailsBackground:Class = SpriteHandler_menus_gemCombiner_characterDetailsBackground;
      
      private static var menus_gemCombiner_male_charIcon:Class = SpriteHandler_menus_gemCombiner_male_charIcon;
      
      private static var menus_gemCombiner_female_charIcon:Class = SpriteHandler_menus_gemCombiner_female_charIcon;
      
      private static var menus_gemCombiner_CombineButton:Class = SpriteHandler_menus_gemCombiner_CombineButton;
      
      private static var menus_gemCombiner_resetButton:Class = SpriteHandler_menus_gemCombiner_resetButton;
      
      private static var menus_gemCombiner_npcsGemsBackground:Class = SpriteHandler_menus_gemCombiner_npcsGemsBackground;
      
      private static var menus_minionStorage_addToPartyButton:Class = SpriteHandler_menus_minionStorage_addToPartyButton;
      
      private static var menus_minionStorage_boxSelectBar:Class = SpriteHandler_menus_minionStorage_boxSelectBar;
      
      private static var menus_minionStorage_boxSelectedIcon:Class = SpriteHandler_menus_minionStorage_boxSelectedIcon;
      
      private static var menus_minionStorage_closeParty:Class = SpriteHandler_menus_minionStorage_closeParty;
      
      private static var menus_minionStorage_minionsBackground:Class = SpriteHandler_menus_minionStorage_minionsBackground;
      
      private static var menus_minionStorage_minionSelectIcon:Class = SpriteHandler_menus_minionStorage_minionSelectIcon;
      
      private static var menus_minionStorage_partyBackground:Class = SpriteHandler_menus_minionStorage_partyBackground;
      
      private static var menus_minionStorage_swapButtonOff:Class = SpriteHandler_menus_minionStorage_swapButtonOff;
      
      private static var menus_minionStorage_swapButtonOn:Class = SpriteHandler_menus_minionStorage_swapButtonOn;
      
      private static var menus_minionStorage_nextContainerButton:Class = SpriteHandler_menus_minionStorage_nextContainerButton;
      
      private static var menus_minionStorage_releaseButton:Class = SpriteHandler_menus_minionStorage_releaseButton;
      
      private static var menus_minionStorage_currTeamIndecator:Class = SpriteHandler_menus_minionStorage_currTeamIndecator;
      
      private static var conformationBox_background:Class = SpriteHandler_conformationBox_background;
      
      private static var conformationBox_noButton:Class = SpriteHandler_conformationBox_noButton;
      
      private static var conformationBox_yesButton:Class = SpriteHandler_conformationBox_yesButton;
      
      private static var hud_inGame_gem:Class = SpriteHandler_hud_inGame_gem;
      
      private static var hud_inGame_key:Class = SpriteHandler_hud_inGame_key;
      
      private static var hud_inGame_money:Class = SpriteHandler_hud_inGame_money;
      
      private static var hud_starsAndKeysBackground:Class = SpriteHandler_hud_starsAndKeysBackground;
      
      private static var menus_maleBust_icon:Class = SpriteHandler_menus_maleBust_icon;
      
      private static var menus_femaleBust_icon:Class = SpriteHandler_menus_femaleBust_icon;
      
      private static var menus_youMenu_resetButton:Class = SpriteHandler_menus_youMenu_resetButton;
      
      private static var menus_youMenu_starUpgradeButtonAttack:Class = SpriteHandler_menus_youMenu_starUpgradeButtonAttack;
      
      private static var menus_youMenu_starUpgradeButtonEnergy:Class = SpriteHandler_menus_youMenu_starUpgradeButtonEnergy;
      
      private static var menus_youMenu_starUpgradeButtonExtraMoney:Class = SpriteHandler_menus_youMenu_starUpgradeButtonExtraMoney;
      
      private static var menus_youMenu_starUpgradeButtonHealing:Class = SpriteHandler_menus_youMenu_starUpgradeButtonHealing;
      
      private static var menus_youMenu_starUpgradeButtonHealth:Class = SpriteHandler_menus_youMenu_starUpgradeButtonHealth;
      
      private static var menus_youMenu_starUpgradeButtonMinionSpeed:Class = SpriteHandler_menus_youMenu_starUpgradeButtonMinionSpeed;
      
      private static var menus_youMenu_starUpgradeButtonWalkSpeed:Class = SpriteHandler_menus_youMenu_starUpgradeButtonWalkSpeed;
      
      private static var menus_youMenu_starUpgradeButtonXP:Class = SpriteHandler_menus_youMenu_starUpgradeButtonXP;
      
      private static var menus_youMenu_yourInformationBackground:Class = SpriteHandler_menus_youMenu_yourInformationBackground;
      
      private static var menus_youMenu_gemBackground:Class = SpriteHandler_menus_youMenu_gemBackground;
      
      private static var menus_skillTree_specializationBackground:Class = SpriteHandler_menus_skillTree_specializationBackground;
      
      private static var menus_minionInfo_renameButton:Class = SpriteHandler_menus_minionInfo_renameButton;
      
      private static var menus_minionInfo_doneButton:Class = SpriteHandler_menus_minionInfo_doneButton;
      
      private static var menus_settings_graphicSetting_low:Class = SpriteHandler_menus_settings_graphicSetting_low;
      
      private static var menus_settings_graphicSetting_mid:Class = SpriteHandler_menus_settings_graphicSetting_mid;
      
      private static var menus_settings_graphicSetting_high:Class = SpriteHandler_menus_settings_graphicSetting_high;
      
      private static var menus_settings_nextGraphicSetting:Class = SpriteHandler_menus_settings_nextGraphicSetting;
      
      private static var menus_settings_offButton:Class = SpriteHandler_menus_settings_offButton;
      
      private static var menus_settings_onButton:Class = SpriteHandler_menus_settings_onButton;
      
      private static var hud_inGame_sageSeal_1:Class = SpriteHandler_hud_inGame_sageSeal_1;
      
      private static var hud_inGame_sageSeal_2:Class = SpriteHandler_hud_inGame_sageSeal_2;
      
      private static var hud_inGame_sageSeal_3:Class = SpriteHandler_hud_inGame_sageSeal_3;
      
      private static var hud_inGame_sageSeal_4:Class = SpriteHandler_hud_inGame_sageSeal_4;
      
      private static var hud_inGame_sageSeal_5:Class = SpriteHandler_hud_inGame_sageSeal_5;
      
      private static var hud_inGame_sageSeal_6:Class = SpriteHandler_hud_inGame_sageSeal_6;
      
      private static var hud_inGame_sageSeal_7:Class = SpriteHandler_hud_inGame_sageSeal_7;
      
      private static var menus_plantMedallion:Class = SpriteHandler_menus_plantMedallion;
      
      private static var menus_fireMedallion:Class = SpriteHandler_menus_fireMedallion;
      
      private static var menus_electricMedallion:Class = SpriteHandler_menus_electricMedallion;
      
      private static var menus_undeadMedallion:Class = SpriteHandler_menus_undeadMedallion;
      
      private static var menus_plantWizardMedallion:Class = SpriteHandler_menus_plantWizardMedallion;
      
      private static var menus_undeadWizardMedallion:Class = SpriteHandler_menus_undeadWizardMedallion;
      
      private static var menus_savingPopup:Class = SpriteHandler_menus_savingPopup;
      
      private static var menus_selectionPopUp_saveButton:Class = SpriteHandler_menus_selectionPopUp_saveButton;
      
      private static var menus_selectionPopUp_saveReturnToLobbyButton:Class = SpriteHandler_menus_selectionPopUp_saveReturnToLobbyButton;
      
      private static var minionPedia_background:Class = SpriteHandler_minionPedia_background;
      
      private static var minionPedia_minionBackground:Class = SpriteHandler_minionPedia_minionBackground;
      
      private static var minionPedia_minionSelectBackground:Class = SpriteHandler_minionPedia_minionSelectBackground;
      
      private static var minionPedia_minionSelectedIcon:Class = SpriteHandler_minionPedia_minionSelectedIcon;
      
      private static var minionPedia_upArrow:Class = SpriteHandler_minionPedia_upArrow;
      
      private static var minionPedia_doubleUpArrow:Class = SpriteHandler_minionPedia_doubleUpArrow;
      
      private static var minionPedia_seenIcon:Class = SpriteHandler_minionPedia_seenIcon;
      
      private static var minionPedia_OwnedIcon:Class = SpriteHandler_minionPedia_OwnedIcon;
      
      private static var bonusItems_noThanksButton:Class = SpriteHandler_bonusItems_noThanksButton;
      
      private static var bonusItems_sureButton:Class = SpriteHandler_bonusItems_sureButton;
      
      private static var bonusItems_gemsBackground:Class = SpriteHandler_bonusItems_gemsBackground;
      
      private static var bonusItems_minionBackground:Class = SpriteHandler_bonusItems_minionBackground;
      
      private static var bonusItems_sponsorPatch:Class = SpriteHandler_bonusItems_sponsorPatch;
      
      private static var tutorial_yourMinionHealth:Class = SpriteHandler_tutorial_yourMinionHealth;
      
      private static var tutorial_backgroundLarge:Class = SpriteHandler_tutorial_backgroundLarge;
      
      private static var tutorial_backgroundSmall:Class = SpriteHandler_tutorial_backgroundSmall;
      
      private static var tutorial_bigEnergyBar:Class = SpriteHandler_tutorial_bigEnergyBar;
      
      private static var tutorial_bigHealthBar:Class = SpriteHandler_tutorial_bigHealthBar;
      
      private static var tutorial_bossDoor:Class = SpriteHandler_tutorial_bossDoor;
      
      private static var tutorial_chooseAMove:Class = SpriteHandler_tutorial_chooseAMove;
      
      private static var tutorial_chooseAnOpponetsMinion:Class = SpriteHandler_tutorial_chooseAnOpponetsMinion;
      
      private static var tutorial_choosingAMinionBar:Class = SpriteHandler_tutorial_choosingAMinionBar;
      
      private static var tutorial_clickGroundToDeselectMinion:Class = SpriteHandler_tutorial_clickGroundToDeselectMinion;
      
      private static var tutorial_deathIcon:Class = SpriteHandler_tutorial_deathIcon;
      
      private static var tutorial_energyBarArrow:Class = SpriteHandler_tutorial_energyBarArrow;
      
      private static var tutorial_energyBarBackground:Class = SpriteHandler_tutorial_energyBarBackground;
      
      private static var tutorial_expertTrainer:Class = SpriteHandler_tutorial_expertTrainer;
      
      private static var tutorial_firstGemMenuPopup:Class = SpriteHandler_tutorial_firstGemMenuPopup;
      
      private static var tutorial_firstGemTutorial:Class = SpriteHandler_tutorial_firstGemTutorial;
      
      private static var tutorial_firstGem_side:Class = SpriteHandler_tutorial_firstGem_side;
      
      private static var tutorial_focusTarget:Class = SpriteHandler_tutorial_focusTarget;
      
      private static var tutorial_hardTrainer:Class = SpriteHandler_tutorial_hardTrainer;
      
      private static var tutorial_keyKeeper1:Class = SpriteHandler_tutorial_keyKeeper1;
      
      private static var tutorial_keyKeeper2:Class = SpriteHandler_tutorial_keyKeeper2;
      
      private static var tutorial_keyKeeper3:Class = SpriteHandler_tutorial_keyKeeper3;
      
      private static var tutorial_movement:Class = SpriteHandler_tutorial_movement;
      
      private static var tutorial_movement_down:Class = SpriteHandler_tutorial_movement_down;
      
      private static var tutorial_newTalentPointsPopup:Class = SpriteHandler_tutorial_newTalentPointsPopup;
      
      private static var tutorial_nextButton:Class = SpriteHandler_tutorial_nextButton;
      
      private static var tutorial_okButton:Class = SpriteHandler_tutorial_okButton;
      
      private static var tutorial_optionalRespectTip:Class = SpriteHandler_tutorial_optionalRespectTip;
      
      private static var tutorial_pressSpacekey_down:Class = SpriteHandler_tutorial_pressSpacekey_down;
      
      private static var tutorial_pressSpacekey_up:Class = SpriteHandler_tutorial_pressSpacekey_up;
      
      private static var tutorial_resetTalentPointsIcon:Class = SpriteHandler_tutorial_resetTalentPointsIcon;
      
      private static var tutorial_selectYourMinion:Class = SpriteHandler_tutorial_selectYourMinion;
      
      private static var tutorial_showMeButton:Class = SpriteHandler_tutorial_showMeButton;
      
      private static var tutorial_spaceToSkip:Class = SpriteHandler_tutorial_spaceToSkip;
      
      private static var tutorial_starsAndNewMinions:Class = SpriteHandler_tutorial_starsAndNewMinions;
      
      private static var tutorial_superEffectiveMoves:Class = SpriteHandler_tutorial_superEffectiveMoves;
      
      private static var tutorial_turnSquare1:Class = SpriteHandler_tutorial_turnSquare1;
      
      private static var tutorial_turnSquare2:Class = SpriteHandler_tutorial_turnSquare2;
      
      private static var tutorial_turnSquare3:Class = SpriteHandler_tutorial_turnSquare3;
      
      private static var tutorial_turnSquare4:Class = SpriteHandler_tutorial_turnSquare4;
      
      private static var tutorial_useAHealer:Class = SpriteHandler_tutorial_useAHealer;
      
      private static var tutorial_useATank:Class = SpriteHandler_tutorial_useATank;
      
      private static var tutorial_yourMinionArrow:Class = SpriteHandler_tutorial_yourMinionArrow;
      
      private static var tutorial_yourMinionBackground:Class = SpriteHandler_tutorial_yourMinionBackground;
      
      private static var tutorial_yourThierMinionBackground:Class = SpriteHandler_tutorial_yourThierMinionBackground;
      
      private static var tutorial_newStars_top:Class = SpriteHandler_tutorial_newStars_top;
      
      private static var tutorial_newStars_side:Class = SpriteHandler_tutorial_newStars_side;
      
      private static var tutorial_swapMinions:Class = SpriteHandler_tutorial_swapMinions;
      
      private static var tutorial_newTalentPointsPopup_side:Class = SpriteHandler_tutorial_newTalentPointsPopup_side;
      
      private static var tutorial_bonusRooms:Class = SpriteHandler_tutorial_bonusRooms;
      
      private static var gemCornerBlue:Class = SpriteHandler_gemCornerBlue;
      
      private static var gemCornerOrange:Class = SpriteHandler_gemCornerOrange;
      
      private static var gemCornerPurple:Class = SpriteHandler_gemCornerPurple;
      
      private static var gemCornerRed:Class = SpriteHandler_gemCornerRed;
      
      private static var gemCornerYellow:Class = SpriteHandler_gemCornerYellow;
      
      private static var gemTier1_mask:Class = SpriteHandler_gemTier1_mask;
      
      private static var gemTier1_shape:Class = SpriteHandler_gemTier1_shape;
      
      private static var gemTier2_mask:Class = SpriteHandler_gemTier2_mask;
      
      private static var gemTier2_shape:Class = SpriteHandler_gemTier2_shape;
      
      private static var gemTier3_mask:Class = SpriteHandler_gemTier3_mask;
      
      private static var gemTier3_shape:Class = SpriteHandler_gemTier3_shape;
      
      private static var gemTier4_mask:Class = SpriteHandler_gemTier4_mask;
      
      private static var gemTier4_shape:Class = SpriteHandler_gemTier4_shape;
      
      private static var gemTier5_mask:Class = SpriteHandler_gemTier5_mask;
      
      private static var gemTier5_shape:Class = SpriteHandler_gemTier5_shape;
      
      private static var gemTier6_mask:Class = SpriteHandler_gemTier6_mask;
      
      private static var gemTier6_shape:Class = SpriteHandler_gemTier6_shape;
      
      private static var gemTier7_mask:Class = SpriteHandler_gemTier7_mask;
      
      private static var gemTier7_shape:Class = SpriteHandler_gemTier7_shape;
      
      private static var gemTier8_mask:Class = SpriteHandler_gemTier8_mask;
      
      private static var gemTier8_shape:Class = SpriteHandler_gemTier8_shape;
      
      private static var gemTier9_mask:Class = SpriteHandler_gemTier9_mask;
      
      private static var gemTier9_shape:Class = SpriteHandler_gemTier9_shape;
      
      private static var gemTier10_mask:Class = SpriteHandler_gemTier10_mask;
      
      private static var gemTier10_shape:Class = SpriteHandler_gemTier10_shape;
      
      private static var gemTier11_mask:Class = SpriteHandler_gemTier11_mask;
      
      private static var gemTier11_shape:Class = SpriteHandler_gemTier11_shape;
      
      private static var fireRoom_bottomWall:Class = SpriteHandler_fireRoom_bottomWall;
      
      private static var fireRoom_flowers:Class = SpriteHandler_fireRoom_flowers;
      
      private static var fireRoom_groundCover:Class = SpriteHandler_fireRoom_groundCover;
      
      private static var fireRoom_groundTile:Class = SpriteHandler_fireRoom_groundTile;
      
      private static var fireRoom_groundTile_foliage:Class = SpriteHandler_fireRoom_groundTile_foliage;
      
      private static var fireRoom_groundTile_fossils:Class = SpriteHandler_fireRoom_groundTile_fossils;
      
      private static var fireRoom_groundTile_magma:Class = SpriteHandler_fireRoom_groundTile_magma;
      
      private static var fireRoom_gysers:Class = SpriteHandler_fireRoom_gysers;
      
      private static var fireRoom_lavaPit1:Class = SpriteHandler_fireRoom_lavaPit1;
      
      private static var fireRoom_lavaPit2:Class = SpriteHandler_fireRoom_lavaPit2;
      
      private static var fireRoom_lavaPitSmall:Class = SpriteHandler_fireRoom_lavaPitSmall;
      
      private static var fireRoom_lowerLeftCorner:Class = SpriteHandler_fireRoom_lowerLeftCorner;
      
      private static var fireRoom_lowerRightCorner:Class = SpriteHandler_fireRoom_lowerRightCorner;
      
      private static var fireRoom_palmTrees:Class = SpriteHandler_fireRoom_palmTrees;
      
      private static var fireRoom_path_lowerLeft:Class = SpriteHandler_fireRoom_path_lowerLeft;
      
      private static var fireRoom_path_upperLeft:Class = SpriteHandler_fireRoom_path_upperLeft;
      
      private static var fireRoom_path1:Class = SpriteHandler_fireRoom_path1;
      
      private static var fireRoom_path2:Class = SpriteHandler_fireRoom_path2;
      
      private static var fireRoom_rocks:Class = SpriteHandler_fireRoom_rocks;
      
      private static var fireRoom_sideWall:Class = SpriteHandler_fireRoom_sideWall;
      
      private static var fireRoom_tiki1:Class = SpriteHandler_fireRoom_tiki1;
      
      private static var fireRoom_tiki2:Class = SpriteHandler_fireRoom_tiki2;
      
      private static var fireRoom_topWall:Class = SpriteHandler_fireRoom_topWall;
      
      private static var fireRoom_upperLeftCorner:Class = SpriteHandler_fireRoom_upperLeftCorner;
      
      private static var fireRoom_upperRightCorner:Class = SpriteHandler_fireRoom_upperRightCorner;
      
      private static var fireRoom_bottomDoor:Class = SpriteHandler_fireRoom_bottomDoor;
      
      private static var fireRoom_sideDoor:Class = SpriteHandler_fireRoom_sideDoor;
      
      private static var fireRoom_topDoor:Class = SpriteHandler_fireRoom_topDoor;
      
      private static var fireRoom_firePit:Class = SpriteHandler_fireRoom_firePit;
      
      private static var fireRoom_femaleFireEnemy_front:Class = SpriteHandler_fireRoom_femaleFireEnemy_front;
      
      private static var fireRoom_femaleFireEnemy_side:Class = SpriteHandler_fireRoom_femaleFireEnemy_side;
      
      private static var fireRoom_musclesEnemy_front:Class = SpriteHandler_fireRoom_musclesEnemy_front;
      
      private static var fireRoom_musclesEnemy_side:Class = SpriteHandler_fireRoom_musclesEnemy_side;
      
      private static var fireRoom_voodooEnemy_front:Class = SpriteHandler_fireRoom_voodooEnemy_front;
      
      private static var fireRoom_voodooEnemy_side:Class = SpriteHandler_fireRoom_voodooEnemy_side;
      
      private static var plantRoom_bridgeBase:Class = SpriteHandler_plantRoom_bridgeBase;
      
      private static var plantRoom_bridgeTrees_bottomLeft:Class = SpriteHandler_plantRoom_bridgeTrees_bottomLeft;
      
      private static var plantRoom_bridgeTrees_bottomRight:Class = SpriteHandler_plantRoom_bridgeTrees_bottomRight;
      
      private static var plantRoom_bridgeTrees_topLeft:Class = SpriteHandler_plantRoom_bridgeTrees_topLeft;
      
      private static var plantRoom_bridgeTrees_topRight:Class = SpriteHandler_plantRoom_bridgeTrees_topRight;
      
      private static var plantRoom_pond:Class = SpriteHandler_plantRoom_pond;
      
      private static var plantRoom_river_corner:Class = SpriteHandler_plantRoom_river_corner;
      
      private static var plantRoom_river_leftEnd:Class = SpriteHandler_plantRoom_river_leftEnd;
      
      private static var plantRoom_river_rightEnd:Class = SpriteHandler_plantRoom_river_rightEnd;
      
      private static var plantRoom_river_sparkle1:Class = SpriteHandler_plantRoom_river_sparkle1;
      
      private static var plantRoom_river_sparkle2:Class = SpriteHandler_plantRoom_river_sparkle2;
      
      private static var plantRoom_river_splash:Class = SpriteHandler_plantRoom_river_splash;
      
      private static var plantRoom_river_wallArch:Class = SpriteHandler_plantRoom_river_wallArch;
      
      private static var plantRoom_bush:Class = SpriteHandler_plantRoom_bush;
      
      private static var plantRoom_berryBushes:Class = SpriteHandler_plantRoom_berryBushes;
      
      private static var plantRoom_bottomDoor:Class = SpriteHandler_plantRoom_bottomDoor;
      
      private static var plantRoom_bottomWall:Class = SpriteHandler_plantRoom_bottomWall;
      
      private static var plantRoom_boulder:Class = SpriteHandler_plantRoom_boulder;
      
      private static var plantRoom_boulderSmall:Class = SpriteHandler_plantRoom_boulderSmall;
      
      private static var plantRoom_flowers1:Class = SpriteHandler_plantRoom_flowers1;
      
      private static var plantRoom_flowers2:Class = SpriteHandler_plantRoom_flowers2;
      
      private static var plantRoom_flowers3:Class = SpriteHandler_plantRoom_flowers3;
      
      private static var plantRoom_groundTile:Class = SpriteHandler_plantRoom_groundTile;
      
      private static var plantRoom_groundTile_clover:Class = SpriteHandler_plantRoom_groundTile_clover;
      
      private static var plantRoom_groundTile_dandelion:Class = SpriteHandler_plantRoom_groundTile_dandelion;
      
      private static var plantRoom_groundTile_deadPatches:Class = SpriteHandler_plantRoom_groundTile_deadPatches;
      
      private static var plantRoom_groundTile_flowers:Class = SpriteHandler_plantRoom_groundTile_flowers;
      
      private static var plantRoom_lowerLeftCorner:Class = SpriteHandler_plantRoom_lowerLeftCorner;
      
      private static var plantRoom_lowerRightCorner:Class = SpriteHandler_plantRoom_lowerRightCorner;
      
      private static var plantRoom_mushrooms:Class = SpriteHandler_plantRoom_mushrooms;
      
      private static var plantRoom_oakTree:Class = SpriteHandler_plantRoom_oakTree;
      
      private static var plantRoom_oakTree2:Class = SpriteHandler_plantRoom_oakTree2;
      
      private static var plantRoom_path_lowerLeft:Class = SpriteHandler_plantRoom_path_lowerLeft;
      
      private static var plantRoom_path_upperLeft:Class = SpriteHandler_plantRoom_path_upperLeft;
      
      private static var plantRoom_path1:Class = SpriteHandler_plantRoom_path1;
      
      private static var plantRoom_path2:Class = SpriteHandler_plantRoom_path2;
      
      private static var plantRoom_pineTree1:Class = SpriteHandler_plantRoom_pineTree1;
      
      private static var plantRoom_pineTree2:Class = SpriteHandler_plantRoom_pineTree2;
      
      private static var plantRoom_lowerLeftWallSection:Class = SpriteHandler_plantRoom_lowerLeftWallSection;
      
      private static var plantRoom_sideDoor:Class = SpriteHandler_plantRoom_sideDoor;
      
      private static var plantRoom_sideWall:Class = SpriteHandler_plantRoom_sideWall;
      
      private static var plantRoom_stump:Class = SpriteHandler_plantRoom_stump;
      
      private static var plantRoom_topDoor:Class = SpriteHandler_plantRoom_topDoor;
      
      private static var plantRoom_topWall:Class = SpriteHandler_plantRoom_topWall;
      
      private static var plantRoom_trellis:Class = SpriteHandler_plantRoom_trellis;
      
      private static var plantRoom_upperLeftCorner:Class = SpriteHandler_plantRoom_upperLeftCorner;
      
      private static var plantRoom_upperRightCorner:Class = SpriteHandler_plantRoom_upperRightCorner;
      
      private static var plantRoom_forestEnemy_front:Class = SpriteHandler_plantRoom_forestEnemy_front;
      
      private static var plantRoom_forestEnemy_side:Class = SpriteHandler_plantRoom_forestEnemy_side;
      
      private static var plantRoom_forestEnemyBoy_front:Class = SpriteHandler_plantRoom_forestEnemyBoy_front;
      
      private static var plantRoom_forestEnemyGirl_front:Class = SpriteHandler_plantRoom_forestEnemyGirl_front;
      
      private static var plantRoom_outdoorEnemy_front:Class = SpriteHandler_plantRoom_outdoorEnemy_front;
      
      private static var plantRoom_outdoorEnemy_side:Class = SpriteHandler_plantRoom_outdoorEnemy_side;
      
      private static var plantRoom_waterEnemy_front:Class = SpriteHandler_plantRoom_waterEnemy_front;
      
      private static var plantRoom_waterEnemy_side:Class = SpriteHandler_plantRoom_waterEnemy_side;
      
      private static var electricRoom_acidPuddle:Class = SpriteHandler_electricRoom_acidPuddle;
      
      private static var electricRoom_barrel:Class = SpriteHandler_electricRoom_barrel;
      
      private static var electricRoom_beakerSet1:Class = SpriteHandler_electricRoom_beakerSet1;
      
      private static var electricRoom_beakerSet2:Class = SpriteHandler_electricRoom_beakerSet2;
      
      private static var electricRoom_bookshelf:Class = SpriteHandler_electricRoom_bookshelf;
      
      private static var electricRoom_bookshelf_beakers:Class = SpriteHandler_electricRoom_bookshelf_beakers;
      
      private static var electricRoom_bookshelf_books:Class = SpriteHandler_electricRoom_bookshelf_books;
      
      private static var electricRoom_conveyorBelt:Class = SpriteHandler_electricRoom_conveyorBelt;
      
      private static var electricRoom_crate:Class = SpriteHandler_electricRoom_crate;
      
      private static var electricRoom_dissectionSet:Class = SpriteHandler_electricRoom_dissectionSet;
      
      private static var electricRoom_emptyVat:Class = SpriteHandler_electricRoom_emptyVat;
      
      private static var electricRoom_floorTile:Class = SpriteHandler_electricRoom_floorTile;
      
      private static var electricRoom_floorTile_blackAndWhite:Class = SpriteHandler_electricRoom_floorTile_blackAndWhite;
      
      private static var electricRoom_floorTile_metalLitter:Class = SpriteHandler_electricRoom_floorTile_metalLitter;
      
      private static var electricRoom_floorTile_pipes:Class = SpriteHandler_electricRoom_floorTile_pipes;
      
      private static var electricRoom_floorTile_pipesWithGauge:Class = SpriteHandler_electricRoom_floorTile_pipesWithGauge;
      
      private static var electricRoom_frontTable_center:Class = SpriteHandler_electricRoom_frontTable_center;
      
      private static var electricRoom_frontTable_left:Class = SpriteHandler_electricRoom_frontTable_left;
      
      private static var electricRoom_frontTable_right:Class = SpriteHandler_electricRoom_frontTable_right;
      
      private static var electricRoom_junkPile:Class = SpriteHandler_electricRoom_junkPile;
      
      private static var electricRoom_machine:Class = SpriteHandler_electricRoom_machine;
      
      private static var electricRoom_occupiedVat:Class = SpriteHandler_electricRoom_occupiedVat;
      
      private static var electricRoom_oilPuddle:Class = SpriteHandler_electricRoom_oilPuddle;
      
      private static var electricRoom_sideTable_bottom:Class = SpriteHandler_electricRoom_sideTable_bottom;
      
      private static var electricRoom_sideTable_center:Class = SpriteHandler_electricRoom_sideTable_center;
      
      private static var electricRoom_sideTable_top:Class = SpriteHandler_electricRoom_sideTable_top;
      
      private static var electricRoom_teslaCoil:Class = SpriteHandler_electricRoom_teslaCoil;
      
      private static var electricRoom_wallCables_bottom:Class = SpriteHandler_electricRoom_wallCables_bottom;
      
      private static var electricRoom_wallCables_side:Class = SpriteHandler_electricRoom_wallCables_side;
      
      private static var electricRoom_wallCables_top1:Class = SpriteHandler_electricRoom_wallCables_top1;
      
      private static var electricRoom_wallCables_top2:Class = SpriteHandler_electricRoom_wallCables_top2;
      
      private static var electricRoom_cyborgEnemy_front:Class = SpriteHandler_electricRoom_cyborgEnemy_front;
      
      private static var electricRoom_cyborgEnemy_side:Class = SpriteHandler_electricRoom_cyborgEnemy_side;
      
      private static var electricRoom_femaleEnemy_front:Class = SpriteHandler_electricRoom_femaleEnemy_front;
      
      private static var electricRoom_femaleEnemy_side:Class = SpriteHandler_electricRoom_femaleEnemy_side;
      
      private static var electricRoom_labcoatEnemy_front:Class = SpriteHandler_electricRoom_labcoatEnemy_front;
      
      private static var electricRoom_labcoatEnemy_side:Class = SpriteHandler_electricRoom_labcoatEnemy_side;
      
      private static var undeadRoom_altar:Class = SpriteHandler_undeadRoom_altar;
      
      private static var undeadRoom_bottomDoor:Class = SpriteHandler_undeadRoom_bottomDoor;
      
      private static var undeadRoom_bottomWall:Class = SpriteHandler_undeadRoom_bottomWall;
      
      private static var undeadRoom_bush:Class = SpriteHandler_undeadRoom_bush;
      
      private static var undeadRoom_cattails:Class = SpriteHandler_undeadRoom_cattails;
      
      private static var undeadRoom_costumeEnemy_front:Class = SpriteHandler_undeadRoom_costumeEnemy_front;
      
      private static var undeadRoom_costumeEnemy_side:Class = SpriteHandler_undeadRoom_costumeEnemy_side;
      
      private static var undeadRoom_gothEnemy_front:Class = SpriteHandler_undeadRoom_gothEnemy_front;
      
      private static var undeadRoom_gothEnemy_side:Class = SpriteHandler_undeadRoom_gothEnemy_side;
      
      private static var undeadRoom_grassPatch1:Class = SpriteHandler_undeadRoom_grassPatch1;
      
      private static var undeadRoom_grassPatch2:Class = SpriteHandler_undeadRoom_grassPatch2;
      
      private static var undeadRoom_grassPatch3:Class = SpriteHandler_undeadRoom_grassPatch3;
      
      private static var undeadRoom_grassPatch4:Class = SpriteHandler_undeadRoom_grassPatch4;
      
      private static var undeadRoom_groundTile:Class = SpriteHandler_undeadRoom_groundTile;
      
      private static var undeadRoom_groundTile_cobwebs:Class = SpriteHandler_undeadRoom_groundTile_cobwebs;
      
      private static var undeadRoom_groundTile_debris:Class = SpriteHandler_undeadRoom_groundTile_debris;
      
      private static var undeadRoom_groundTile_moss:Class = SpriteHandler_undeadRoom_groundTile_moss;
      
      private static var undeadRoom_groundTile_purpleCracks:Class = SpriteHandler_undeadRoom_groundTile_purpleCracks;
      
      private static var undeadRoom_headstones1:Class = SpriteHandler_undeadRoom_headstones1;
      
      private static var undeadRoom_headstones2:Class = SpriteHandler_undeadRoom_headstones2;
      
      private static var undeadRoom_headstones3:Class = SpriteHandler_undeadRoom_headstones3;
      
      private static var undeadRoom_lowerLeftCorner:Class = SpriteHandler_undeadRoom_lowerLeftCorner;
      
      private static var undeadRoom_lowerRightCorner:Class = SpriteHandler_undeadRoom_lowerRightCorner;
      
      private static var undeadRoom_mushrooms:Class = SpriteHandler_undeadRoom_mushrooms;
      
      private static var undeadRoom_necromancerEnemy_front:Class = SpriteHandler_undeadRoom_necromancerEnemy_front;
      
      private static var undeadRoom_necromancerEnemy_side:Class = SpriteHandler_undeadRoom_necromancerEnemy_side;
      
      private static var undeadRoom_oak:Class = SpriteHandler_undeadRoom_oak;
      
      private static var undeadRoom_path_lowerLeft:Class = SpriteHandler_undeadRoom_path_lowerLeft;
      
      private static var undeadRoom_path_upperLeft:Class = SpriteHandler_undeadRoom_path_upperLeft;
      
      private static var undeadRoom_path1:Class = SpriteHandler_undeadRoom_path1;
      
      private static var undeadRoom_path2:Class = SpriteHandler_undeadRoom_path2;
      
      private static var undeadRoom_ribs:Class = SpriteHandler_undeadRoom_ribs;
      
      private static var undeadRoom_sideDoor:Class = SpriteHandler_undeadRoom_sideDoor;
      
      private static var undeadRoom_sideWall:Class = SpriteHandler_undeadRoom_sideWall;
      
      private static var undeadRoom_skull:Class = SpriteHandler_undeadRoom_skull;
      
      private static var undeadRoom_swamp:Class = SpriteHandler_undeadRoom_swamp;
      
      private static var undeadRoom_thornBush:Class = SpriteHandler_undeadRoom_thornBush;
      
      private static var undeadRoom_topDoor:Class = SpriteHandler_undeadRoom_topDoor;
      
      private static var undeadRoom_topWall:Class = SpriteHandler_undeadRoom_topWall;
      
      private static var undeadRoom_upperLeftCorner:Class = SpriteHandler_undeadRoom_upperLeftCorner;
      
      private static var undeadRoom_upperRightCorner:Class = SpriteHandler_undeadRoom_upperRightCorner;
      
      private static var undeadRoom_willow:Class = SpriteHandler_undeadRoom_willow;
      
      private static var generalRoom_sideTorch1:Class = SpriteHandler_generalRoom_sideTorch1;
      
      private static var generalRoom_sideTorch2:Class = SpriteHandler_generalRoom_sideTorch2;
      
      private static var generalRoom_sideTorch3:Class = SpriteHandler_generalRoom_sideTorch3;
      
      private static var generalRoom_sideTorch4:Class = SpriteHandler_generalRoom_sideTorch4;
      
      private static var generalRoom_sideTorch5:Class = SpriteHandler_generalRoom_sideTorch5;
      
      private static var generalRoom_sideTorch6:Class = SpriteHandler_generalRoom_sideTorch6;
      
      private static var generalRoom_topTorch1:Class = SpriteHandler_generalRoom_topTorch1;
      
      private static var generalRoom_topTorch2:Class = SpriteHandler_generalRoom_topTorch2;
      
      private static var generalRoom_topTorch3:Class = SpriteHandler_generalRoom_topTorch3;
      
      private static var generalRoom_topTorch4:Class = SpriteHandler_generalRoom_topTorch4;
      
      private static var generalRoom_topTorch5:Class = SpriteHandler_generalRoom_topTorch5;
      
      private static var generalRoom_topTorch6:Class = SpriteHandler_generalRoom_topTorch6;
      
      private static var generalRoom_topTorch7:Class = SpriteHandler_generalRoom_topTorch7;
      
      private static var generalRoom_topTorch_plantBase:Class = SpriteHandler_generalRoom_topTorch_plantBase;
      
      private static var generalRoom_topTorch_plantGlow:Class = SpriteHandler_generalRoom_topTorch_plantGlow;
      
      private static var generalRoom_expertStatue:Class = SpriteHandler_generalRoom_expertStatue;
      
      private static var generalRoom_topDoor_floorPatch:Class = SpriteHandler_generalRoom_topDoor_floorPatch;
      
      private static var generalRoom_bottomDoor_floorPatch:Class = SpriteHandler_generalRoom_bottomDoor_floorPatch;
      
      private static var generalRoom_entryDoor:Class = SpriteHandler_generalRoom_entryDoor;
      
      private static var generalRoom_gymDoor:Class = SpriteHandler_generalRoom_gymDoor;
      
      private static var generalRoom_wideRedRunner_connector:Class = SpriteHandler_generalRoom_wideRedRunner_connector;
      
      private static var generalRoom_wideRedRunner_mid1:Class = SpriteHandler_generalRoom_wideRedRunner_mid1;
      
      private static var generalRoom_wideRedRunner_mid2:Class = SpriteHandler_generalRoom_wideRedRunner_mid2;
      
      private static var generalRoom_wideRedRunner_top:Class = SpriteHandler_generalRoom_wideRedRunner_top;
      
      private static var generalRoom_electricGymEnemy:Class = SpriteHandler_generalRoom_electricGymEnemy;
      
      private static var generalRoom_fireGymEnemy:Class = SpriteHandler_generalRoom_fireGymEnemy;
      
      private static var generalRoom_grandWizard:Class = SpriteHandler_generalRoom_grandWizard;
      
      private static var generalRoom_plantGymEnemy:Class = SpriteHandler_generalRoom_plantGymEnemy;
      
      private static var generalRoom_plantWizard:Class = SpriteHandler_generalRoom_plantWizard;
      
      private static var generalRoom_undeadGymEnemy:Class = SpriteHandler_generalRoom_undeadGymEnemy;
      
      private static var generalRoom_undeadWizard:Class = SpriteHandler_generalRoom_undeadWizard;
      
      private static var generalRoom_specialDoor_locked:Class = SpriteHandler_generalRoom_specialDoor_locked;
      
      private static var generalRoom_specialDoor_open:Class = SpriteHandler_generalRoom_specialDoor_open;
      
      private static var generalRoom_healStone:Class = SpriteHandler_generalRoom_healStone;
      
      private static var generalRoom_healStone_glow:Class = SpriteHandler_generalRoom_healStone_glow;
      
      private static var generalRoom_healAnimation_crosses:Class = SpriteHandler_generalRoom_healAnimation_crosses;
      
      private static var generalRoom_healAnimation_healed:Class = SpriteHandler_generalRoom_healAnimation_healed;
      
      private static var room_teleporterOff:Class = SpriteHandler_room_teleporterOff;
      
      private static var room_expertTeleporter:Class = SpriteHandler_room_expertTeleporter;
      
      private static var room_generalTeleporter:Class = SpriteHandler_room_generalTeleporter;
      
      private static var room_expertTeleporter_glow:Class = SpriteHandler_room_expertTeleporter_glow;
      
      private static var room_generalTeleporter_glow:Class = SpriteHandler_room_generalTeleporter_glow;
      
      private static var generalRoom_genericTapestry_plant:Class = SpriteHandler_generalRoom_genericTapestry_plant;
      
      private static var generalRoom_genericTapestrySide_plant:Class = SpriteHandler_generalRoom_genericTapestrySide_plant;
      
      private static var generalRoom_bottomDoor:Class = SpriteHandler_generalRoom_bottomDoor;
      
      private static var generalRoom_bottomPillar:Class = SpriteHandler_generalRoom_bottomPillar;
      
      private static var generalRoom_bottomTorch1:Class = SpriteHandler_generalRoom_bottomTorch1;
      
      private static var generalRoom_bottomTorch2:Class = SpriteHandler_generalRoom_bottomTorch2;
      
      private static var generalRoom_bottomTorch3:Class = SpriteHandler_generalRoom_bottomTorch3;
      
      private static var generalRoom_bottomTorch4:Class = SpriteHandler_generalRoom_bottomTorch4;
      
      private static var generalRoom_bottomTorch5:Class = SpriteHandler_generalRoom_bottomTorch5;
      
      private static var generalRoom_bottomTorch6:Class = SpriteHandler_generalRoom_bottomTorch6;
      
      private static var generalRoom_bottomWall:Class = SpriteHandler_generalRoom_bottomWall;
      
      private static var generalRoom_bottomWall_crack:Class = SpriteHandler_generalRoom_bottomWall_crack;
      
      private static var generalRoom_candelabra:Class = SpriteHandler_generalRoom_candelabra;
      
      private static var generalRoom_detailTapestry_demonic:Class = SpriteHandler_generalRoom_detailTapestry_demonic;
      
      private static var generalRoom_detailTapestry_electric:Class = SpriteHandler_generalRoom_detailTapestry_electric;
      
      private static var generalRoom_detailTapestry_fire:Class = SpriteHandler_generalRoom_detailTapestry_fire;
      
      private static var generalRoom_floorRunnerMid1:Class = SpriteHandler_generalRoom_floorRunnerMid1;
      
      private static var generalRoom_floorRunnerMid2:Class = SpriteHandler_generalRoom_floorRunnerMid2;
      
      private static var generalRoom_floorRunnerTop:Class = SpriteHandler_generalRoom_floorRunnerTop;
      
      private static var generalRoom_floorTile:Class = SpriteHandler_generalRoom_floorTile;
      
      private static var generalRoom_genericTapestry_fire:Class = SpriteHandler_generalRoom_genericTapestry_fire;
      
      private static var generalRoom_genericTapestrySide_fire:Class = SpriteHandler_generalRoom_genericTapestrySide_fire;
      
      private static var generalRoom_goldFloorVase:Class = SpriteHandler_generalRoom_goldFloorVase;
      
      private static var generalRoom_lowerLeft_tSection:Class = SpriteHandler_generalRoom_lowerLeft_tSection;
      
      private static var generalRoom_lowerLeftCorner:Class = SpriteHandler_generalRoom_lowerLeftCorner;
      
      private static var generalRoom_lowerRight_tSection:Class = SpriteHandler_generalRoom_lowerRight_tSection;
      
      private static var generalRoom_lowerRightCorner:Class = SpriteHandler_generalRoom_lowerRightCorner;
      
      private static var generalRoom_partialWall:Class = SpriteHandler_generalRoom_partialWall;
      
      private static var generalRoom_rocks1:Class = SpriteHandler_generalRoom_rocks1;
      
      private static var generalRoom_rocks2:Class = SpriteHandler_generalRoom_rocks2;
      
      private static var generalRoom_sideDoor:Class = SpriteHandler_generalRoom_sideDoor;
      
      private static var generalRoom_sidePillar:Class = SpriteHandler_generalRoom_sidePillar;
      
      private static var generalRoom_sideWall:Class = SpriteHandler_generalRoom_sideWall;
      
      private static var generalRoom_sideWall_crack:Class = SpriteHandler_generalRoom_sideWall_crack;
      
      private static var generalRoom_silverFloorVase:Class = SpriteHandler_generalRoom_silverFloorVase;
      
      private static var generalRoom_tableCandles:Class = SpriteHandler_generalRoom_tableCandles;
      
      private static var generalRoom_tableHorn:Class = SpriteHandler_generalRoom_tableHorn;
      
      private static var generalRoom_tablePlate:Class = SpriteHandler_generalRoom_tablePlate;
      
      private static var generalRoom_tableRunner:Class = SpriteHandler_generalRoom_tableRunner;
      
      private static var generalRoom_tableSkeleton:Class = SpriteHandler_generalRoom_tableSkeleton;
      
      private static var generalRoom_tableVase:Class = SpriteHandler_generalRoom_tableVase;
      
      private static var generalRoom_topDoor:Class = SpriteHandler_generalRoom_topDoor;
      
      private static var generalRoom_topPillar:Class = SpriteHandler_generalRoom_topPillar;
      
      private static var generalRoom_topWall:Class = SpriteHandler_generalRoom_topWall;
      
      private static var generalRoom_topWall_crack:Class = SpriteHandler_generalRoom_topWall_crack;
      
      private static var generalRoom_upperLeft_tSection:Class = SpriteHandler_generalRoom_upperLeft_tSection;
      
      private static var generalRoom_upperLeftCorner:Class = SpriteHandler_generalRoom_upperLeftCorner;
      
      private static var generalRoom_upperRight_tSection:Class = SpriteHandler_generalRoom_upperRight_tSection;
      
      private static var generalRoom_upperRightCorner:Class = SpriteHandler_generalRoom_upperRightCorner;
      
      private static var generalRoom_floorMosaic_floral:Class = SpriteHandler_generalRoom_floorMosaic_floral;
      
      private static var generalRoom_floorMosaic_sun:Class = SpriteHandler_generalRoom_floorMosaic_sun;
      
      private static var generalRoom_floorMosaic_target:Class = SpriteHandler_generalRoom_floorMosaic_target;
      
      private static var generalRoom_sideTable_bottom:Class = SpriteHandler_generalRoom_sideTable_bottom;
      
      private static var generalRoom_sideTable_center:Class = SpriteHandler_generalRoom_sideTable_center;
      
      private static var generalRoom_sideTable_top:Class = SpriteHandler_generalRoom_sideTable_top;
      
      private static var generalRoom_topTable_center:Class = SpriteHandler_generalRoom_topTable_center;
      
      private static var generalRoom_topTable_left:Class = SpriteHandler_generalRoom_topTable_left;
      
      private static var generalRoom_topTable_right:Class = SpriteHandler_generalRoom_topTable_right;
      
      private static var generalRoom_floorRunner_rotationConnect:Class = SpriteHandler_generalRoom_floorRunner_rotationConnect;
      
      private static var room_gemChest:Class = SpriteHandler_room_gemChest;
      
      private static var room_goldChest:Class = SpriteHandler_room_goldChest;
      
      private static var eggery_egg:Class = SpriteHandler_eggery_egg;
      
      private static var eggery_eggPit_back:Class = SpriteHandler_eggery_eggPit_back;
      
      private static var eggery_eggPit_front:Class = SpriteHandler_eggery_eggPit_front;
      
      private static var eggery_minionDetailsBackground:Class = SpriteHandler_eggery_minionDetailsBackground;
      
      private static var menus_compare_arrow:Class = SpriteHandler_menus_compare_arrow;
      
      private static var eggery_fireplace:Class = SpriteHandler_eggery_fireplace;
      
      private static var eggery_fireplaceFire1:Class = SpriteHandler_eggery_fireplaceFire1;
      
      private static var eggery_fireplaceFire2:Class = SpriteHandler_eggery_fireplaceFire2;
      
      private static var eggery_fireplaceFire3:Class = SpriteHandler_eggery_fireplaceFire3;
      
      private static var eggery_fireplaceFire4:Class = SpriteHandler_eggery_fireplaceFire4;
      
      private static var eggery_fireplaceFire5:Class = SpriteHandler_eggery_fireplaceFire5;
      
      private static var eggery_fireplaceFire6:Class = SpriteHandler_eggery_fireplaceFire6;
      
      private static var eggery_fireplaceFire7:Class = SpriteHandler_eggery_fireplaceFire7;
      
      private static var eggery_haySmall:Class = SpriteHandler_eggery_haySmall;
      
      private static var eggery_hay:Class = SpriteHandler_eggery_hay;
      
      private static var generalRoom_eggeryDoor_locked:Class = SpriteHandler_generalRoom_eggeryDoor_locked;
      
      private static var generalRoom_eggeryDoor_open:Class = SpriteHandler_generalRoom_eggeryDoor_open;
      
      private static var generalRoom_bossEnemy:Class = SpriteHandler_generalRoom_bossEnemy;
      
      private static var generalRoom_hardEnemy:Class = SpriteHandler_generalRoom_hardEnemy;
      
      private static var generalRoom_expertEnemy:Class = SpriteHandler_generalRoom_expertEnemy;
      
      private static var generalRoom_detailTapestry_plant:Class = SpriteHandler_generalRoom_detailTapestry_plant;
      
      private static var generalRoom_green_floorRunner_rotationConnect:Class = SpriteHandler_generalRoom_green_floorRunner_rotationConnect;
      
      private static var generalRoom_green_floorRunnerMid1:Class = SpriteHandler_generalRoom_green_floorRunnerMid1;
      
      private static var generalRoom_green_floorRunnerMid2:Class = SpriteHandler_generalRoom_green_floorRunnerMid2;
      
      private static var generalRoom_green_floorRunnerTop:Class = SpriteHandler_generalRoom_green_floorRunnerTop;
      
      private static var generalRoom_bottomTorch_plant:Class = SpriteHandler_generalRoom_bottomTorch_plant;
      
      private static var generalRoom_sideTorch_plant:Class = SpriteHandler_generalRoom_sideTorch_plant;
      
      private static var generalRoom_topTorch_plant:Class = SpriteHandler_generalRoom_topTorch_plant;
      
      private static var generalRoom_gemCombiner:Class = SpriteHandler_generalRoom_gemCombiner;
      
      private static var generalRoom_gemCombiner_anvil:Class = SpriteHandler_generalRoom_gemCombiner_anvil;
      
      private static var generalRoom_gemSalesman_blanket:Class = SpriteHandler_generalRoom_gemSalesman_blanket;
      
      private static var generalRoom_gemSalesman:Class = SpriteHandler_generalRoom_gemSalesman;
      
      private static var generalRoom_minionKeeper:Class = SpriteHandler_generalRoom_minionKeeper;
      
      private static var generalRoom_largeMosaic:Class = SpriteHandler_generalRoom_largeMosaic;
      
      private static var generalRoom_largePillar:Class = SpriteHandler_generalRoom_largePillar;
      
      private static var generalRoom_titanDoorBars_down:Class = SpriteHandler_generalRoom_titanDoorBars_down;
      
      private static var generalRoom_titanDoorBars_up:Class = SpriteHandler_generalRoom_titanDoorBars_up;
      
      private static var generalRoom_velvetRope:Class = SpriteHandler_generalRoom_velvetRope;
      
      private static var generalRoom_vipSign:Class = SpriteHandler_generalRoom_vipSign;
      
      private static var generalRoom_blocked_bottomDoor:Class = SpriteHandler_generalRoom_blocked_bottomDoor;
      
      private static var generalRoom_eggeryDoor_locked_sixKeys:Class = SpriteHandler_generalRoom_eggeryDoor_locked_sixKeys;
      
      private static var visualMove_statDecrease:Class = SpriteHandler_visualMove_statDecrease;
      
      private static var visualMove_statIncrease:Class = SpriteHandler_visualMove_statIncrease;
      
      private static var visualMove_moveMissed:Class = SpriteHandler_visualMove_moveMissed;
      
      private static var visualMove_charging:Class = SpriteHandler_visualMove_charging;
      
      private static var visualMove_exhausted:Class = SpriteHandler_visualMove_exhausted;
      
      private static var visualMove_frozen:Class = SpriteHandler_visualMove_frozen;
      
      private static var visualMove_stunned:Class = SpriteHandler_visualMove_stunned;
      
      private static var visualMove_reflectedDamage:Class = SpriteHandler_visualMove_reflectedDamage;
      
      private static var titan1:Class = SpriteHandler_titan1;
      
      private static var titan2:Class = SpriteHandler_titan2;
      
      private static var demonicBatDog:Class = SpriteHandler_demonicBatDog;
      
      private static var demonicCat1:Class = SpriteHandler_demonicCat1;
      
      private static var demonicCat2:Class = SpriteHandler_demonicCat2;
      
      private static var demonicEyeball1:Class = SpriteHandler_demonicEyeball1;
      
      private static var demonicEyeball2:Class = SpriteHandler_demonicEyeball2;
      
      private static var demonicEyeball3:Class = SpriteHandler_demonicEyeball3;
      
      private static var dinoRex1:Class = SpriteHandler_dinoRex1;
      
      private static var dinoRex2:Class = SpriteHandler_dinoRex2;
      
      private static var dinoRex3:Class = SpriteHandler_dinoRex3;
      
      private static var earthBear1:Class = SpriteHandler_earthBear1;
      
      private static var earthBear2:Class = SpriteHandler_earthBear2;
      
      private static var earthBeetle1:Class = SpriteHandler_earthBeetle1;
      
      private static var earthBeetle2:Class = SpriteHandler_earthBeetle2;
      
      private static var earthBeetle3:Class = SpriteHandler_earthBeetle3;
      
      private static var earthMole1:Class = SpriteHandler_earthMole1;
      
      private static var earthMole2:Class = SpriteHandler_earthMole2;
      
      private static var earthMole3:Class = SpriteHandler_earthMole3;
      
      private static var earthTortoiseWhite:Class = SpriteHandler_earthTortoiseWhite;
      
      private static var earthWorm1:Class = SpriteHandler_earthWorm1;
      
      private static var earthWorm2:Class = SpriteHandler_earthWorm2;
      
      private static var earthWorm3:Class = SpriteHandler_earthWorm3;
      
      private static var energyBoar1:Class = SpriteHandler_energyBoar1;
      
      private static var energyBoar2:Class = SpriteHandler_energyBoar2;
      
      private static var energyBoar3:Class = SpriteHandler_energyBoar3;
      
      private static var energyCheetah1:Class = SpriteHandler_energyCheetah1;
      
      private static var energyCheetah2:Class = SpriteHandler_energyCheetah2;
      
      private static var energyCheetah3:Class = SpriteHandler_energyCheetah3;
      
      private static var energyJellyfish1:Class = SpriteHandler_energyJellyfish1;
      
      private static var energyJellyfish2:Class = SpriteHandler_energyJellyfish2;
      
      private static var energyScorpion1:Class = SpriteHandler_energyScorpion1;
      
      private static var energyScorpion2:Class = SpriteHandler_energyScorpion2;
      
      private static var energyScorpion3:Class = SpriteHandler_energyScorpion3;
      
      private static var featheredSerpent:Class = SpriteHandler_featheredSerpent;
      
      private static var fireMage:Class = SpriteHandler_fireMage;
      
      private static var fireMonkey1:Class = SpriteHandler_fireMonkey1;
      
      private static var fireMonkey2:Class = SpriteHandler_fireMonkey2;
      
      private static var fireRaptor1:Class = SpriteHandler_fireRaptor1;
      
      private static var fireRaptor2:Class = SpriteHandler_fireRaptor2;
      
      private static var fireRaptor3:Class = SpriteHandler_fireRaptor3;
      
      private static var fireToad1:Class = SpriteHandler_fireToad1;
      
      private static var fireToad2:Class = SpriteHandler_fireToad2;
      
      private static var fireToad3:Class = SpriteHandler_fireToad3;
      
      private static var flyingGriffin1:Class = SpriteHandler_flyingGriffin1;
      
      private static var flyingGriffin2:Class = SpriteHandler_flyingGriffin2;
      
      private static var flyingHarpy:Class = SpriteHandler_flyingHarpy;
      
      private static var flyingOwl1:Class = SpriteHandler_flyingOwl1;
      
      private static var flyingOwl2:Class = SpriteHandler_flyingOwl2;
      
      private static var flyingSongbird1:Class = SpriteHandler_flyingSongbird1;
      
      private static var flyingSongbird2:Class = SpriteHandler_flyingSongbird2;
      
      private static var flyingSongbird3:Class = SpriteHandler_flyingSongbird3;
      
      private static var holyBlueBell:Class = SpriteHandler_holyBlueBell;
      
      private static var holyFox:Class = SpriteHandler_holyFox;
      
      private static var holyMantis:Class = SpriteHandler_holyMantis;
      
      private static var holyPinkBell:Class = SpriteHandler_holyPinkBell;
      
      private static var iceStag:Class = SpriteHandler_iceStag;
      
      private static var iceTree1:Class = SpriteHandler_iceTree1;
      
      private static var iceTree2:Class = SpriteHandler_iceTree2;
      
      private static var normalArmadillo:Class = SpriteHandler_normalArmadillo;
      
      private static var normalArmadillo1:Class = SpriteHandler_normalArmadillo1;
      
      private static var normalRaccoon1:Class = SpriteHandler_normalRaccoon1;
      
      private static var normalRaccoon2:Class = SpriteHandler_normalRaccoon2;
      
      private static var normalSlime1:Class = SpriteHandler_normalSlime1;
      
      private static var normalSlime2:Class = SpriteHandler_normalSlime2;
      
      private static var normalSlime3:Class = SpriteHandler_normalSlime3;
      
      private static var normalTiger1:Class = SpriteHandler_normalTiger1;
      
      private static var normalTiger2:Class = SpriteHandler_normalTiger2;
      
      private static var plantGorilla1:Class = SpriteHandler_plantGorilla1;
      
      private static var plantGorilla2:Class = SpriteHandler_plantGorilla2;
      
      private static var plantLizard:Class = SpriteHandler_plantLizard;
      
      private static var plantSquid1:Class = SpriteHandler_plantSquid1;
      
      private static var plantSquid2:Class = SpriteHandler_plantSquid2;
      
      private static var plantSquid3:Class = SpriteHandler_plantSquid3;
      
      private static var plantViper1:Class = SpriteHandler_plantViper1;
      
      private static var plantViper2:Class = SpriteHandler_plantViper2;
      
      private static var plantViper3:Class = SpriteHandler_plantViper3;
      
      private static var robotAnteater:Class = SpriteHandler_robotAnteater;
      
      private static var robotAnteater1:Class = SpriteHandler_robotAnteater1;
      
      private static var robotBull:Class = SpriteHandler_robotBull;
      
      private static var robotDeathCall:Class = SpriteHandler_robotDeathCall;
      
      private static var robotHummingbird:Class = SpriteHandler_robotHummingbird;
      
      private static var robotShark:Class = SpriteHandler_robotShark;
      
      private static var undeadCrow1:Class = SpriteHandler_undeadCrow1;
      
      private static var undeadCrow2:Class = SpriteHandler_undeadCrow2;
      
      private static var undeadCrow3:Class = SpriteHandler_undeadCrow3;
      
      private static var undeadEel:Class = SpriteHandler_undeadEel;
      
      private static var undeadGolem:Class = SpriteHandler_undeadGolem;
      
      private static var undeadLich1:Class = SpriteHandler_undeadLich1;
      
      private static var undeadLich2:Class = SpriteHandler_undeadLich2;
      
      private static var undeadLich3:Class = SpriteHandler_undeadLich3;
      
      private static var undeadScarecrow1:Class = SpriteHandler_undeadScarecrow1;
      
      private static var undeadScarecrow2:Class = SpriteHandler_undeadScarecrow2;
      
      private static var undeadScarecrow3:Class = SpriteHandler_undeadScarecrow3;
      
      private static var undeadWarrior:Class = SpriteHandler_undeadWarrior;
      
      private static var waterDog1:Class = SpriteHandler_waterDog1;
      
      private static var waterDog2:Class = SpriteHandler_waterDog2;
      
      private static var waterHorse:Class = SpriteHandler_waterHorse;
      
      private static var waterKirin:Class = SpriteHandler_waterKirin;
      
      private static var waterLandShark:Class = SpriteHandler_waterLandShark;
      
      private static var waterSeal1:Class = SpriteHandler_waterSeal1;
      
      private static var waterSeal2:Class = SpriteHandler_waterSeal2;
      
      private static var unknownMinion:Class = SpriteHandler_unknownMinion;
      
      private static var moveIcon_crazed:Class = SpriteHandler_moveIcon_crazed;
      
      private static var moveIcon_dominate:Class = SpriteHandler_moveIcon_dominate;
      
      private static var moveIcon_titanBlast:Class = SpriteHandler_moveIcon_titanBlast;
      
      private static var moveIcon_titanHeal:Class = SpriteHandler_moveIcon_titanHeal;
      
      private static var moveIcon_titanLight:Class = SpriteHandler_moveIcon_titanLight;
      
      private static var moveIcon_titanRecovery:Class = SpriteHandler_moveIcon_titanRecovery;
      
      private static var moveIcon_titanSlam:Class = SpriteHandler_moveIcon_titanSlam;
      
      private static var moveIcon_titanSlash:Class = SpriteHandler_moveIcon_titanSlash;
      
      private static var moveIcon_kingsRush:Class = SpriteHandler_moveIcon_kingsRush;
      
      private static var moveIcon_agileInspiration:Class = SpriteHandler_moveIcon_agileInspiration;
      
      private static var moveIcon_agility:Class = SpriteHandler_moveIcon_agility;
      
      private static var moveIcon_alloyCoat:Class = SpriteHandler_moveIcon_alloyCoat;
      
      private static var moveIcon_ancientForce:Class = SpriteHandler_moveIcon_ancientForce;
      
      private static var moveIcon_ashenReminder:Class = SpriteHandler_moveIcon_ashenReminder;
      
      private static var moveIcon_avalanche:Class = SpriteHandler_moveIcon_avalanche;
      
      private static var moveIcon_batchBolt:Class = SpriteHandler_moveIcon_batchBolt;
      
      private static var moveIcon_blaze:Class = SpriteHandler_moveIcon_blaze;
      
      private static var moveIcon_blindingJolt:Class = SpriteHandler_moveIcon_blindingJolt;
      
      private static var moveIcon_bloodFusion:Class = SpriteHandler_moveIcon_bloodFusion;
      
      private static var moveIcon_bloodPress:Class = SpriteHandler_moveIcon_bloodPress;
      
      private static var moveIcon_blowBy:Class = SpriteHandler_moveIcon_blowBy;
      
      private static var moveIcon_boneChill:Class = SpriteHandler_moveIcon_boneChill;
      
      private static var moveIcon_boneCrunch:Class = SpriteHandler_moveIcon_boneCrunch;
      
      private static var moveIcon_brilliance:Class = SpriteHandler_moveIcon_brilliance;
      
      private static var moveIcon_burn:Class = SpriteHandler_moveIcon_burn;
      
      private static var moveIcon_chargeBlast:Class = SpriteHandler_moveIcon_chargeBlast;
      
      private static var moveIcon_chargePass:Class = SpriteHandler_moveIcon_chargePass;
      
      private static var moveIcon_chosenEarth:Class = SpriteHandler_moveIcon_chosenEarth;
      
      private static var moveIcon_claw:Class = SpriteHandler_moveIcon_claw;
      
      private static var moveIcon_cleanseDarkness:Class = SpriteHandler_moveIcon_cleanseDarkness;
      
      private static var moveIcon_cleansingHeal:Class = SpriteHandler_moveIcon_cleansingHeal;
      
      private static var moveIcon_cleric:Class = SpriteHandler_moveIcon_cleric;
      
      private static var moveIcon_cogFallout:Class = SpriteHandler_moveIcon_cogFallout;
      
      private static var moveIcon_coldfront:Class = SpriteHandler_moveIcon_coldfront;
      
      private static var moveIcon_concentration:Class = SpriteHandler_moveIcon_concentration;
      
      private static var moveIcon_crazedBlast:Class = SpriteHandler_moveIcon_crazedBlast;
      
      private static var moveIcon_crusade:Class = SpriteHandler_moveIcon_crusade;
      
      private static var moveIcon_crush:Class = SpriteHandler_moveIcon_crush;
      
      private static var moveIcon_cuttingWind:Class = SpriteHandler_moveIcon_cuttingWind;
      
      private static var moveIcon_deadlyInspiration:Class = SpriteHandler_moveIcon_deadlyInspiration;
      
      private static var moveIcon_deadTransfer:Class = SpriteHandler_moveIcon_deadTransfer;
      
      private static var moveIcon_deathCall:Class = SpriteHandler_moveIcon_deathCall;
      
      private static var moveIcon_deathlyEnergy:Class = SpriteHandler_moveIcon_deathlyEnergy;
      
      private static var moveIcon_demonicBargain:Class = SpriteHandler_moveIcon_demonicBargain;
      
      private static var moveIcon_demonicForce:Class = SpriteHandler_moveIcon_demonicForce;
      
      private static var moveIcon_demonicSacrifice:Class = SpriteHandler_moveIcon_demonicSacrifice;
      
      private static var moveIcon_demonicStrike:Class = SpriteHandler_moveIcon_demonicStrike;
      
      private static var moveIcon_demoralize:Class = SpriteHandler_moveIcon_demoralize;
      
      private static var moveIcon_demoralizingCharge:Class = SpriteHandler_moveIcon_demoralizingCharge;
      
      private static var moveIcon_destabalize:Class = SpriteHandler_moveIcon_destabalize;
      
      private static var moveIcon_diamondInspiration:Class = SpriteHandler_moveIcon_diamondInspiration;
      
      private static var moveIcon_diamondSkin:Class = SpriteHandler_moveIcon_diamondSkin;
      
      private static var moveIcon_download:Class = SpriteHandler_moveIcon_download;
      
      private static var moveIcon_drain:Class = SpriteHandler_moveIcon_drain;
      
      private static var moveIcon_dryIce:Class = SpriteHandler_moveIcon_dryIce;
      
      private static var moveIcon_earthBarrier:Class = SpriteHandler_moveIcon_earthBarrier;
      
      private static var moveIcon_earthquake:Class = SpriteHandler_moveIcon_earthquake;
      
      private static var moveIcon_earthShield:Class = SpriteHandler_moveIcon_earthShield;
      
      private static var moveIcon_earthyFortitude:Class = SpriteHandler_moveIcon_earthyFortitude;
      
      private static var moveIcon_efficiency:Class = SpriteHandler_moveIcon_efficiency;
      
      private static var moveIcon_energize:Class = SpriteHandler_moveIcon_energize;
      
      private static var moveIcon_energizingInspiration:Class = SpriteHandler_moveIcon_energizingInspiration;
      
      private static var moveIcon_evilEye:Class = SpriteHandler_moveIcon_evilEye;
      
      private static var moveIcon_ferocity:Class = SpriteHandler_moveIcon_ferocity;
      
      private static var moveIcon_fireball:Class = SpriteHandler_moveIcon_fireball;
      
      private static var moveIcon_fireBash:Class = SpriteHandler_moveIcon_fireBash;
      
      private static var moveIcon_fireBlast:Class = SpriteHandler_moveIcon_fireBlast;
      
      private static var moveIcon_fireBolt:Class = SpriteHandler_moveIcon_fireBolt;
      
      private static var moveIcon_fireRam:Class = SpriteHandler_moveIcon_fireRam;
      
      private static var moveIcon_flareUp:Class = SpriteHandler_moveIcon_flareUp;
      
      private static var moveIcon_fleshSacrifice:Class = SpriteHandler_moveIcon_fleshSacrifice;
      
      private static var moveIcon_flurry:Class = SpriteHandler_moveIcon_flurry;
      
      private static var moveIcon_focus:Class = SpriteHandler_moveIcon_focus;
      
      private static var moveIcon_focusedCharge:Class = SpriteHandler_moveIcon_focusedCharge;
      
      private static var moveIcon_forcefulHeal:Class = SpriteHandler_moveIcon_forcefulHeal;
      
      private static var moveIcon_fortitude:Class = SpriteHandler_moveIcon_fortitude;
      
      private static var moveIcon_freshStream:Class = SpriteHandler_moveIcon_freshStream;
      
      private static var moveIcon_grassBlade:Class = SpriteHandler_moveIcon_grassBlade;
      
      private static var moveIcon_grind:Class = SpriteHandler_moveIcon_grind;
      
      private static var moveIcon_hailstone:Class = SpriteHandler_moveIcon_hailstone;
      
      private static var moveIcon_haunt:Class = SpriteHandler_moveIcon_haunt;
      
      private static var moveIcon_holyBurn:Class = SpriteHandler_moveIcon_holyBurn;
      
      private static var moveIcon_holyLight:Class = SpriteHandler_moveIcon_holyLight;
      
      private static var moveIcon_holyStrike:Class = SpriteHandler_moveIcon_holyStrike;
      
      private static var moveIcon_hope:Class = SpriteHandler_moveIcon_hope;
      
      private static var moveIcon_hulkInspiration:Class = SpriteHandler_moveIcon_hulkInspiration;
      
      private static var moveIcon_hurricane:Class = SpriteHandler_moveIcon_hurricane;
      
      private static var moveIcon_iceBarrier:Class = SpriteHandler_moveIcon_iceBarrier;
      
      private static var moveIcon_iceEnclosure:Class = SpriteHandler_moveIcon_iceEnclosure;
      
      private static var moveIcon_iceShield:Class = SpriteHandler_moveIcon_iceShield;
      
      private static var moveIcon_icyBlast:Class = SpriteHandler_moveIcon_icyBlast;
      
      private static var moveIcon_infest:Class = SpriteHandler_moveIcon_infest;
      
      private static var moveIcon_inflame:Class = SpriteHandler_moveIcon_inflame;
      
      private static var moveIcon_innerForce:Class = SpriteHandler_moveIcon_innerForce;
      
      private static var moveIcon_intenseFlame:Class = SpriteHandler_moveIcon_intenseFlame;
      
      private static var moveIcon_kindle:Class = SpriteHandler_moveIcon_kindle;
      
      private static var moveIcon_lichBurn:Class = SpriteHandler_moveIcon_lichBurn;
      
      private static var moveIcon_lifelessTouch:Class = SpriteHandler_moveIcon_lifelessTouch;
      
      private static var moveIcon_madness:Class = SpriteHandler_moveIcon_madness;
      
      private static var moveIcon_martyr:Class = SpriteHandler_moveIcon_martyr;
      
      private static var moveIcon_mendingInspiration:Class = SpriteHandler_moveIcon_mendingInspiration;
      
      private static var moveIcon_metalMold:Class = SpriteHandler_moveIcon_metalMold;
      
      private static var moveIcon_metalShield:Class = SpriteHandler_moveIcon_metalShield;
      
      private static var moveIcon_meteorStrike:Class = SpriteHandler_moveIcon_meteorStrike;
      
      private static var moveIcon_mirrorCoating:Class = SpriteHandler_moveIcon_mirrorCoating;
      
      private static var moveIcon_mirrorSkin:Class = SpriteHandler_moveIcon_mirrorSkin;
      
      private static var moveIcon_mortify:Class = SpriteHandler_moveIcon_mortify;
      
      private static var moveIcon_mudBlast:Class = SpriteHandler_moveIcon_mudBlast;
      
      private static var moveIcon_mysticIce:Class = SpriteHandler_moveIcon_mysticIce;
      
      private static var moveIcon_needleBarrage:Class = SpriteHandler_moveIcon_needleBarrage;
      
      private static var moveIcon_nourish:Class = SpriteHandler_moveIcon_nourish;
      
      private static var moveIcon_oreDrill:Class = SpriteHandler_moveIcon_oreDrill;
      
      private static var moveIcon_overflow:Class = SpriteHandler_moveIcon_overflow;
      
      private static var moveIcon_overload:Class = SpriteHandler_moveIcon_overload;
      
      private static var moveIcon_peck:Class = SpriteHandler_moveIcon_peck;
      
      private static var moveIcon_penance:Class = SpriteHandler_moveIcon_penance;
      
      private static var moveIcon_persaverance:Class = SpriteHandler_moveIcon_persaverance;
      
      private static var moveIcon_phantomStrike:Class = SpriteHandler_moveIcon_phantomStrike;
      
      private static var moveIcon_piercingCharge:Class = SpriteHandler_moveIcon_piercingCharge;
      
      private static var moveIcon_platinum:Class = SpriteHandler_moveIcon_platinum;
      
      private static var moveIcon_poisonIvy:Class = SpriteHandler_moveIcon_poisonIvy;
      
      private static var moveIcon_poisonTooth:Class = SpriteHandler_moveIcon_poisonTooth;
      
      private static var moveIcon_pound:Class = SpriteHandler_moveIcon_pound;
      
      private static var moveIcon_prehistoricBite:Class = SpriteHandler_moveIcon_prehistoricBite;
      
      private static var moveIcon_priest:Class = SpriteHandler_moveIcon_priest;
      
      private static var moveIcon_purge:Class = SpriteHandler_moveIcon_purge;
      
      private static var moveIcon_quickness:Class = SpriteHandler_moveIcon_quickness;
      
      private static var moveIcon_rainfall:Class = SpriteHandler_moveIcon_rainfall;
      
      private static var moveIcon_rancidBite:Class = SpriteHandler_moveIcon_rancidBite;
      
      private static var moveIcon_razorVine:Class = SpriteHandler_moveIcon_razorVine;
      
      private static var moveIcon_recklessDash:Class = SpriteHandler_moveIcon_recklessDash;
      
      private static var moveIcon_recklessGrasp:Class = SpriteHandler_moveIcon_recklessGrasp;
      
      private static var moveIcon_refreshingWave:Class = SpriteHandler_moveIcon_refreshingWave;
      
      private static var moveIcon_regrowth:Class = SpriteHandler_moveIcon_regrowth;
      
      private static var moveIcon_resurgence:Class = SpriteHandler_moveIcon_resurgence;
      
      private static var moveIcon_righteousFate:Class = SpriteHandler_moveIcon_righteousFate;
      
      private static var moveIcon_righteousZeal:Class = SpriteHandler_moveIcon_righteousZeal;
      
      private static var moveIcon_roar:Class = SpriteHandler_moveIcon_roar;
      
      private static var moveIcon_rockBlast:Class = SpriteHandler_moveIcon_rockBlast;
      
      private static var moveIcon_rockSkin:Class = SpriteHandler_moveIcon_rockSkin;
      
      private static var moveIcon_rockSlide:Class = SpriteHandler_moveIcon_rockSlide;
      
      private static var moveIcon_rockThrow:Class = SpriteHandler_moveIcon_rockThrow;
      
      private static var moveIcon_sear:Class = SpriteHandler_moveIcon_sear;
      
      private static var moveIcon_serenity:Class = SpriteHandler_moveIcon_serenity;
      
      private static var moveIcon_skillfull:Class = SpriteHandler_moveIcon_skillfull;
      
      private static var moveIcon_skinTrap:Class = SpriteHandler_moveIcon_skinTrap;
      
      private static var moveIcon_sleet:Class = SpriteHandler_moveIcon_sleet;
      
      private static var moveIcon_slow:Class = SpriteHandler_moveIcon_slow;
      
      private static var moveIcon_soak:Class = SpriteHandler_moveIcon_soak;
      
      private static var moveIcon_solder:Class = SpriteHandler_moveIcon_solder;
      
      private static var moveIcon_spark:Class = SpriteHandler_moveIcon_spark;
      
      private static var moveIcon_spike:Class = SpriteHandler_moveIcon_spike;
      
      private static var moveIcon_sporeBlast:Class = SpriteHandler_moveIcon_sporeBlast;
      
      private static var moveIcon_staticPummel:Class = SpriteHandler_moveIcon_staticPummel;
      
      private static var moveIcon_steelSpike:Class = SpriteHandler_moveIcon_steelSpike;
      
      private static var moveIcon_stoneFall:Class = SpriteHandler_moveIcon_stoneFall;
      
      private static var moveIcon_stonequake:Class = SpriteHandler_moveIcon_stonequake;
      
      private static var moveIcon_stun:Class = SpriteHandler_moveIcon_stun;
      
      private static var moveIcon_swiftMend:Class = SpriteHandler_moveIcon_swiftMend;
      
      private static var moveIcon_tackle:Class = SpriteHandler_moveIcon_tackle;
      
      private static var moveIcon_taunt:Class = SpriteHandler_moveIcon_taunt;
      
      private static var moveIcon_thunderstorm:Class = SpriteHandler_moveIcon_thunderstorm;
      
      private static var moveIcon_timber:Class = SpriteHandler_moveIcon_timber;
      
      private static var moveIcon_tire:Class = SpriteHandler_moveIcon_tire;
      
      private static var moveIcon_touchFire:Class = SpriteHandler_moveIcon_touchFire;
      
      private static var moveIcon_treeSlam:Class = SpriteHandler_moveIcon_treeSlam;
      
      private static var moveIcon_twinMissile:Class = SpriteHandler_moveIcon_twinMissile;
      
      private static var moveIcon_vicious:Class = SpriteHandler_moveIcon_vicious;
      
      private static var moveIcon_volley:Class = SpriteHandler_moveIcon_volley;
      
      private static var moveIcon_warmth:Class = SpriteHandler_moveIcon_warmth;
      
      private static var moveIcon_waterInfusion:Class = SpriteHandler_moveIcon_waterInfusion;
      
      private static var moveIcon_waterJet:Class = SpriteHandler_moveIcon_waterJet;
      
      private static var moveIcon_waterSlam:Class = SpriteHandler_moveIcon_waterSlam;
      
      private static var moveIcon_wildfire:Class = SpriteHandler_moveIcon_wildfire;
      
      private static var moveIcon_wildLance:Class = SpriteHandler_moveIcon_wildLance;
      
      private static var moveIcon_wildTackle:Class = SpriteHandler_moveIcon_wildTackle;
      
      private static var moveIcon_windLance:Class = SpriteHandler_moveIcon_windLance;
      
      private static var menus_minionType_earth:Class = SpriteHandler_menus_minionType_earth;
      
      private static var menus_minionType_plant:Class = SpriteHandler_menus_minionType_plant;
      
      private static var menus_minionType_undead:Class = SpriteHandler_menus_minionType_undead;
      
      private static var menus_minionType_demonic:Class = SpriteHandler_menus_minionType_demonic;
      
      private static var menus_minionType_dino:Class = SpriteHandler_menus_minionType_dino;
      
      private static var menus_minionType_energy:Class = SpriteHandler_menus_minionType_energy;
      
      private static var menus_minionType_fire:Class = SpriteHandler_menus_minionType_fire;
      
      private static var menus_minionType_flying:Class = SpriteHandler_menus_minionType_flying;
      
      private static var menus_minionType_holy:Class = SpriteHandler_menus_minionType_holy;
      
      private static var menus_minionType_ice:Class = SpriteHandler_menus_minionType_ice;
      
      private static var menus_minionType_robot:Class = SpriteHandler_menus_minionType_robot;
      
      private static var menus_minionType_titan:Class = SpriteHandler_menus_minionType_titan;
      
      private static var menus_minionType_water:Class = SpriteHandler_menus_minionType_water;
      
      private static var menus_minionType_normal:Class = SpriteHandler_menus_minionType_normal;
      
      private static var moveDescription_type_earth:Class = SpriteHandler_moveDescription_type_earth;
      
      private static var moveDescription_type_plant:Class = SpriteHandler_moveDescription_type_plant;
      
      private static var moveDescription_type_undead:Class = SpriteHandler_moveDescription_type_undead;
      
      private static var moveDescription_type_demonic:Class = SpriteHandler_moveDescription_type_demonic;
      
      private static var moveDescription_type_dino:Class = SpriteHandler_moveDescription_type_dino;
      
      private static var moveDescription_type_energy:Class = SpriteHandler_moveDescription_type_energy;
      
      private static var moveDescription_type_fire:Class = SpriteHandler_moveDescription_type_fire;
      
      private static var moveDescription_type_flying:Class = SpriteHandler_moveDescription_type_flying;
      
      private static var moveDescription_type_holy:Class = SpriteHandler_moveDescription_type_holy;
      
      private static var moveDescription_type_ice:Class = SpriteHandler_moveDescription_type_ice;
      
      private static var moveDescription_type_robot:Class = SpriteHandler_moveDescription_type_robot;
      
      private static var moveDescription_type_titan:Class = SpriteHandler_moveDescription_type_titan;
      
      private static var moveDescription_type_water:Class = SpriteHandler_moveDescription_type_water;
      
      private static var moveDescription_type_normal:Class = SpriteHandler_moveDescription_type_normal;
      
      private static var roomSelect_grandSageIcon:Class = SpriteHandler_roomSelect_grandSageIcon;
      
      private static var roomSelect_plantRoom:Class = SpriteHandler_roomSelect_plantRoom;
      
      private static var roomSelect_fireRoom:Class = SpriteHandler_roomSelect_fireRoom;
      
      private static var roomSelect_electricRoom:Class = SpriteHandler_roomSelect_electricRoom;
      
      private static var roomSelect_undeadRoom:Class = SpriteHandler_roomSelect_undeadRoom;
      
      private static var roomSelect_towerTop:Class = SpriteHandler_roomSelect_towerTop;
      
      private static var roomSelect_towerCovered:Class = SpriteHandler_roomSelect_towerCovered;
      
      private static var roomSelect_towerCoveredLock:Class = SpriteHandler_roomSelect_towerCoveredLock;
      
      private static var roomSelect_returnButton:Class = SpriteHandler_roomSelect_returnButton;
      
      private static var roomSelect_roomFont_0:Class = SpriteHandler_roomSelect_roomFont_0;
      
      private static var roomSelect_roomFont_1:Class = SpriteHandler_roomSelect_roomFont_1;
      
      private static var roomSelect_roomFont_2:Class = SpriteHandler_roomSelect_roomFont_2;
      
      private static var roomSelect_roomFont_3:Class = SpriteHandler_roomSelect_roomFont_3;
      
      private static var roomSelect_roomFont_4:Class = SpriteHandler_roomSelect_roomFont_4;
      
      private static var roomSelect_roomFont_5:Class = SpriteHandler_roomSelect_roomFont_5;
      
      private static var roomSelect_roomFont_6:Class = SpriteHandler_roomSelect_roomFont_6;
      
      private static var roomSelect_roomFont_7:Class = SpriteHandler_roomSelect_roomFont_7;
      
      private static var roomSelect_roomFont_8:Class = SpriteHandler_roomSelect_roomFont_8;
      
      private static var roomSelect_roomFont_9:Class = SpriteHandler_roomSelect_roomFont_9;
      
      private static var roomSelect_roomInformationBackground:Class = SpriteHandler_roomSelect_roomInformationBackground;
      
      private static var roomSelect_roomInformationGoButton:Class = SpriteHandler_roomSelect_roomInformationGoButton;
      
      private static var roomSelect_roomInformationNewIcon:Class = SpriteHandler_roomSelect_roomInformationNewIcon;
      
      private static var roomSelect_tempCharIcon:Class = SpriteHandler_roomSelect_tempCharIcon;
      
      private static var roomSelect_upArrow:Class = SpriteHandler_roomSelect_upArrow;
      
      private static var roomSelect_maleIcon:Class = SpriteHandler_roomSelect_maleIcon;
      
      private static var roomSelect_femaleIcon:Class = SpriteHandler_roomSelect_femaleIcon;
      
      private static var roomSelect_background_stars:Class = SpriteHandler_roomSelect_background_stars;
      
      private static var roomSelect_roomInformationStars:Class = SpriteHandler_roomSelect_roomInformationStars;
      
      private static var roomSelect_background_frontMountains:Class = SpriteHandler_roomSelect_background_frontMountains;
      
      private static var roomSelect_roomFont_z:Class = SpriteHandler_roomSelect_roomFont_z;
      
      private static var roomSelect_electricRares:Class = SpriteHandler_roomSelect_electricRares;
      
      private static var roomSelect_fireRares:Class = SpriteHandler_roomSelect_fireRares;
      
      private static var roomSelect_grassRares:Class = SpriteHandler_roomSelect_grassRares;
      
      private static var roomSelect_undeadRares:Class = SpriteHandler_roomSelect_undeadRares;
      
      private static var roomSelect_normalModeButton:Class = SpriteHandler_roomSelect_normalModeButton;
      
      private static var roomSelect_hardModeButton:Class = SpriteHandler_roomSelect_hardModeButton;
      
      private static var roomSelect_normalModeButton_off:Class = SpriteHandler_roomSelect_normalModeButton_off;
      
      private static var roomSelect_hardModeButton_off:Class = SpriteHandler_roomSelect_hardModeButton_off;
      
      private static var roomSelect_hardModeTab:Class = SpriteHandler_roomSelect_hardModeTab;
      
      private static var whiteFadeBackground:Class = SpriteHandler_whiteFadeBackground;
      
      private static var menu_skipIntroButton:Class = SpriteHandler_menu_skipIntroButton;
      
      private static var menu_muteMusicButton_off:Class = SpriteHandler_menu_muteMusicButton_off;
      
      private static var menu_muteMusicButton_on:Class = SpriteHandler_menu_muteMusicButton_on;
      
      private static var menu_muteSoundButton_off:Class = SpriteHandler_menu_muteSoundButton_off;
      
      private static var menu_muteSoundButton_on:Class = SpriteHandler_menu_muteSoundButton_on;
      
      private static var mainMenu_characterCreation_editNameButton:Class = SpriteHandler_mainMenu_characterCreation_editNameButton;
      
      private static var mainMenu_characterCreation_femaleIcon:Class = SpriteHandler_mainMenu_characterCreation_femaleIcon;
      
      private static var mainMenu_characterCreation_maleFemaleSelectedIcon:Class = SpriteHandler_mainMenu_characterCreation_maleFemaleSelectedIcon;
      
      private static var mainMenu_characterCreation_maleIcon:Class = SpriteHandler_mainMenu_characterCreation_maleIcon;
      
      private static var mainMenu_characterCreation_okButton:Class = SpriteHandler_mainMenu_characterCreation_okButton;
      
      private static var mainMenu_characterCreationBackground:Class = SpriteHandler_mainMenu_characterCreationBackground;
      
      private static var mainMenu_creditsButton:Class = SpriteHandler_mainMenu_creditsButton;
      
      private static var mainMenu_ourLogo:Class = SpriteHandler_mainMenu_ourLogo;
      
      private static var mainMenu_playButton:Class = SpriteHandler_mainMenu_playButton;
      
      private static var mainMenu_saveSlot_gymBadge:Class = SpriteHandler_mainMenu_saveSlot_gymBadge;
      
      private static var mainMenu_saveSlot_starIcon:Class = SpriteHandler_mainMenu_saveSlot_starIcon;
      
      private static var mainMenu_saveSlotBackground:Class = SpriteHandler_mainMenu_saveSlotBackground;
      
      private static var mainMenu_saveSlotFilled:Class = SpriteHandler_mainMenu_saveSlotFilled;
      
      private static var mainMenu_hostGamesLogo:Class = SpriteHandler_mainMenu_hostGamesLogo;
      
      private static var mainMenu_titleLogo:Class = SpriteHandler_mainMenu_titleLogo;
      
      private static var mainMenu_titleScreen_background:Class = SpriteHandler_mainMenu_titleScreen_background;
      
      private static var mainMenu_titleScreen_ourLogo:Class = SpriteHandler_mainMenu_titleScreen_ourLogo;
      
      private static var mainMenu_titleScreen_sponsorLogo:Class = SpriteHandler_mainMenu_titleScreen_sponsorLogo;
      
      private static var mainMenu_credits_background:Class = SpriteHandler_mainMenu_credits_background;
      
      private static var mainMenu_credits_returnButton:Class = SpriteHandler_mainMenu_credits_returnButton;
      
      private static var mainMenu_saveSlot_deleteButton:Class = SpriteHandler_mainMenu_saveSlot_deleteButton;
      
      private static var mainMenu_characterCreation_maleIcon_fullSized:Class = SpriteHandler_mainMenu_characterCreation_maleIcon_fullSized;
      
      private static var mainMenu_characterCreation_femaleIcon_fullSized:Class = SpriteHandler_mainMenu_characterCreation_femaleIcon_fullSized;
      
      private static var mainMenu_titleScreen_doorLeft:Class = SpriteHandler_mainMenu_titleScreen_doorLeft;
      
      private static var mainMenu_titleScreen_doorRight:Class = SpriteHandler_mainMenu_titleScreen_doorRight;
      
      private static var mainMenu_titleScreen_doorLeft_glow:Class = SpriteHandler_mainMenu_titleScreen_doorLeft_glow;
      
      private static var mainMenu_titleScreen_doorRight_glow:Class = SpriteHandler_mainMenu_titleScreen_doorRight_glow;
      
      private static var mainMenu_titleScreen_doorCracksGlow:Class = SpriteHandler_mainMenu_titleScreen_doorCracksGlow;
      
      private static var mainMenu_doorAnimationMask1:Class = SpriteHandler_mainMenu_doorAnimationMask1;
      
      private static var titleScreen_electricSageStone:Class = SpriteHandler_titleScreen_electricSageStone;
      
      private static var titleScreen_fireSageStone:Class = SpriteHandler_titleScreen_fireSageStone;
      
      private static var titleScreen_plantSageStone:Class = SpriteHandler_titleScreen_plantSageStone;
      
      private static var titleScreen_plantWizardSageStone:Class = SpriteHandler_titleScreen_plantWizardSageStone;
      
      private static var titleScreen_undeadSageStone:Class = SpriteHandler_titleScreen_undeadSageStone;
      
      private static var titleScreen_undeadWizardSageStone:Class = SpriteHandler_titleScreen_undeadWizardSageStone;
      
      private static var mv_crown:Class = SpriteHandler_mv_crown;
      
      private static var mv_starburst:Class = SpriteHandler_mv_starburst;
      
      private static var mv_titanBlast:Class = SpriteHandler_mv_titanBlast;
      
      private static var mv_titanFist:Class = SpriteHandler_mv_titanFist;
      
      private static var mv_titanHeal:Class = SpriteHandler_mv_titanHeal;
      
      private static var mv_titanSword:Class = SpriteHandler_mv_titanSword;
      
      private static var mv_crazed:Class = SpriteHandler_mv_crazed;
      
      private static var mv_fireball:Class = SpriteHandler_mv_fireball;
      
      private static var mv_rock1:Class = SpriteHandler_mv_rock1;
      
      private static var mv_arcFlame:Class = SpriteHandler_mv_arcFlame;
      
      private static var mv_clawNoFur:Class = SpriteHandler_mv_clawNoFur;
      
      private static var mv_poisonDrop:Class = SpriteHandler_mv_poisonDrop;
      
      private static var mv_iceShield:Class = SpriteHandler_mv_iceShield;
      
      private static var mv_yellowAndOrangeImpact:Class = SpriteHandler_mv_yellowAndOrangeImpact;
      
      private static var mv_fireFist:Class = SpriteHandler_mv_fireFist;
      
      private static var mv_soundWaves:Class = SpriteHandler_mv_soundWaves;
      
      private static var mv_fireBlast:Class = SpriteHandler_mv_fireBlast;
      
      private static var mv_skullAndFlames:Class = SpriteHandler_mv_skullAndFlames;
      
      private static var mv_screamingGhost:Class = SpriteHandler_mv_screamingGhost;
      
      private static var mv_blueLightningBolt:Class = SpriteHandler_mv_blueLightningBolt;
      
      private static var mv_orangeHealthSymbol:Class = SpriteHandler_mv_orangeHealthSymbol;
      
      private static var mv_fireRam:Class = SpriteHandler_mv_fireRam;
      
      private static var mv_cog:Class = SpriteHandler_mv_cog;
      
      private static var mv_ancientForce:Class = SpriteHandler_mv_ancientForce;
      
      private static var mv_meteor:Class = SpriteHandler_mv_meteor;
      
      private static var mv_missle:Class = SpriteHandler_mv_missle;
      
      private static var mv_lightBeam:Class = SpriteHandler_mv_lightBeam;
      
      private static var mv_hailstone:Class = SpriteHandler_mv_hailstone;
      
      private static var mv_steelSpike:Class = SpriteHandler_mv_steelSpike;
      
      private static var mv_rock2:Class = SpriteHandler_mv_rock2;
      
      private static var mv_fireBolt:Class = SpriteHandler_mv_fireBolt;
      
      private static var mv_raindrop:Class = SpriteHandler_mv_raindrop;
      
      private static var mv_downwardAirImpact:Class = SpriteHandler_mv_downwardAirImpact;
      
      private static var mv_snowflake:Class = SpriteHandler_mv_snowflake;
      
      private static var mv_lightningBolt:Class = SpriteHandler_mv_lightningBolt;
      
      private static var mv_bloodSymbol:Class = SpriteHandler_mv_bloodSymbol;
      
      private static var mv_diamondRocks:Class = SpriteHandler_mv_diamondRocks;
      
      private static var mv_greenSkull:Class = SpriteHandler_mv_greenSkull;
      
      private static var mv_rottenHeart:Class = SpriteHandler_mv_rottenHeart;
      
      private static var mv_goldMask:Class = SpriteHandler_mv_goldMask;
      
      private static var mv_stoneBarrier:Class = SpriteHandler_mv_stoneBarrier;
      
      private static var mv_nuclearWater:Class = SpriteHandler_mv_nuclearWater;
      
      private static var mv_iceBarrier:Class = SpriteHandler_mv_iceBarrier;
      
      private static var mv_metalMold:Class = SpriteHandler_mv_metalMold;
      
      private static var mv_drill:Class = SpriteHandler_mv_drill;
      
      private static var mv_beak:Class = SpriteHandler_mv_beak;
      
      private static var mv_fang:Class = SpriteHandler_mv_fang;
      
      private static var mv_fallingWater:Class = SpriteHandler_mv_fallingWater;
      
      private static var mv_lightningFist:Class = SpriteHandler_mv_lightningFist;
      
      private static var mv_waterJet:Class = SpriteHandler_mv_waterJet;
      
      private static var mv_waterFist:Class = SpriteHandler_mv_waterFist;
      
      private static var mv_roughFist:Class = SpriteHandler_mv_roughFist;
      
      private static var mv_sword:Class = SpriteHandler_mv_sword;
      
      private static var mv_spikeCluster:Class = SpriteHandler_mv_spikeCluster;
      
      private static var mv_tire:Class = SpriteHandler_mv_tire;
      
      private static var mv_raindropHealSymbol:Class = SpriteHandler_mv_raindropHealSymbol;
      
      private static var mv_healSignGreen:Class = SpriteHandler_mv_healSignGreen;
      
      private static var mv_leafWithSkull:Class = SpriteHandler_mv_leafWithSkull;
      
      private static var mv_sprout:Class = SpriteHandler_mv_sprout;
      
      private static var mv_spores:Class = SpriteHandler_mv_spores;
      
      private static var mv_spider:Class = SpriteHandler_mv_spider;
      
      private static var mv_eyeball:Class = SpriteHandler_mv_eyeball;
      
      private static var mv_blueHorizontalBolt:Class = SpriteHandler_mv_blueHorizontalBolt;
      
      private static var mv_smallYellowImpact:Class = SpriteHandler_mv_smallYellowImpact;
      
      private static var mv_holyBurn:Class = SpriteHandler_mv_holyBurn;
      
      private static var mv_hornedskull:Class = SpriteHandler_mv_hornedskull;
      
      private static var mv_demonicSacrifice:Class = SpriteHandler_mv_demonicSacrifice;
      
      private static var mv_bearTrap:Class = SpriteHandler_mv_bearTrap;
      
      private static var mv_leafYinYang:Class = SpriteHandler_mv_leafYinYang;
      
      private static var mv_demonEye:Class = SpriteHandler_mv_demonEye;
      
      private static var mv_boltEye:Class = SpriteHandler_mv_boltEye;
      
      private static var mv_brokenBone:Class = SpriteHandler_mv_brokenBone;
      
      private static var mv_eyes:Class = SpriteHandler_mv_eyes;
      
      private static var mv_frozenSkull:Class = SpriteHandler_mv_frozenSkull;
      
      private static var mv_grossMouth:Class = SpriteHandler_mv_grossMouth;
      
      private static var mv_stream:Class = SpriteHandler_mv_stream;
      
      private static var mv_skeletonGhost:Class = SpriteHandler_mv_skeletonGhost;
      
      private static var mv_mirror:Class = SpriteHandler_mv_mirror;
      
      private static var mv_handsShake:Class = SpriteHandler_mv_handsShake;
      
      private static var mv_bloodPress:Class = SpriteHandler_mv_bloodPress;
      
      private static var mv_blueSwoopingArrows:Class = SpriteHandler_mv_blueSwoopingArrows;
      
      private static var mv_swoopingArrows:Class = SpriteHandler_mv_swoopingArrows;
      
      private static var mv_mudBlast:Class = SpriteHandler_mv_mudBlast;
      
      private static var mv_metalPlate:Class = SpriteHandler_mv_metalPlate;
      
      private static var mv_lightningBlast:Class = SpriteHandler_mv_lightningBlast;
      
      private static var mv_iceBlast:Class = SpriteHandler_mv_iceBlast;
      
      private static var mv_crazyBlast:Class = SpriteHandler_mv_crazyBlast;
      
      private static var mv_windBlade:Class = SpriteHandler_mv_windBlade;
      
      private static var mv_tricerotopsHead:Class = SpriteHandler_mv_tricerotopsHead;
      
      private static var mv_cuttingWind:Class = SpriteHandler_mv_cuttingWind;
      
      private static var mv_rockBlast:Class = SpriteHandler_mv_rockBlast;
      
      private static var mv_sideDash:Class = SpriteHandler_mv_sideDash;
      
      private static var mv_staticBolt:Class = SpriteHandler_mv_staticBolt;
      
      private static var mv_blueLightBurst:Class = SpriteHandler_mv_blueLightBurst;
      
      private static var mv_greenHealHand:Class = SpriteHandler_mv_greenHealHand;
      
      private static var mv_brokenShield:Class = SpriteHandler_mv_brokenShield;
      
      private static var mv_focusedCharge:Class = SpriteHandler_mv_focusedCharge;
      
      private static var mv_demonFist:Class = SpriteHandler_mv_demonFist;
      
      private static var mv_dinoClaw:Class = SpriteHandler_mv_dinoClaw;
      
      private static var mv_ghostFist:Class = SpriteHandler_mv_ghostFist;
      
      private static var mv_holyFist:Class = SpriteHandler_mv_holyFist;
      
      private static var mv_leafSword:Class = SpriteHandler_mv_leafSword;
      
      private static var mv_purpleFist:Class = SpriteHandler_mv_purpleFist;
      
      private static var mv_skeletonHand:Class = SpriteHandler_mv_skeletonHand;
      
      private static var mv_holyHand:Class = SpriteHandler_mv_holyHand;
      
      private static var mv_radianceArcs:Class = SpriteHandler_mv_radianceArcs;
      
      private static var mv_reaper:Class = SpriteHandler_mv_reaper;
      
      private static var mv_dryIce:Class = SpriteHandler_mv_dryIce;
      
      private static var mv_earthShield:Class = SpriteHandler_mv_earthShield;
      
      private static var mv_shield:Class = SpriteHandler_mv_shield;
      
      private static var mv_pinkHands:Class = SpriteHandler_mv_pinkHands;
      
      private static var mv_dinoHeadPowerUp:Class = SpriteHandler_mv_dinoHeadPowerUp;
      
      private static var mv_blueHands:Class = SpriteHandler_mv_blueHands;
      
      private static var mv_purpleCrystal:Class = SpriteHandler_mv_purpleCrystal;
      
      private static var mv_earthlyFortitude:Class = SpriteHandler_mv_earthlyFortitude;
      
      private static var mv_yellowLightRays:Class = SpriteHandler_mv_yellowLightRays;
      
      private static var mv_touchFire:Class = SpriteHandler_mv_touchFire;
      
      private static var mv_goldSword:Class = SpriteHandler_mv_goldSword;
      
      private static var mv_handsAndPlant:Class = SpriteHandler_mv_handsAndPlant;
      
      private static var mv_binary:Class = SpriteHandler_mv_binary;
      
      private static var mv_drain:Class = SpriteHandler_mv_drain;
      
      private static var mv_sparks:Class = SpriteHandler_mv_sparks;
      
      private static var mv_staticBurst:Class = SpriteHandler_mv_staticBurst;
      
      private static var mv_lightCircle:Class = SpriteHandler_mv_lightCircle;
      
      private static var mv_plank:Class = SpriteHandler_mv_plank;
      
      private static var mv_bullet:Class = SpriteHandler_mv_bullet;
      
      private static var mv_spiderweb:Class = SpriteHandler_mv_spiderweb;
      
      private static var mv_motionArcsBlue:Class = SpriteHandler_mv_motionArcsBlue;
      
      private static var mv_motionArcsYellow:Class = SpriteHandler_mv_motionArcsYellow;
      
      private static var mv_razorWhip:Class = SpriteHandler_mv_razorWhip;
      
      private static var mv_wave:Class = SpriteHandler_mv_wave;
      
      private static var mv_teethSet:Class = SpriteHandler_mv_teethSet;
      
      private static var mv_flameWithFace:Class = SpriteHandler_mv_flameWithFace;
      
      private static var mv_blueMysticalFlame:Class = SpriteHandler_mv_blueMysticalFlame;
      
      private static var mv_whirlwind:Class = SpriteHandler_mv_whirlwind;
      
      private static var mv_fireStrip:Class = SpriteHandler_mv_fireStrip;
      
      private static var mv_lance:Class = SpriteHandler_mv_lance;
      
      private static var mv_windLance:Class = SpriteHandler_mv_windLance;
      
      private static var mv_poundFist:Class = SpriteHandler_mv_poundFist;
      
      private static var mv_pawGrind:Class = SpriteHandler_mv_pawGrind;
      
      private static var mv_inflame:Class = SpriteHandler_mv_inflame;
      
      private static var mv_kindle:Class = SpriteHandler_mv_kindle;
      
      private static var mv_vines:Class = SpriteHandler_mv_vines;
      
      private static var mv_alloyBall:Class = SpriteHandler_mv_alloyBall;
      
      private static var mv_ashenReminder:Class = SpriteHandler_mv_ashenReminder;
      
      private static var generalRoom_titanEgg:Class = SpriteHandler_generalRoom_titanEgg;
      
      private static var generalRoom_fountain:Class = SpriteHandler_generalRoom_fountain;
      
      private static var generalRoom_titanDoorGaurd1:Class = SpriteHandler_generalRoom_titanDoorGaurd1;
      
      private static var generalRoom_titanDoorGaurd2:Class = SpriteHandler_generalRoom_titanDoorGaurd2;
      
      private static var generalRoom_sideMosaic:Class = SpriteHandler_generalRoom_sideMosaic;
      
      private static var generalRoom_titanEggPit_back:Class = SpriteHandler_generalRoom_titanEggPit_back;
      
      private static var generalRoom_titanEggPit_front:Class = SpriteHandler_generalRoom_titanEggPit_front;
      
      private static var generalRoom_titanStatue:Class = SpriteHandler_generalRoom_titanStatue;
      
      private static var generalRoom_gymDais:Class = SpriteHandler_generalRoom_gymDais;
      
      private static var generalRoom_detailTapestry_undead:Class = SpriteHandler_generalRoom_detailTapestry_undead;
      
      private static var generalRoom_genericTapestry_demon:Class = SpriteHandler_generalRoom_genericTapestry_demon;
      
      private static var generalRoom_genericTapestry_dino:Class = SpriteHandler_generalRoom_genericTapestry_dino;
      
      private static var generalRoom_genericTapestry_electric:Class = SpriteHandler_generalRoom_genericTapestry_electric;
      
      private static var generalRoom_genericTapestry_undead:Class = SpriteHandler_generalRoom_genericTapestry_undead;
      
      private static var generalRoom_genericTapestrySide_demon:Class = SpriteHandler_generalRoom_genericTapestrySide_demon;
      
      private static var generalRoom_genericTapestrySide_dino:Class = SpriteHandler_generalRoom_genericTapestrySide_dino;
      
      private static var generalRoom_genericTapestrySide_electric:Class = SpriteHandler_generalRoom_genericTapestrySide_electric;
      
      private static var generalRoom_genericTapestrySide_undead:Class = SpriteHandler_generalRoom_genericTapestrySide_undead;
      
      private static var generalRoom_purple_floorRunner_rotationConnect:Class = SpriteHandler_generalRoom_purple_floorRunner_rotationConnect;
      
      private static var generalRoom_purple_floorRunnerMid1:Class = SpriteHandler_generalRoom_purple_floorRunnerMid1;
      
      private static var generalRoom_purple_floorRunnerMid2:Class = SpriteHandler_generalRoom_purple_floorRunnerMid2;
      
      private static var generalRoom_purple_floorRunnerTop:Class = SpriteHandler_generalRoom_purple_floorRunnerTop;
      
      private static var generalRoom_lobby_bottomDoor:Class = SpriteHandler_generalRoom_lobby_bottomDoor;
      
      private static var generalRoom_lobby_sideDoor:Class = SpriteHandler_generalRoom_lobby_sideDoor;
      
      private static var generalRoom_lobby_topDoor:Class = SpriteHandler_generalRoom_lobby_topDoor;
      
      private static var generalRoom_bottomTorch_undead:Class = SpriteHandler_generalRoom_bottomTorch_undead;
      
      private static var generalRoom_sideTorch_undead:Class = SpriteHandler_generalRoom_sideTorch_undead;
      
      private static var generalRoom_topTorch_undead:Class = SpriteHandler_generalRoom_topTorch_undead;
      
      private static var generalRoom_yellow_floorRunner_rotationConnect:Class = SpriteHandler_generalRoom_yellow_floorRunner_rotationConnect;
      
      private static var generalRoom_yellow_floorRunnerMid1:Class = SpriteHandler_generalRoom_yellow_floorRunnerMid1;
      
      private static var generalRoom_yellow_floorRunnerMid2:Class = SpriteHandler_generalRoom_yellow_floorRunnerMid2;
      
      private static var generalRoom_yellow_floorRunnerTop:Class = SpriteHandler_generalRoom_yellow_floorRunnerTop;
      
      private static var generalRoom_topTorch_electric:Class = SpriteHandler_generalRoom_topTorch_electric;
      
      private static var generalRoom_sideTorch_electric:Class = SpriteHandler_generalRoom_sideTorch_electric;
      
      private static var generalRoom_bottomTorch_electric:Class = SpriteHandler_generalRoom_bottomTorch_electric;
      
      private static var generalRoom_electricGymStatue:Class = SpriteHandler_generalRoom_electricGymStatue;
      
      private static var generalRoom_electricMedallionStatue:Class = SpriteHandler_generalRoom_electricMedallionStatue;
      
      private static var generalRoom_fireMedallionStatue:Class = SpriteHandler_generalRoom_fireMedallionStatue;
      
      private static var generalRoom_fireGymStatue:Class = SpriteHandler_generalRoom_fireGymStatue;
      
      private static var generalRoom_plantGymStatue:Class = SpriteHandler_generalRoom_plantGymStatue;
      
      private static var generalRoom_plantMedallionStatue:Class = SpriteHandler_generalRoom_plantMedallionStatue;
      
      private static var generalRoom_plantWizardMedallionStatue:Class = SpriteHandler_generalRoom_plantWizardMedallionStatue;
      
      private static var generalRoom_statuePedestal:Class = SpriteHandler_generalRoom_statuePedestal;
      
      private static var generalRoom_undeadGymStatue:Class = SpriteHandler_generalRoom_undeadGymStatue;
      
      private static var generalRoom_undeadMedallionStatue:Class = SpriteHandler_generalRoom_undeadMedallionStatue;
      
      private static var generalRoom_undeadWizardMedallionStatue:Class = SpriteHandler_generalRoom_undeadWizardMedallionStatue;
      
      private static var generalRoom_detailTapestry_dino:Class = SpriteHandler_generalRoom_detailTapestry_dino;
      
      private static var miniMap_background:Class = SpriteHandler_miniMap_background;
      
      private static var miniMap_hallway_floor1:Class = SpriteHandler_miniMap_hallway_floor1;
      
      private static var miniMap_hallway_floor2:Class = SpriteHandler_miniMap_hallway_floor2;
      
      private static var miniMap_hallway_floor3:Class = SpriteHandler_miniMap_hallway_floor3;
      
      private static var miniMap_hallway_floor4_1:Class = SpriteHandler_miniMap_hallway_floor4_1;
      
      private static var miniMap_hallway_floor4_2:Class = SpriteHandler_miniMap_hallway_floor4_2;
      
      private static var miniMap_hallway_floor4_3:Class = SpriteHandler_miniMap_hallway_floor4_3;
      
      private static var miniMap_hallway_floor5_1:Class = SpriteHandler_miniMap_hallway_floor5_1;
      
      private static var miniMap_hallway_floor5_2:Class = SpriteHandler_miniMap_hallway_floor5_2;
      
      private static var miniMap_hallway_floor6:Class = SpriteHandler_miniMap_hallway_floor6;
      
      private static var miniMap_hallway_floor7:Class = SpriteHandler_miniMap_hallway_floor7;
      
      private static var miniMap_hallway_floor8_1:Class = SpriteHandler_miniMap_hallway_floor8_1;
      
      private static var miniMap_hallway_floor8_2:Class = SpriteHandler_miniMap_hallway_floor8_2;
      
      private static var miniMap_hallway_floor9:Class = SpriteHandler_miniMap_hallway_floor9;
      
      private static var miniMap_hallway_floor10:Class = SpriteHandler_miniMap_hallway_floor10;
      
      private static var miniMap_hallway_floor11:Class = SpriteHandler_miniMap_hallway_floor11;
      
      private static var miniMap_hallway_floor13_1:Class = SpriteHandler_miniMap_hallway_floor13_1;
      
      private static var miniMap_hallway_floor13_2:Class = SpriteHandler_miniMap_hallway_floor13_2;
      
      private static var miniMap_hallway_floor13_3:Class = SpriteHandler_miniMap_hallway_floor13_3;
      
      private static var miniMap_hallway_floor14:Class = SpriteHandler_miniMap_hallway_floor14;
      
      private static var miniMap_hallway_floor15:Class = SpriteHandler_miniMap_hallway_floor15;
      
      private static var miniMap_hallway_floor16:Class = SpriteHandler_miniMap_hallway_floor16;
      
      private static var miniMap_hallway_floor17:Class = SpriteHandler_miniMap_hallway_floor17;
      
      private static var miniMap_hallway_floor18:Class = SpriteHandler_miniMap_hallway_floor18;
      
      private static var miniMap_hallway_floor19:Class = SpriteHandler_miniMap_hallway_floor19;
      
      private static var miniMap_hallway_floor20:Class = SpriteHandler_miniMap_hallway_floor20;
      
      private static var miniMap_hallway_floor21:Class = SpriteHandler_miniMap_hallway_floor21;
      
      private static var miniMap_hallway_floor22:Class = SpriteHandler_miniMap_hallway_floor22;
      
      private static var miniMap_hallway_floor23:Class = SpriteHandler_miniMap_hallway_floor23;
      
      private static var miniMap_hallway_floor24:Class = SpriteHandler_miniMap_hallway_floor24;
      
      private static var miniMap_hwaySmall_vert:Class = SpriteHandler_miniMap_hwaySmall_vert;
      
      private static var miniMap_hwaySmall_hori:Class = SpriteHandler_miniMap_hwaySmall_hori;
      
      private static var miniMap_room1:Class = SpriteHandler_miniMap_room1;
      
      private static var miniMap_eggeryOverlay:Class = SpriteHandler_miniMap_eggeryOverlay;
       
      
      private var MAIN_FONT:Class;
      
      private var m_currSSIndex:Array;
      
      private var m_currSS:Array;
      
      private var m_objectPool:Array;
      
      public function SpriteHandler()
      {
         this.MAIN_FONT = SpriteHandler_MAIN_FONT;
         super();
         this.m_objectPool = new Array();
      }
      
      public function CreateSprite(param1:String) : Sprite
      {
         var _loc2_:Sprite = null;
         var _loc3_:Bitmap = null;
         var _loc4_:Vector.<Bitmap> = null;
         var _loc6_:int = 0;
         _loc2_ = new Sprite();
         if(this.m_objectPool[param1] == null)
         {
            this.m_objectPool[param1] = new Vector.<Bitmap>();
         }
         var _loc5_:int = (_loc4_ = this.m_objectPool[param1]).length / 2;
         _loc6_ = 0;
         while(_loc6_ < _loc4_.length)
         {
            if(_loc4_[_loc6_].parent.parent == null)
            {
               _loc2_ = _loc4_[_loc6_].parent as Sprite;
               _loc2_.visible = true;
               _loc2_.x = 0;
               _loc2_.y = 0;
               _loc2_.rotation = 0;
               _loc2_.scaleX = 1;
               _loc2_.scaleY = 1;
               _loc2_.alpha = 1;
               return _loc2_;
            }
            _loc6_++;
         }
         if(_loc3_ == null)
         {
            _loc3_ = new Bitmap(this.GetBitmapData(param1));
            _loc4_.push(_loc3_);
         }
         _loc2_.addChild(_loc3_);
         return _loc2_;
      }
      
      public function CreateSpriteRemapColor(param1:String, param2:int, param3:int, param4:int) : Sprite
      {
         var _loc5_:Sprite = null;
         var _loc6_:BitmapData = null;
         _loc5_ = new Sprite();
         _loc6_ = Singleton.utility.m_spriteHandler.GetBitmapData(param1);
         _loc6_ = Singleton.utility.m_spriteHandler.RemapMagenta(_loc6_,param2,param3,param4);
         _loc5_.addChild(new Bitmap(_loc6_));
         return _loc5_;
      }
      
      public function RemapMagenta(param1:BitmapData, param2:int, param3:int, param4:int) : BitmapData
      {
         var _loc5_:ByteArray = null;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:Number = NaN;
         _loc6_ = int((_loc5_ = param1.getPixels(param1.rect)).length);
         while((_loc6_ = _loc6_ - 4) >= 0)
         {
            _loc7_ = uint(_loc5_[_loc6_ + 1]);
            _loc8_ = uint(_loc5_[_loc6_ + 2]);
            _loc9_ = uint(_loc5_[_loc6_ + 3]);
            if(_loc7_ > 0 && _loc7_ == _loc9_)
            {
               _loc10_ = 0;
               if(_loc7_ == 255)
               {
                  _loc10_ = _loc8_ / 255;
                  _loc5_[_loc6_ + 1] = param2 + Math.round((255 - param2) * _loc10_);
                  _loc5_[_loc6_ + 2] = param3 + Math.round((255 - param3) * _loc10_);
                  _loc5_[_loc6_ + 3] = param4 + Math.round((255 - param4) * _loc10_);
               }
               else if(_loc8_ == 0)
               {
                  _loc10_ = _loc7_ / 255;
                  _loc5_[_loc6_ + 1] = Math.round(param2 * _loc10_);
                  _loc5_[_loc6_ + 2] = Math.round(param3 * _loc10_);
                  _loc5_[_loc6_ + 3] = Math.round(param4 * _loc10_);
               }
            }
         }
         _loc5_.position = 0;
         param1.setPixels(param1.rect,_loc5_);
         return param1;
      }
      
      public function RemapCyan(param1:BitmapData, param2:int, param3:int, param4:int) : BitmapData
      {
         var _loc5_:ByteArray = null;
         var _loc6_:int = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:Number = NaN;
         _loc6_ = int((_loc5_ = param1.getPixels(param1.rect)).length);
         while((_loc6_ = _loc6_ - 4) >= 0)
         {
            _loc7_ = uint(_loc5_[_loc6_ + 1]);
            _loc8_ = uint(_loc5_[_loc6_ + 2]);
            _loc9_ = uint(_loc5_[_loc6_ + 3]);
            if(_loc8_ > 0 && _loc8_ == _loc9_)
            {
               _loc10_ = 0;
               if(_loc8_ == 255)
               {
                  _loc10_ = _loc7_ / 255;
                  _loc5_[_loc6_ + 1] = param2 + Math.round((255 - param2) * _loc10_);
                  _loc5_[_loc6_ + 2] = param3 + Math.round((255 - param3) * _loc10_);
                  _loc5_[_loc6_ + 3] = param4 + Math.round((255 - param4) * _loc10_);
               }
               else if(_loc7_ == 0)
               {
                  _loc10_ = _loc7_ / 255;
                  _loc5_[_loc6_ + 1] = Math.round(param2 * _loc10_);
                  _loc5_[_loc6_ + 2] = Math.round(param3 * _loc10_);
                  _loc5_[_loc6_ + 3] = Math.round(param4 * _loc10_);
               }
            }
         }
         _loc5_.position = 0;
         param1.setPixels(param1.rect,_loc5_);
         return param1;
      }
      
      public function GetBitmapData(param1:String) : BitmapData
      {
         var _loc2_:Class = null;
         var _loc3_:Array = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         _loc2_ = SpriteHandler[param1] as Class;
         if(_loc2_ != null)
         {
            return (_loc5_ = new _loc2_() as Bitmap).bitmapData;
         }
         _loc3_ = this.m_currSSIndex[param1];
         (_loc4_ = new BitmapData(_loc3_[6],_loc3_[7],true,16777215)).copyPixels(this.m_currSS[_loc3_[8]],new Rectangle(_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]),new Point(_loc3_[4],_loc3_[5]));
         return _loc4_;
      }
      
      public function LoadSpriteSheets() : void
      {
      }
      
      public function CreateSSIndexArray(param1:ByteArray, param2:int = 0, param3:Boolean = false) : Array
      {
         var _loc4_:ByteArray = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         _loc4_ = param1;
         _loc5_ = _loc4_.readUTFBytes(_loc4_.length);
         _loc6_ = new XML(_loc5_);
         if(param3)
         {
            _loc7_ = this.m_currSSIndex;
         }
         else
         {
            _loc7_ = new Array();
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_.*.length())
         {
            if(_loc6_.sprite[_loc10_].@oX.length() == 0)
            {
               _loc8_ = new Array(_loc6_.sprite[_loc10_].@x,_loc6_.sprite[_loc10_].@y,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,0,0,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,param2);
            }
            else
            {
               _loc8_ = new Array(_loc6_.sprite[_loc10_].@x,_loc6_.sprite[_loc10_].@y,_loc6_.sprite[_loc10_].@w,_loc6_.sprite[_loc10_].@h,_loc6_.sprite[_loc10_].@oX,_loc6_.sprite[_loc10_].@oY,_loc6_.sprite[_loc10_].@oW,_loc6_.sprite[_loc10_].@oH,param2);
            }
            _loc9_ = _loc6_.sprite[_loc10_].@n;
            _loc9_ = _loc9_.slice(_loc9_.indexOf("/") + 1);
            _loc7_[_loc9_] = _loc8_;
            _loc10_++;
         }
         return _loc7_;
      }
   }
}
