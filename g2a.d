// Vanilla G2A externals with docu comments for DLS implementation
//
// Source: https://github.com/muczc1wek/daedalus-externals

var C_NPC hero;
var C_NPC self;
var C_NPC other;
var C_NPC victim;
var C_ITEM item;
var instance NULL;
var instance instance_help;

/// Aims at the target with a ranged weapon (have to be drawn first)
///
/// @param attacker instance of the attacker
/// @param target C_NPC instance of the target
func void AI_AimAt(var C_NPC attacker, var C_NPC target) {};

/// Aligns the NPC to the Freepoint
///
/// @param npc instance of the NPC
func void AI_AlignToFP(var C_NPC npc) {};

/// Aligns the NPC to the Waypoint
///
/// @param npc instance of the NPC
func void AI_AlignToWP(var C_NPC npc) {};

/// [deprecated] Probably relic of the old dialog system
func void AI_Ask(var C_NPC npc, var func anseryes, var func answerno) {};

/// [deprecated] Probably relic of the old dialog system
func void AI_AskText(var C_NPC npc, var func funcyes, var func funcno, var string stryes, var string strno) {};

/// [deprecated] Probably relic of the old dialog system
func void AI_WaitForQuestion(var C_NPC npc, var func scriptfunc) {};

/// Starts the combat AI (should be called in the ZS_Attack loop)
/// Uses the internal target ised in `Npc_SetTarget()` and `Npc_GetNextTarget()`
///
/// @param npc instance of the NPC
func void AI_Attack(var C_NPC npc) {};

/// If `slf` can see `oth` starts given AI state function
///
/// @param slf instance of the first NPC
/// @param oth instance of the second NPC
/// @param function AI state function to start (ZS_*)
func void AI_CanSeeNpc(var C_NPC slf, var C_NPC oth, var func function) {};

/// [deprecated] does nothing
func void AI_CombatReactToDamage(var instance n0) {};

/// Continues the daily routine
/// Includes standing up
///
/// @param npc instance of the NPC
func void AI_ContinueRoutine(var C_NPC npc) {};
 
/// Adds overlay message (`EV_DEFEND`) that ends when the NPC performs a parry triggered by another NPC's attack.
///
/// @param npc instance of the NPC
func void AI_Defend(var C_NPC npc) {};

/// Makes the NPC dodge a bit backward
///
/// @param npc instance of the NPC
func void AI_Dodge(var C_NPC npc) {};

/// Draws the equipped melee weapon
///
/// @param npc instance of the NPC
func void AI_DrawWeapon(var C_NPC npc) {};

/// Drops the item with the specified item ID on the ground (works only in dialogs)
///
/// @param npc instance of the NPC
/// @param itemid int ID of the item to be dropped
func void AI_DropItem(var C_NPC npc, var int itemid) {};

/// Equips armor from the inventory
///
/// @param npc instance of the NPC
/// @param armor armor instance to equip
func void AI_EquipArmor(var C_NPC npc, var C_ITEM armor) {};

/// Equips the best armor available in the NPCs inventory
///
/// @param npc instance of the NPC
func void AI_EquipBestArmor(var C_NPC npc) {};

/// Equips the best melee weapon available in the NPCs inventory
///
/// @param npc instance of the NPC
func void AI_EquipBestMeleeWeapon(var C_NPC npc) {};

/// Equips the best ranged weapon available in the NPCs inventory
///
/// @param npc instance of the NPC
func void AI_EquipBestRangedWeapon(var C_NPC npc) {};

/// Makes `attacker` kill `target` with a finishing move if possible
///
/// @param attacker instance of the attacking NPC
/// @param target instance of the target NPC
func void AI_FinishingMove(var C_NPC attacker, var C_NPC target) {};

/// Makes the NPC flee from the target
///
/// @param npc instance of the NPC
func void AI_Flee(var C_NPC npc) {};

/// Finds the nearest available freepoint near the NPC, moves there, and aligns accordingly
///
/// @param npc instance of the NPC
/// @param fpname name of the freepoint (could be only the middle part of the name: `FP_` + `fpname` + `_01`)
func void AI_GotoFP(var C_NPC npc, var string fpname) {};

/// Finds an available freepoint within near the NPC (not the nearest one), moves there, and aligns accordingly
/// Useful for NPCs that are already at the freepoint
///
/// @param npc instance of the NPC
/// @param fpname name of the freepoint (could be only the middle part of the name: `FP_` + `fpname` + `_01`)
func void AI_GotoNextFP(var C_NPC npc, var string fpname) {};

/// Makes the NPC go to the specified item
///
/// @param npc instance of the NPC
/// @param itm instance of the item
func void AI_GotoItem(var C_NPC npc, var C_ITEM itm) {};

/// Makes `slf` go to `oth`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_GotoNpc(var C_NPC slf, var C_NPC oth) {};

/// Makes NPC go to the source of the sound
///
/// @param npc instance of the NPC
func void AI_GotoSound(var C_NPC npc) {};

/// NPC goes to the specified waypoint
///
/// @param npc instance of the NPC
/// @param wpname name of the waypoint
func void AI_GotoWP(var C_NPC npc, var string wpname) {};

/// Makes NPC look at the target object (only head moves)
///
/// @param npc instance of the NPC
/// @param target name of the object to look at
func void AI_LookAt(var C_NPC npc, var string target) {};

/// Makes `slf` looks at `oth` (only head moves)
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_LookAtNpc(var C_NPC slf, var C_NPC oth) {};

/// Makes `slf` say a line of text to `oth`
/// The actual text is defined by the comment after the function call
///
/// @param slf instance of the NPC
/// @param oth C_NPC instance of the target NPC
/// @param outputname name of the output and the associated .wav file
func void AI_Output(var C_NPC slf, var C_NPC oth, var string outputname) {};

/// Makes `slf` say an SVM text to `oth`
///
/// @param slf instance of the NPC
/// @param oth C_NPC instance of the target NPC
/// @param svmname name of the SVM
func void AI_OutputSVM(var C_NPC slf, var C_NPC oth, var string svmname) {};

/// Makes `slf` say an SVM text to `oth`, but does not wait for the SVM to finish before executing the next AI command
/// Useful for comments right before and during combat
///
/// @param slf instance of the NPC
/// @param oth C_NPC instance of the target NPC
/// @param svmname name of the SVM
func void AI_OutputSVM_Overlay(var C_NPC slf, var C_NPC oth, var string svmname) {};

/// Plays an animation on the NPC
///
/// @param npc instance of the NPC
/// @param aniname name of the animation UPPERCASE
func void AI_PlayAni(var C_NPC npc, var string aniname) {};

/// Plays an animation on the NPC and sets its body state
///
/// @param npc instance of the NPC
/// @param aniname name of the animation UPPERCASE
/// @param bodystate body state
func void AI_PlayAniBS(var C_NPC npc, var string aniname, var int bodystate) {};

/// [deprecated] Relic of the cutscene system
/// Starts a cutscene with the specified name
///
/// @param npc instance of the NPC
/// @param csname string name of the cutscene
func void AI_PlayCutscene(var C_NPC npc, var string csname) {};

/// Plays a visual effect (VFX)
///
/// @param origin NPC who is the effect origin and also to whose AI queue the function is added
/// @param target instance of the effect target object
/// @param effect name of the visual effect
func void AI_PlayFX(var C_NPC origin, var instance target, var string effect) {};

/// Stops a visual effect (VFX)
///
/// @param npc instance of the NPC
/// @param effect name of the visual effect
func void AI_StopFX(var C_NPC npc, var string effect) {};

/// Makes NPC point at the target object
///
/// @param npc instance of the NPC
/// @param name name of the waypoint or object
func void AI_PointAt(var C_NPC npc, var string target) {};

/// Makes `slf` point with hand at `oth`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_PointAtNpc(var C_NPC slf, var C_NPC oth) {};

/// Prints a message on the screen. The function is queued on `hero` AI queue. 
///
/// @param text message to print
/// @param posx x position as percent (-1 to center)
/// @param posy y position as percent (-1 to center)
/// @param font font to use
/// @param timesec display duration in seconds
func int AI_PrintScreen(var string text, var int posx, var int posy, var string font, var int timesec) {};

/// Opens a dialog window with NPS's C_INFO instances if its state is `ZS_TALK`.
/// When called on `hero`, the dialog window for the currently contrloled NPC instance will be opened.
///
/// @param npc instance of the NPC
func void AI_ProcessInfos(var C_NPC npc) {};

/// [deprecated] `T_QLOOK` animation is missing
/// Makes `slf` looks at `oth` for 2 seconds (only head moves)
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_Quicklook(var C_NPC slf, var C_NPC oth) {};

/// Draws the equipped melee weapon
///
/// @param npc instance of the NPC
func void AI_ReadyMeleeWeapon(var C_NPC npc) {};

/// Draws the equipped ranged weapon
///
/// @param npc instance of the NPC
func void AI_ReadyRangedWeapon(var C_NPC npc) {};

/// Readies a spell
///
/// @param npc instance of the NPC
/// @param spellid ID of the spell
/// @param investmana amount of mana to invest
func void AI_ReadySpell(var C_NPC npc, var int spellid, var int investmana) {};

/// Unreadies a spell
///
/// @param npc instance of the NPC
func void AI_UnreadySpell(var C_NPC npc) {};

/// Puts away the drawn weapon
///
/// @param npc instance of the NPC
func void AI_RemoveWeapon(var C_NPC npc) {};

/// Sets all NPCs within a radius of x cm to the specified AI state
///
/// @param self instance of the NPC
/// @param aistatefunc function representing the AI state
/// @param radius int radius in cm
func void AI_SetNpcsToState(var C_NPC self, var func aistatefunc, var int radius) {};

/// Specifies the walk mode (run, walk, sneak) of the NPC
///
/// @param npc instance of the NPC
/// @param mode walk mode
func void AI_SetWalkmode(var C_NPC npc, var int mode) {};

/// Shoots at the target with a ranged weapon
///
/// @param attacker instance of the attacker NPC
/// @param target instance of the target NPC
func void AI_ShootAt(var C_NPC attacker, var C_NPC target) {};

/// Plays a sound (queued)
///
/// @param npc instance of the NPC to whose AI queue the function is added
/// @param sndName C_SFX instance name
func void AI_Snd_Play(var C_NPC npc, var string sndName) {};

/// Plays a sound at the position of the npc (queued)
///
/// @param npc instance of the NPC to whose AI queue the function is added
/// @param origin instance of the NPC whose position the sound is played at
/// @param sndName C_SFX instance name
func void AI_Snd_Play3D(var C_NPC npc, var C_NPC origin, var string sndName) {};

/// Makes NPC stand up from a sitting or lying position
///
/// @param npc instance of the NPC
func void AI_StandUp(var C_NPC npc) {};


/// Makes NPC stand up from a sitting or lying position without playing transition animations
///
/// @param npc instance of the NPC
func void AI_StandUpQuick(var C_NPC npc) {};

/// Puts the NPC into the specified AI state (ZS_*)
///
/// @param npc instance of the NPC
/// @param state function representing the AI state (ZS_*)
/// @param statebehaviour `0` to end the current state immediately, `1` to finish it properly
/// @param wpname name of the waypoint to do the action at
func void AI_StartState(var C_NPC npc, var func state, var int statebehaviour, var string wpname) {};

/// Makes the NPC stop aiming at the target
///
/// @param npc instance of the NPC
func void AI_StopAim(var C_NPC npc) {};

/// Makes npc stop looking at a target and returns to the default forward gaze
///
/// @param npc instance of the NPC
func void AI_StopLookAt(var C_NPC npc) {};

/// Makes the NPC stop pointing at the target
///
/// @param npc instance of the NPC
func void AI_StopPointAt(var C_NPC npc) {};

/// Exits the dialog window of the NPC
///
/// @param npc instance of the NPC
func void AI_StopProcessInfos(var C_NPC npc) {};

/// The NPC goes to the specified item and takes it
///
/// @param npc instance of the NPC
/// @param itm instance of the item
func void AI_TakeItem(var C_NPC npc, var C_ITEM itm) {};

/// [deprecated] Relic of the mob carrying system
func void AI_TakeMob(var C_NPC npc, var string mobname) {};

/// [deprecated] Relic of the mob carrying system
func void AI_DropMob(var C_NPC npc) {};

/// Teleports the NPC to the specified location
///
/// @param npc instance of the NPC
/// @param waypoint name of the waypoint or object to teleport to
func void AI_Teleport(var C_NPC npc, var string waypoint) {};

/// Makes `slf` turn away from `oth`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_TurnAway(var C_NPC slf, var C_NPC oth) {};

/// Makes `slf` turn torwards `oth`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_TurnToNpc(var C_NPC slf, var C_NPC oth) {};

/// Makes NPC turn to the source of the sound
///
/// @param npc instance of the NPC
func void AI_TurnToSound(var C_NPC npc) {};

/// Unequips the current armor
///
/// @param npc instance of the NPC
func void AI_UnequipArmor(var C_NPC npc) {};

/// Unequips all weapons
///
/// @param npc instance of the NPC
func void AI_UnequipWeapons(var C_NPC npc) {};

/// Makes the NPC use an item to the end of its use state
///
/// @param npc instance of the NPC
/// @param iteminstance name of the item instance
func void AI_UseItem(var C_NPC npc, var int iteminstance) {};

/// Makes the NPC use an item until it reaches the target state
///
/// @param npc instance of the NPC
/// @param iteminstance name of the item instance
/// @param state target state (1 for S1 etc. -1 to end the action)
func void AI_UseItemToState(var C_NPC npc, var int iteminstance, var int state) {};

/// Uses an intetactive object with the specified schema name until it reaches the target state
/// If the target state is already present, the NPC will move to the MOB but do nothing
///
/// @param npc instance of the NPC
/// @param schemename name of the schema (e.g. `BENCH`)
/// @param targetstate target state  (1 for S1 etc. -1 to end the action)
/// @return TRUE if the mob was used, FALSE otherwise
func int AI_UseMob(var C_NPC npc, var string schemename, var int targetstate) {};

/// Makes NPC wait for a specified number of seconds
///
/// @param npc instance of the NPC
/// @param timesec float number of seconds to wait
func void AI_Wait(var C_NPC npc, var float timesec) {};

/// Makes NPC wait for a specified number of milliseconds
///
/// @param npc instance of the NPC
/// @param timems number of milliseconds to wait
func void AI_WaitMS(var C_NPC npc, var int timems) {};

/// Makes `slf` wait until `oth` finishes its current AI command (does not work with AI overlays)
///
/// @param slf instance of the NPC
/// @param other instance of the other NPC
func void AI_WaitTillEnd(var C_NPC slf, var C_NPC oth) {};

/// TODO: Quickly turns to the other NPC
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
func void AI_WhirlAround(var C_NPC slf, var C_NPC oth) {};

/// TODO: Quickly turns to the source of a stimulus
///
/// @param npc instance of the NPC
func void AI_WhirlAroundToSource(var C_NPC npc) {};

/// Concatenates two strings and returns the new string
/// 
/// @param str1 first string
/// @param str2 second string
/// @return concatenated string
func string ConcatStrings(var string str1, var string str2) {};

/// Adds the item to the NPC's inventory
///
/// @param npc instance of the NPC
/// @param itm instance name of the item
func void CreateInvItem(var C_NPC npc, var int itm) {};

/// Adds the specified number of items to the NPC's inventory
///
/// @param npc instance of the NPC
/// @param itm instance name of the item
/// @param ammount number of items to create
func void CreateInvItems(var C_NPC npc, var int itm, var int ammount) {};


/// Creates and equips the item to the NPC
///
/// @param npc instance of the NPC
/// @param itm instance name of the item
func void EquipItem(var C_NPC npc, var int itm) {};

/// Creates a new instance of the document manager and returns its ID.
///
/// @return the ID of the document manager instance
func int Doc_Create() {};

/// Create a new instance of the document manager with the arrow showing players position on the map and returns its ID.
///
/// @return the ID of the document manager instance.
func int Doc_CreateMap() {};

/// Prints a line of `text` onto the document with `docID`, onto the `page`.
/// Does not line break
/// 
/// @param docID document manager ID
/// @param page page index
/// @param text text to be printed
func void Doc_PrintLine(var int docID, var int page, var string text) {};

/// Prints a line of `text` onto the document with `docID`, onto the `page`. The `text` is automatically split into multiple lines
/// 
/// @param docID document manager ID
/// @param page page index
/// @param text text to be printed
func void Doc_PrintLines(var int docID, var int page, var string text) {};

/// Sets a `font` to be used on a `page` in a document with `docID`. Can be called multiple times to display different lines with different fonts.
///
/// @param docID document manager ID
/// @param page page index
/// @param font font to be used
func void Doc_SetFont(var int docID, var int page, var string font) {};

/// Sets the number of pages `numOfPages` of the document.
///
/// @param docID document manager ID
/// @param numOfPages number of pages
func void Doc_SetPages(var int docID, var int numOfPages) {};

/// Set `page` to have `texture` as a background with `scale`. 
///
/// @param docID document manager ID
/// @param page page index, if set to `-1`, settings are applied to all pages
/// @param texture texture of the background
/// @param scale scale of the texture, if set to 1, there will be no resizing
func void Doc_SetPage(var int docID, var int page, var string texture, var int scale) {};

/// Set a world level to a map.
///
/// @param docID document manager ID
/// @param level name of the ZEN file
func void Doc_SetLevel(var int docID, var string level) {};

/// Sets the map coordinates. 
/// 
/// @param docID document manager ID
/// @param left left
/// @param top top
/// @param right top
/// @param bottom bottom
func void Doc_SetLevelCoords(var int docID, var int left, var int top, var int right, var int bottom) {};

/// Sets text margins of the page
///
/// @param docID document manager ID
/// @param page page index, if set to `-1`, settings are applied to all pages
/// @param left left margin
/// @param top top margin
/// @param right right margin
/// @param bottom bottom margin
/// @param pixels `TRUE` to use pixels, `FALSE` to use virtual coordinates
func void Doc_SetMargins(var int docID,
                         var int page,
                         var int left,
                         var int top,
                         var int right,
                         var int bottom,
                         var int pixels) {};

/// Display the document using the document manager ID
///
/// @param docID document manager ID
func void Doc_Show(var int docID) {};



/// [deprecated]
func void Doc_Open (var string Texture) {};

/// [deprecated]
func void Doc_Font(var string Font) {};

/// [deprecated]
func void Doc_Print (var string Text) {};

/// [deprecated]
func void Doc_MapCoordinates(var string s0,
                             var float r1,
                             var float r2,
                             var float r3,
                             var float r4,
                             var float r5,
                             var float r6,
                             var float r7,
                             var float r8) {};

/// Exits the game
func void ExitGame() {};

/// Exits the current session to the main menu
func void ExitSession() {};

/// Converts a float to an int (cuts off the decimal part)
///
/// @param x float number to convert
/// @return converted integer
func int FloatToInt(var float x) {};

/// Converts a float to a string with 6 decimal places
///
/// @param x float number to convert
/// @return converted string
func string FloatToString(var float x) {};

/// [deprecated]
func void Game_InitEnglish() {};

/// [deprecated] 
func void Game_InitEngIntl() {};

/// [deprecated]
func void Game_InitGerman() {};

/// [deprecated] Relic of the cutscene system
func int Hlp_CutscenePlayed(var string csname) {};

/// Returns the internal ID of an instance, usefull for comparison
///
/// @param inst any instance
/// @return internal ID of the instance
func int Hlp_GetInstanceID(var instance inst) {};

/// Finds an NPC object by its instance name
///
/// @param instancename instance name of the NPC
/// @return link to NPC object
func C_NPC Hlp_GetNpc(var int instancename) {};

/// Checks if item object is a specified instance
///
/// @param itm C_ITEM instance of the item
/// @param instancename instance name of the item
/// @return TRUE if the item is the specified instance, FALSE otherwise
func int Hlp_IsItem(var C_ITEM itm, var int instancename) {};

/// Checks if item is in the game world
///
/// @param itm instance of the item
/// @return TRUE if the item is in the game world, FALSE otherwise
func int Hlp_IsValidItem(var C_ITEM itm) {};

/// Checks if the NPC exists in the game world
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC exists, FALSE otherwise
func int Hlp_IsValidNpc(var C_NPC npc) {};

/// Generates a random value
///
/// @param bound maximum value
/// @return random value form 0 to bound
func int Hlp_Random(var int bound) {};

/// Compares two strings (not case-sensitive)
///
/// @param s1 first string
/// @param s2 second string
/// @return TRUE if the strings are equal, FALSE otherwise
func int Hlp_StrCmp(var string s1, var string s2) {};

/// Checks if the player finished the dialog
///
/// @return TRUE if the player finished the dialog, FALSE otherwise
func int InfoManager_HasFinished() {};

/// Adds a dialog choice to the specified C_INFO instance
///
/// @param dialog dialog instance
/// @param text description of the choice
/// @param fnc function to execute if the choice is selected
func void Info_AddChoice(var C_INFO dialog, var string text, var func fnc) {};

/// Clears the choices of the specified C_INFO instance
///
/// @param dialog dialog instance
func void Info_ClearChoices(var C_INFO dialog) {};

/// Converts an integer to a float
///
/// @param x number to convert
/// @return converted float
func float IntToFloat(var int x) {};

/// Converts an int to a string
///
/// @param x number to convert
/// @return converted string
func string IntToString(var int x) {};

/// Dipslays a new chapter window on the screen
///
/// @param chapter upper text (chapter number)
/// @param text lower text (chapter title)
/// @param texture back texture
/// @param sound sound to play
/// @param waittime apperance time in milliseconds
func void IntroduceChapter(var string chapter, var string text, var string texture, var string sound, var int waittime) {};

/// Creates a new log topic with the name `topicName` under the section `logSection`
/// 
/// @param topicName unique string used to identify and name the topic
/// @param logSection [LOG_MISSION, LOG_NOTE] indicates in which section to create the topic in
func void Log_CreateTopic(var string topicName, var int logSection) {};

/// Creates a new log topic with the name `topicName` under the section `logSection`
/// 
/// @param topicName unique string used to identify and name the topic
/// @param logSection [LOG_MISSION, LOG_NOTE] indicates in which section to create the topic in
func void Log_AddEntry(var string topicName, var string entry) {};

/// Changes the status of the topic with the name `topicName`
///
/// @param topicName unique string used to identify and name the topic
/// @param status [LOG_RUNNING, LOG_SUCCESS, LOG_FAILED, LOG_OBSOLETE] the status to be set
func void Log_SetTopicStatus(var string topicName, var int status) {};

/// Apply an animation overlay with `overlay_name` for the specified `npc`
/// 
/// @param npc NPC to apply the overlay to
/// @param overlay_name name of the animation overlay
func void Mdl_ApplyOverlayMDS(var c_npc npc, var string overlay_name) {};

/// Apply an animation overlay with `overlay_name` for the specified `npc` for `duration` milliseconds
///
/// @param npc NPC to apply the overlay to
/// @param overlay_name name of the animation overlay
/// @param duration overlay duration in milliseconds
func void Mdl_ApplyOverlayMDSTimed(var c_npc npc, var string overlay_name, var float duration) {};

/// Remove the animation overlay `overlay_name` from specified `npc` 
/// 
/// @param npc NPC to remove the overlay from
/// @param overlay_name name of the animation overlay
func void Mdl_RemoveOverlayMDS(var c_npc npc, var string overlay_name) {};

/// Assign a random animation `ani2` to random animation list of animation `ani1`
///
/// @param npc NPC owning the animation
/// @param ani1 the animation to assign random animation to
/// @param ani2 animation to be assigned
func void Mdl_ApplyRandomAni(var c_npc npc, var string ani1, var string ani2) {};

/// Sets the random animation frequency for animation `ani1`
///
/// @param npc NPC owning the animation
/// @param ani1 the animation to set the random frequency
/// @param frequency number of seconds between random animations
func void Mdl_ApplyRandomAniFreq(var c_npc npc, var string ani1, var float frequency) {};

/// Set the procedural model fatness
///
/// @param npc NPC to apply the fatness to 
/// @param fatness fatness value
func void Mdl_SetModelFatness(var c_npc npc, var float fatness) {};

/// Set model scale per axis
///
/// @param npc NPC to apply the scale to 
/// @param x scale along the x axis, 1.0 = 100%, 1.5 = 150%, 0.9 = 90% 
/// @param y scale along the y axis, 1.0 = 100%, 1.5 = 150%, 0.9 = 90% 
/// @param z scale along the z axis, 1.0 = 100%, 1.5 = 150%, 0.9 = 90% 
func void Mdl_SetModelScale(var c_npc npc, var float x, var float y, var float z) {};

/// Sets up the visual of an NPC
///
/// @param npc NPC to be affected
/// @param body_mesh mesh to be used as the body e.g. `HUN_BODY_NAKED0`
/// @param body_tex body texture assigned to this body mesh
/// @param skin body texture variant
/// @param head_mesh head mesh
/// @param head_tex head texture
/// @param teeth_tex teeth texture
/// @param armor_inst armor (C_ITEM instance) to be equipped or `-1` for no armor 
func void Mdl_SetVisualBody(var instance npc,
                            var string body_mesh,
                            var int body_tex,
                            var int skin,
                            var string head_mesh,
                            var int head_tex,
                            var int teeth_tex,
                            var int armor_inst       ) {};

/// Set the animation set (also dictates models you can set using the `Mdl_SetVisualBody`)
///
/// @param npc NPC to apply the animation set to 
/// @param animation_set name of the MDS file that contains the animation set
func void Mdl_SetVisual(var instance npc, var string animation_set) {};

/// Start a face animation
///
/// @param npc NPC to apply the animation to 
/// @param name animation name
/// @param intensity intensity of the animation 0.0 to 1.0
/// @param holdtime how long should the animation be held for `-2` will use the MMS defined value, '-1' will make the hold time infinite
func void Mdl_StartFaceAni(var c_npc npc,
                           var string name,
                           var float intensity,
                           var float holdtime) {};

/// Start a random face animation
///
/// @param npc NPC to apply the animation to 
/// @param name animation name
/// @param timemin minimum time after which the ani should be started (in seconds)
/// @param timeminvar minimum boundary variation (in seconds)
/// @param timemax maximum time after which the ani should be started (in seconds)
/// @param timemaxvar maximum boundary variation (in seconds)
/// @param probmin probability (0.0 to 1.0) to choose the lower boundary time
func void Mdl_ApplyRandomFaceAni(var c_npc npc,
                                 var string name,
                                 var float timemin,
                                 var float timeminvar,
                                 var float timemax,
                                 var float timemaxvar,
                                 var float probmin) {};

/// [deprecated] Relic of the old mission system
func void Mis_AddMissionEntry(var instance n0, var string s1) {};

/// [deprecated] Relic of the old mission system
func int Mis_GetStatus(var int missionname) {};

/// [deprecated] Relic of the old mission system
func int Mis_OnTime(var int missionname) {};

/// [deprecated] Relic of the old mission system
func void Mis_RemoveMission(var instance n0) {};

/// [deprecated] Relic of the old mission system
func void Mis_SetStatus(var int missionname, var int newstatus) {};

/// Creates a specified number of items in a oCMobContainer
///
/// @param mobname name of the oCMobContainer
/// @param iteminstance instance of the item
/// @param amount number of items to create
func void Mob_CreateItems(var string mobname, var int iteminstance, var int amount) {};

/// Checks if a oCMobContainer has a specified number of items
///
/// @param mobname name of the oCMobContainer
/// @param iteminstance instance of the item
/// @return number of these items in the container
func int Mob_HasItems(var string mobname, var int iteminstance) {};

/// TODO: Checks if NPC1 can see an item
///
/// @param npc1 C_NPC instance of the first NPC
/// @param item C_ITEM instance of the item
/// @return int 1 if can see, 0 if not
func int Npc_CanSeeItem(var C_NPC npc1, var C_ITEM item) {};

/// Checks if NPC1 can see NPC2
///
/// @param npc1 C_NPC instance of the first NPC
/// @param npc2 C_NPC instance of the second NPC
/// @return int 1 if can see, 0 if not
func int Npc_CanSeeNpc(var C_NPC npc1, var C_NPC npc2) {};

/// TODO: Checks if NPC can see another NPC without considering angle (line of sight check)
///
/// @param self instance of the NPC
/// @param other C_NPC instance of the other NPC
/// @return int 1 if can see, 0 if not
func int Npc_CanSeeNpcFreeLOS(var C_NPC self, var C_NPC other) {};

/// TODO: Checks if NPC can see the source of a sound
///
/// @param self instance of the NPC
/// @return int 1 if can see, 0 if not
func int Npc_CanSeeSource(var C_NPC self) {};

/// Changes the value of an attribute for the NPC
///
/// @param self instance of the NPC
/// @param atr int attribute to change
/// @param value int value to change by
func void Npc_ChangeAttribute(var C_NPC self, var int atr, var int value) {};

/// [deprecated] Relic of the old mission system
func int Npc_CheckAvailableMission(var C_NPC npc, var int missionstate, var int important) {};

/// [deprecated] Relic of the old mission system
func int Npc_CheckOfferMission(var C_NPC npc, var int important) {};

/// [deprecated] Relic of the old mission system
func int Npc_CheckRunningMission(var C_NPC npc, var int important) {};

/// Checks if the NPC has valid information (C_INFO) for the player
///
/// @param npc instance of the NPC
/// @param important 1 to check for important information, 0 for unimportant
/// @return TRUE if the NPC has information, FALSE otherwise
func int Npc_CheckInfo(var C_NPC npc, var int important) {};

/// Checks if the NPC has valid information (C_INFO) for the player, and if so, plays them
///
/// @param npc instance of the NPC
/// @param important 1 to check for important information, 0 for unimportant
/// @return TRUE if the NPC has information, FALSE otherwise
func int NPC_GiveInfo(var C_NPC npc, var int important) {};

/// Checks if the NPC knows the specified C_INFO
///
/// @param npc instance of the NPC
/// @param infoinstance C_INFO instance name
/// @return TRUE if the NPC knows the info, FALSE otherwise
func int Npc_KnowsInfo(var C_NPC npc, var int infoinstance) {};

/// Clears the AI queue of the NPC
///
/// @param npc instance of the NPC
func void Npc_ClearAIQueue(var C_NPC npc) {};

/// Clears the NPC's inventory, leaves only equipped and mission items
///
/// @param npc instance of the NPC
func void Npc_ClearInventory(var C_NPC npc) {};

/// TODO: Assigns a spell to the NPC but it cannot be used yet (appears grayed out in the selection circle)
///
/// @param self instance of the NPC
/// @param spellnr int spell number
func void Npc_CreateSpell(var C_NPC self, var int spellnr) {};

/// Checks if the NPC has a specified spell in inventory
///
/// @param npc instance of the NPC
/// @param spellid ID of the spell
/// @return TRUE if the NPC has the spell, FALSE otherwise
func int Npc_HasSpell(var C_NPC npc, var int spellid) {};

/// Exchanges multiple daily routines for the NPC
///
/// @param self instance of the NPC
/// @param routinename string name of the routine
func void Npc_ExchangeRoutine(var C_NPC self, var string routinename) {};

/// Returns the active spell for the NPC (self or other)
///
/// @param npc instance of the NPC
/// @return spell ID, -1 if no active spell
func int Npc_GetActiveSpell(var C_NPC npc) {};

/// Gets the category/type of the spell that the NPC currently has active
///
/// @param npc instance of the NPC to check
/// @return category ID of the currently active spell
func int Npc_GetActiveSpellCat(var C_NPC npc) {};

/// Checks if the spell currently active on the NPC's hand is from a scroll
///
/// @param npc instance of the NPC to check
/// @return TRUE if active spell is from a scroll, FALSE otherwise
func int Npc_GetActiveSpellIsScroll(var C_NPC npc) {};

/// [deprecated] Not used in the original scripts, gets the level of the spell currently active on the NPC's hand
/// although it is unknown what 'level' means
///
/// @param npc instance of the NPC to check
/// @return level of the active spell
func int Npc_GetActiveSpellLevel(var C_NPC npc) {};

/// Sets the instance to which the NPC transforms into, durring the transformation spell
///
/// @param npc instance of the NPC
/// @param instancename name of the instance the NPC transforms into
/// @return nothing, external is wrongly defined as int
func int Npc_SetActiveSpellInfo(var C_NPC npc, var int instancename) {};

/// Gets the attitude of the `slf` towards the `oth`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
/// @return attitude value as `ATT_` constants
func int Npc_GetAttitude(var C_NPC slf, var C_NPC oth) {};

/// Gets the body state of the NPC (returns BS_ constants)
///
/// @param npc instance of the NPC
/// @return current body state
func int Npc_GetBodyState(var C_NPC npc) {};

/// Gets the number of NPCs with the same guild as `npc` within `PERC_ASSESSENEMY` range
///
/// @param npc instance of the NPC
/// @return number of NPCs with the same guild within range
func int Npc_GetComrades(var C_NPC npc) {};

/// TODO: Gets the schema name of the MOB detected by the NPC
///
/// @param self instance of the NPC
/// @return string schema name
func string Npc_GetDetectedMob(var C_NPC self) {};

/// Gets the distance between the NPC and an item (in cm)
///
/// @param npc instance of the NPC
/// @param item C_ITEM instance of the item
/// @return int distance in cm
func int Npc_GetDistToItem(var C_NPC npc, var C_ITEM item) {};

/// Gets the distance between two NPCs (in cm)
///
/// @param npc1 C_NPC instance of the first NPC
/// @param npc2 C_NPC instance of the second NPC
/// @return int distance in cm
func int Npc_GetDistToNpc(var C_NPC npc1, var C_NPC npc2) {};

/// TODO: Gets the distance between the NPC and the player (in cm)
///
/// @param npc1 instance of the NPC
/// @return int distance in cm
func int Npc_GetDistToPlayer(var C_NPC npc1) {};

/// Gets the distance between the NPC and a waypoint (in cm)
///
/// @param self instance of the NPC
/// @param wpname string name of the waypoint
/// @return int distance in cm
func int Npc_GetDistToWP(var C_NPC self, var string wpname) {};

/// Gets the equipped armor of the NPC
///
/// @param npc instance of the NPC
/// @return C_ITEM instance of the equipped armor, NULL if no armor
func C_ITEM Npc_GetEquippedArmor(var C_NPC npc) {};

/// Gets the equipped melee weapon of the NPC
///
/// @param npc instance of the NPC
/// @return C_ITEM instance of the equipped melee weapon, NULL if no weapon
func C_ITEM Npc_GetEquippedMeleeWeapon(var C_NPC npc) {};

/// Gets the equipped ranged weapon of the NPC
///
/// @param npc instance of the NPC
/// @return C_ITEM instance of the equipped ranged weapon, NULL if no weapon
func C_ITEM Npc_GetEquippedRangedWeapon(var C_NPC npc) {};

/// Gets the guild-based attitude between two NPCs based on their guild memberships.
/// This represents how members of different guilds feel about each other.
///
/// @param slf instance of the NPC whose guild attitude should be checked
/// @param oth second NPC to check attitude against
/// @return attitude value between the guilds of the two NPCs
func int Npc_GetGuildAttitude(var C_NPC slf, var C_NPC oth) {};

/// TODO: Gets the height difference between the NPC and an item (in cm)
///
/// @param n0 instance of the NPC
/// @param n1 instance of the item
/// @return int height difference in cm
func int Npc_GetHeightToItem(var instance n0, var instance n1) {};

/// Gets the height difference between two NPCs (in cm)
///
/// @param npc1 C_NPC instance of the first NPC
/// @param npc2 C_NPC instance of the second NPC
/// @return int height difference in cm
func int Npc_GetHeightToNpc(var C_NPC npc1, var C_NPC npc2) {};

/// Gets the inventory item of the NPC by item instance
///
/// @param self instance of the NPC
/// @param iteminstance int instance ID of the item
/// @return C_ITEM instance of the item
func C_ITEM Npc_GetInvItem(var C_NPC self, var int iteminstance) {};

/// TODO: Gets the inventory item of the NPC by slot
///
/// @param self instance of the NPC
/// @param category int category of the item
/// @param slotnr int slot number
/// @return int number of items in the slot
func int Npc_GetInvItemBySlot(var C_NPC self, var int category, var int slotnr) {};

/// Gets the category of the last spell that hit/affected this NPC.
///
/// @param npc instance of the NPC to check spell category for
/// @return category ID of the last spell that hit the NPC
func int Npc_GetLastHitSpellCat(var C_NPC npc) {};

/// Gets the ID of the last spell that hit/affected this NPC.
///
/// @param npc instance of the NPC to check spell hits for
/// @return ID of the last spell that hit the NPC, returns spell number that can be matched against spell definitions
func int Npc_GetLastHitSpellID(var C_NPC npc) {};

/// Gets the NPC the `npc` is looking at
///
/// @param npc instance of the NPC
/// @return NPC the `npc` is looking at
func C_NPC Npc_GetLookAtTarget(var C_NPC npc) {};

/// Gets the nearest waypoint to the NPC
///
/// @param npc instance of the NPC
/// @return name of the nearest waypoint
func string Npc_GetNearestWP(var C_NPC npc) {};

/// TODO: Gets the offender of a news event and returns a C_NPC instance
///
/// @param self instance of the NPC
/// @param newsnumber int news number
/// @return C_NPC instance of the offender
func C_NPC Npc_GetNewsOffender(var C_NPC self, var int newsnumber) {};

/// TODO: Gets the victim of a news event and returns a C_NPC instance
///
/// @param self instance of the NPC
/// @param newsnumber int news number
/// @return C_NPC instance of the victim
func C_NPC Npc_GetNewsVictim(var C_NPC self, var int newsnumber) {};

/// TODO: Gets the witness of a news event and returns a C_NPC instance
///
/// @param self instance of the NPC
/// @param newsnumber int news number
/// @return C_NPC instance of the witness
func C_NPC Npc_GetNewsWitness(var C_NPC self, var int newsnumber) {};

/// Gets the second nearest waypoint to the NPC
///
/// @param npc instance of the NPC
/// @return name of the second nearest waypoint
func string Npc_GetNextWP(var C_NPC npc) {};

/// TODO: Gets the permanent attitude of the NPC to another NPC
///
/// @param self instance of the NPC
/// @param other C_NPC instance of the other NPC
/// @return int permanent attitude value
func int Npc_GetPermAttitude(var C_NPC self, var C_NPC other) {};

/// Gets the guild assigned to the room (portal) the NPC is in
///
/// @param npc instance of the NPC
/// @return guild assigned to the portal, -1 if no guild
func int Npc_GetPortalGuild(var C_NPC npc) {};

/// Gets the owner of the room (portal) the NPC is in
///
/// @param npc instance of the NPC
/// @return instance of the owner NPC, NULL if no owner
func C_NPC Npc_GetPortalOwner(var C_NPC npc) {};

/// Gets the readied weapon of the NPC
///
/// @param npc instance of the NPC
/// @return C_ITEM instance of the readied weapon, NULL if no weapon
func C_ITEM Npc_GetReadiedWeapon(var C_NPC npc) {};

/// Gets the state time of the NPC
///
/// @param npc instance of the NPC
/// @return state time in seconds
func int Npc_GetStateTime(var C_NPC npc) {};

/// Sets the state time of the NPC
///
/// @param npc instance of the NPC
/// @param timesec new state time in seconds
func void Npc_SetStateTime(var C_NPC npc, var int timesec) {};

/// Gets the talent skill of the NPC (major talent value)
///
/// @param npc instance of the NPC
/// @param talent talent ID (`NPC_TALENT_` constants)
/// @return skill value
func int Npc_GetTalentSkill(var C_NPC npc, var int talent) {};

/// Gets the talent value of the NPC (additional talent value)
///
/// @param npc instance of the NPC
/// @param talent talent ID (`NPC_TALENT_` constants)
/// @return talent value
func int Npc_GetTalentValue(var C_NPC npc, var int talent) {};

/// Sets the talent skill of the NPC (major talent value)
///
/// @param npc instance of the NPC
/// @param talent talent ID (`NPC_TALENT_` constants)
/// @param value new skill value
func void Npc_SetTalentSkill(var C_NPC npc, var int talent, var int value) {};

/// Sets the talent value of the NPC (additional talent value)
///
/// @param npc instance of the NPC
/// @param talent talent ID (`NPC_TALENT_` constants)
/// @param value new talent value
func void Npc_SetTalentValue(var C_NPC npc, var int talent, var int value) {};

/// Checks if the NPC has equiped ranged weapon and ammo to use it
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has ranged weapon with ammo, FALSE otherwise
func int Npc_HasRangedWeaponWithAmmo(var C_NPC npc) {};

/// Checks if the NPC has equiped any weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has equiped any weapon, FALSE otherwise
func int Npc_HasEquippedWeapon(var C_NPC npc) {};

/// Checks if the NPC has equiped melee weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has equiped melee weapon, FALSE otherwise
func int Npc_HasEquippedMeleeWeapon(var C_NPC npc) {};

/// Checks if the NPC has equiped ranged weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has equiped ranged weapon, FALSE otherwise
func int Npc_HasEquippedRangedWeapon(var C_NPC npc) {};

/// Checks if the NPC has equiped armor
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has equiped armor, FALSE otherwise
func int Npc_HasEquippedArmor(var C_NPC npc) {};

/// Checks if the NPC has readied weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has readied weapon, FALSE otherwise
func int Npc_HasReadiedWeapon(var C_NPC npc) {};

/// Checks if the NPC has readied melee weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has readied melee weapon, FALSE otherwise
func int Npc_HasReadiedMeleeWeapon(var C_NPC npc) {};

/// Checks if the NPC has readied ranged weapon
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC has readied ranged weapon, FALSE otherwise
func int Npc_HasReadiedRangedWeapon(var C_NPC npc) {};

/// Checks if NPCs way is blocked (has enough space to move forward)
///
/// @param npc instance of the NPC
/// @return TRUE if the way is blocked, FALSE otherwise
func int Npc_IsWayBlocked(var C_NPC npc) {};

/// [deprecated] Relic of the cutscene system
/// Checks if the NPC is in a cutscene
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC is in a cutscene, FALSE otherwise
func int Npc_IsInCutscene(var C_NPC npc) {};

/// Sets the teleport position for the NPC
///
/// @param self instance of the NPC
func void Npc_SetTeleportPos(var C_NPC self) {};

/// TODO: Sets the temporary attitude of the NPC to another NPC
///
/// @param self instance of the NPC
/// @param att int attitude value
func void Npc_SetTempAttitude(var C_NPC self, var int att) {};

/// Sets the NPC to fight mode with the specified weapon (weapon is created)
///
/// @param npc instance of the NPC
/// @param weapon instance name of the weapon
func void Npc_SetToFightMode(var C_NPC npc, var int weapon) {};

/// Sets the NPC to fist fight mode (no weapon) e.g. for monsters
///
/// @param npc instance of the NPC
func void Npc_SetToFistMode(var C_NPC npc) {};

/// Checks if `slf` and friends (we) are stronger than `oth` and friends (enemy)
/// Calculeted based on the following formula:
/// `enemiesLevel >= 2*weLevel`
///
/// @param slf instance of the NPC
/// @param oth instance of the other NPC
/// @return TRUE if we are stronger, FALSE otherwise
func int Npc_AreWeStronger(var C_NPC slf, var C_NPC oth) {};

/// Checks if the NPC is currently talking
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC is talking, FALSE otherwise
func int Npc_IsVoiceActive(var C_NPC npc) {};

/// Checks if the NPC has a specified body flag
///
/// @param npc instance of the NPC
/// @param flag body flag (`BS_FLAG_` constants)
/// @return TRUE if the NPC has the flag, FALSE otherwise
func int Npc_HasBodyFlag(var C_NPC npc, var int flag) {};

/// Sets the current target for the NPC
///
/// @param npc instance of the NPC
/// @param target instance of the new target
func void Npc_SetTarget(var C_NPC npc, var C_NPC target) {};

/// Sets global `other` to the target of the NPC
///
/// @param npc instance of the NPC
/// @return TRUE if the target is set successfully, FALSE otherwise
func int Npc_GetTarget(var C_NPC npc) {};

/// Searches for a target for the NPC. If a target is found, it is adopted as the internal target and written to 'other' global variable.
///
/// @param npc instance of the NPC
/// @return TRUE if the target is found, FALSE otherwise
func int Npc_GetNextTarget(var C_NPC npc) {};

/// Checks if target is available for the NPC, if so, it is adopted as the internal target.
///
/// @param npc instance of the NPC
/// @return TRUE if the target is available, FALSE otherwise
func int Npc_IsNextTargetAvailable(var C_NPC npc) {};

/// Sets the true guild of the NPC
///
/// @param npc instance of the NPC
/// @param guild guild ID
/// @return nothing, external is wrongly defined as int
func int Npc_SetTrueGuild(var C_NPC npc, var int guild) {};

/// Gets the true guild of the NPC
///
/// @param npc instance of the NPC
/// @return true guild ID
func int Npc_GetTrueGuild(var C_NPC npc) {};

/// TODO: Starts item react modules for the NPC
///
/// @param self instance of the NPC
/// @param other C_NPC instance of the other NPC
/// @param item C_ITEM instance of the item
/// @return int result
func int Npc_StartItemReactModules(var C_NPC self, var C_NPC other, var C_ITEM item) {};

/// Checks if the NPC is on the specified freepoint
///
/// @param npc instance of the NPC
/// @param fpname name of the freepoint (could be only the middle part of the name: `FP_` + `fpname` + `_01`)
func int Npc_IsOnFP(var C_NPC npc, var string fpname) {};

/// Makes the NPC play the specified animation
///
/// @param npc instance of the NPC
/// @param aniname name of the animation UPPERCASE
func void Npc_PlayAni(var C_NPC npc, var string aniname) {};

/// Makes the NPC stop the specified animation
///
/// @param npc instance of the NPC
/// @param aniname name of the animation UPPERCASE
func void Npc_StopAni(var C_NPC npc, var string aniname) {};

/// TODO: Checks if the NPC was in the specified state
///
/// @param self instance of the NPC
/// @param state func state function
/// @return int 1 if true, 0 if not
func int Npc_WasInState(var C_NPC self, var func state) {};

/// Checks if the player was in the room (portal) of the NPC before the last room change
///
/// @param npc instance of the NPC
/// @return TRUE if the player was in the room assigned to the NPC, FALSE otherwise
func int Npc_WasPlayerInMyRoom(var C_NPC npc) {};

/// Checks if the NPC is in the room (portal) assigned to the player
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC is in the room assigned to the player, FALSE otherwise
func int Npc_IsInPlayersRoom(var C_NPC npc) {};

/// Checks if the Player is in the room (portal) assigned to the NPC
///
/// @param npc instance of the NPC
/// @return TRUE if the player is in the room assigned to the NPC, FALSE otherwise
func int Npc_IsPlayerInMyRoom(var C_NPC npc) {};

/// Checks if the NPC is drawing a weapon or spell, but by the `oCMsgWeapon` and `oCMsgMagic` events. Not sure if it works
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC is drawing a weapon, FALSE otherwise
func int Npc_IsDrawingWeapon(var C_NPC npc) {};

/// Checks if the NPC is drawing a spell, but by the `oCMsgMagic` events. Not sure if it works
///
/// @param npc instance of the NPC
/// @return spell ID if the NPC is drawing a spell, -1 otherwise
func int Npc_IsDrawingSpell(var C_NPC npc) {};

/// Checks if the NPC refuses to talk
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC refuses to talk, FALSE otherwise
func int Npc_RefuseTalk(var C_NPC npc) {};

/// Sets the NPC to refuse to talk for a specified time
///
/// @param npc instance of the NPC
/// @param timesec time in seconds
func void Npc_SetRefuseTalk(var C_NPC npc, var int timesec) {};

/// Checks if the NPC has a specified item in inventory
///
/// @param npc instance of the NPC
/// @param iteminstance instance of the item
/// @return amount of the item in inventory, 0 if not found
func int Npc_HasItems(var C_NPC npc, var int iteminstance) {};

/// [deprecated] Not used in the original scripts, the idea was that it created a news/memory entry that allows NPCs to track and react to witnessed events.
/// NPCs to "remember" and react to events later.
///
/// @param witness instance of the NPC who will receive this memory
/// @param source type of the news/event
/// @param offender instance of the NPC who performed the action
/// @param newsid ID of the event type
/// @param vic instance of the NPC affected by the action (victim)
func void Npc_MemoryEntry(var C_NPC witness, var int source, var C_NPC offender, var int newsid, var C_NPC vic) {};

/// [deprecated] Not used in the original scripts, creates a guild-related news/memory entry that allows NPCs to track and react to witnessed events.
/// Similar to Npc_MemoryEntry() but marks the news as guild-related, meaning it affects
/// guild attitudes and reactions rather than just individual NPCs.
///
/// @param witness instance of the NPC who will receive this memory 
/// @param source type of the news/event
/// @param offender instance of the NPC who performed the action
/// @param newsid ID of the event type
/// @param vic instance of the NPC affected by the action (victim)
func void Npc_MemoryEntryGuild(var C_NPC witness, var int source, var C_NPC offender, var int newsid, var C_NPC vic) {};

/// [deprecated] Not used in the original scripts, checks if NPC has a specific news entry in their memory.
/// @param slf NPC to check
/// @param newsID ID of the news to find
/// @param offender optional (can be NULL) offender to match
/// @param vic optional (can be NULL) victim to match
/// @return news number >0 if found, 0 if not found
func int Npc_HasNews(var C_NPC slf, var int newsID, var C_NPC offender, var C_NPC vic) {};

/// [deprecated] Not used in the original scripts, checks if a specific news entry is gossip (heard from others) vs witnessed.
/// @param npc NPC owning the news
/// @param newsNumber ID number of the news entry to check
/// @return >0 if news is gossip, 0 if directly witnessed
func int Npc_IsNewsGossip(var C_NPC npc, var int newsNumber) {};

/// [deprecated] Not used in the original scripts, gets the NPC who witnessed the specified news event.
/// @param npc NPC owning the news
/// @param newsNumber ID number of the news entry
/// @return C_NPC instance of the witness
func C_NPC Npc_GetNewsWitness(var C_NPC npc, var int newsNumber) {};

/// [deprecated] Not used in the original scripts, gets the victim of the specified news event.
/// @param npc NPC owning the news
/// @param newsNumber ID number of the news entry
/// @return C_NPC instance of the victim
func C_NPC Npc_GetNewsVictim(var C_NPC npc, var int newsNumber) {};

/// [deprecated] Not used in the original scripts, gets the offender from the specified news event.
/// @param npc NPC owning the news
/// @param newsNumber ID number of the news entry
/// @return C_NPC instance of the offender
func C_NPC Npc_GetNewsOffender(var C_NPC npc, var int newsNumber) {};

/// [deprecated] Not used in the original scripts, deletes a specific news entry from an NPC's memory.
/// @param npc NPC whose news entry should be deleted
/// @param newsNumber ID number of the news entry to delete
/// @return TRUE if the news was successfully deleted, FALSE otherwise
func int Npc_DeleteNews(var C_NPC npc, var int newsNumber) {};

/// Checks if `itm` is owned by the NPC
///
/// @param itm instance of the item
/// @param npc instance of the NPC
/// @return TRUE if the item is owned by the NPC, FALSE otherwise
func int Npc_OwnedByNpc(var C_ITEM itm, var C_NPC npc) {};

/// Checks if `itm` is owned by the guild
///
/// @param itm instance of the item
/// @param guild int guild ID
/// @return TRUE if the item is owned by the guild, FALSE otherwise
func int Npc_OwnedByGuild(var C_ITEM itm, var int guild) {};

/// Makes the NPC perceive all objects in the sense range
///
/// @param npc instance of the NPC
func void Npc_PerceiveAll(var C_NPC npc) {};

/// Sets the perception time of the NPC
///
/// @param npc instance of the NPC
/// @param time float time in seconds
func void Npc_SetPercTime(var C_NPC npc, var float time) {};

/// Enables the perception of the NPC
///
/// @param npc instance of the NPC
/// @param percid perception ID
/// @param function function associated with the perception
func void Npc_PercEnable(var C_NPC npc, var int percid, var func function) {};

/// Disables the perception of the NPC
///
/// @param npc instance of the NPC
/// @param percid perception ID
func void Npc_PercDisable(var C_NPC npc, var int percid) {};

/// Sends a passive perception to the `slf`
///
/// @param slf instance of the NPC
/// @param percid perception ID
/// @param oth instance of the other NPC
/// @param vic instance of the victim NPC
func void Npc_SendPassivePerc(var C_NPC slf, var int percid, var C_NPC oth, var C_NPC vic) {};

/// Sends a single perception to the `target` (executes the perception function)
///
/// @param sender instance of the other NPC
/// @param target instance of the NPC
/// @param percid perception ID
func void Npc_SendSinglePerc(var C_NPC sender, var C_NPC target, var int percid) {};

/// Checks if the NPC is dead
///
/// @param npc instance of the NPC
/// @return TRUE if the NPC is dead, FALSE otherwise
func int Npc_IsDead(var C_NPC npc) {};

/// Sets the range of passive perceptions for all NPCs
///
/// @param percid perception ID
/// @param range range in cm
func void Perc_SetRange(var int percid, var int range) {};

/// Plays a video
///
/// @param filename name of the video file
/// @return TRUE if the video was played successfully, FALSE otherwise
func int PlayVideo(var string filename) {};

/// Plays a video and allows to exit the session
///
/// @param filename name of the video file
/// @param screenblend if TRUE, the screen will be blended out before the video is played
/// @param exitsession if TRUE, the session will be exited after the video is played
/// @return TRUE if the video was played successfully, FALSE otherwise
func int PlayVideoEx(var string filename, var int screenblend, var int exitsession) {};

/// Prints text at the top of the screen
///
/// @param text text to print
func void Print(var string text) {};

/// Prints debug text to zSpy if "toogle debug" is enabled
///
/// @param text debug text
func void PrintDebug(var string text) {};

/// Prints text to zSpy on a specific debug channel (if channel is enabled)
///
/// @param channel channel number
/// @param text debug text
func void PrintDebugCh(var int channel, var string text) {};

/// TODO: Prints text for the focused debug instance
///
/// @param text string text to print
func void PrintDebugInst(var string text) {};

/// TODO: Prints text for a specific channel of the focused debug instance
///
/// @param ch int channel number
/// @param text string text to print
func void PrintDebugInstCh(var int ch, var string text) {};

/// Displays a text in a dialog box
///
/// @param window id of a dialog window
/// @param text displayed text
/// @param posx x position as percent (-1 to center)
/// @param posy y position as percent (-1 to center)
/// @param font font to use
/// @param timesec display duration in seconds
/// @return TRUE if the dialog was displayed successfully, FALSE otherwise
func int PrintDialog(var int window, var string text, var int posx, var int posy, var string font, var int timesec) {};

/// TODO: Prints a selection of texts to the screen
///
/// @param s0 string first text
/// @param s1 string second text
/// @param s2 string third text
/// @param s3 string fourth text
/// @param s4 string fifth text
func void PrintMulti(var string s0, var string s1, var string s2, var string s3, var string s4) {};

/// Prints a message to the screen with specified font and position
///
/// @param text message to print
/// @param posx x position as percent (-1 to center)
/// @param posy y position as percent (-1 to center)
/// @param font font to use
/// @param timesec display duration in seconds
func void PrintScreen(var string text, var int posx, var int posy, var string font, var int timesec) {};

/// Changes the current daily routine of the `self` to the specified new routine
///
/// @param oldroutine name of the old routine (have to be active)
/// @param newroutine name of the new routine
func void Rtn_Exchange(var string oldroutine, var string newroutine) {};

/// deprecated
func void SetPercentDone(var int percentdone) {};

/// Calculates the distance beetwen the npc and the source of the last played sound
///
/// @param npc instance of the NPC
/// @return distance between the NPC and the source of the last sound in cm
func int Snd_GetDistToSource(var C_NPC npc) {};

/// Check whether the source of the last sound was item and sets the global `item` to the source
///
/// @param npc instance of the NPC
/// @return TRUE if the source was an item, FALSE otherwise
func int Snd_IsSourceItem(var C_NPC npc) {};

/// Check whether the source of the last sound was npc and sets the global `other` to the source
///
/// @param npc instance of the NPC
/// @return TRUE if the source was an NPC, FALSE otherwise
func int Snd_IsSourceNpc(var C_NPC npc) {};

/// Plays a sound
///
/// @param sndName C_SFX instance name
func void Snd_Play(var string sndName) {};

/// Plays a sound at the position of the npc
///
/// @param npc instance of the NPC
/// @param sndName C_SFX instance name
func void Snd_Play3D(var C_NPC npc, var string sndName) {};

/// Sets the NPC daily routine
///
/// @param npc instance of the NPC
/// @param start_h start hour
/// @param stop_h stop hour
/// @param state state function (ZS_*)
/// @param waypoint name of the waypoint
func void TA(var C_NPC npc, var int start_h, var int stop_h, var func state, var string waypoint) {};

/// Sets the NPC daily routine with minute precision
///
/// @param npc instance of the NPC
/// @param start_h start hour
/// @param start_m start minute
/// @param stop_h stop hour
/// @param stop_m stop minute
/// @param state state function (ZS_*)
/// @param waypoint name of the waypoint
func void TA_Min(var C_NPC npc, var int start_h, var int start_m, var int stop_h, var int stop_m, var func state, var string waypoint) {};

/// [deprecated] Relic of the cutscene system
/// Sets a cutscene routine for the NPC
///
/// @param npc instance of the NPC
/// @param csname name of the cutscene
/// @param rolename role of the NPC in the cutscene
func void TA_CS(var C_NPC npc, var string csname, var string rolename) {};

/// [deprecated] Not used in the original scripts, starts a daily routine overlay
///
/// @param npc instance of the NPC
func void TA_BeginOverlay(var C_NPC npc) {};

/// [deprecated] Not used in the original scripts, ends a daily routine overlay
///
/// @param npc instance of the NPC
func void TA_EndOverlay(var C_NPC npc) {};

/// [deprecated] Not used in the original scripts, removes an active daily routine overlay
///
/// @param self instance of the NPC
func void TA_RemoveOverlay(var C_NPC self) {};

/// [deprecated] Relic of the old talent system
func void Tal_Configure(var int i0, var int i1) {};

/// Assigns a room to a guild
///
/// @param room name of the room as defined in the portal
/// @param guild guild ID
func void Wld_AssignRoomToGuild(var string room, var int guild) {};

/// Assigns a room to a specific NPC
///
/// @param room name of the room as defined in the portal
/// @param owner instance of the room owner
func void Wld_AssignRoomToNpc(var string room, var C_NPC owner) {};

/// TODO: Detects an item with the specified flags and initializes the global variable 'item' with the found item
///
/// @param self instance of the NPC
/// @param flags int item flags
/// @return int 1 if item is found, 0 if not
func int Wld_DetectItem(var C_NPC self, var int flags) {};

/// TODO: Detects an NPC based on instance name, guild, and AI state
///
/// @param self instance of the NPC
/// @param instance int instance name of the NPC
/// @param aistate func AI state function
/// @param guild int guild ID
/// @return int 1 if NPC is found, 0 if not
func int Wld_DetectNpc(var C_NPC self, var int instance, var func aistate, var int guild) {};

/// TODO: Extended NPC detection
///
/// @param n0 instance of the first NPC
/// @param i1 int parameter
/// @param f2 func function
/// @param i3 int parameter
/// @param i4 int parameter
/// @return int result
func int Wld_DetectNpcEx(var instance n0, var int i1, var func f2, var int i3, var int i4) {};

/// TODO: Extended NPC detection with additional attributes
///
/// @param n0 instance of the first NPC
/// @param i1 int parameter
/// @param f2 func function
/// @param i3 int parameter
/// @param i4 int parameter
/// @param i5 int additional parameter
/// @return int result
func int Wld_DetectNpcExAtt(var instance n0, var int i1, var func f2, var int i3, var int i4, var int i5) {};

/// Checks if the player is near the NPC
///
/// @param self instance of the NPC
/// @return int 1 if player is near, 0 if not
func int Wld_DetectPlayer(var C_NPC self) {};

/// Exchanges the guild attitude table
///
/// @param tablename name of the new attitude table
func void Wld_ExchangeGuildAttitudes(var string tablename) {};

/// Gets the current day, start day is 0
///
/// @return current day
func int Wld_GetDay() {};

/// Gets the guild of the room (portal) the player was in before the last room change
///
/// @return owner guild ID of the previous room the player was in
func int Wld_GetFormerPlayerPortalGuild() {};

/// Gets the owner of the room (portal) the player was in before the last room change
///
/// @return instance of the room owner of the previous room the player was in, NULL if no owner
func C_NPC Wld_GetFormerPlayerPortalOwner() {};

/// Gets the owner guild of the room (portal) the player is currently in
///
/// @return owner guild ID of the current room the player is in
func int Wld_GetPlayerPortalGuild() {};

/// Gets the owner of the active room (portal) the player is currently in
///
/// @return instance of the room owner of the current room the player is in, NULL if no owner
func C_NPC Wld_GetPlayerPortalOwner() {};

/// Inserts an item into the world at the specified spawn point
///
/// @param iteminstance instance ID of the item
/// @param spawnpoint name of the spawn point (waypoint or object)
func void Wld_InsertItem(var int iteminstance, var string spawnpoint) {};

/// Inserts an NPC into the world at the specified spawn point
///
/// @param npcinstance instance ID of the NPC
/// @param spawnpoint name of the spawn point (waypoint or object)
func void Wld_InsertNpc(var int npcinstance, var string spawnpoint) {};

/// Inserts an NPC into the world and sets a respawn delay, if the NPC dies it will respawn after the specified delay
///
/// @param instancename instance name of the NPC
/// @param spawnpoint name of the spawn point (waypoint or object)
/// @param spawndelay spawn delay in game hours
func void Wld_InsertNpcAndRespawn(var int instancename, var string spawnpoint, var int spawndelay) {};

/// Inserts an `oCMob` with specified visual into the world at the specified spawn point
///
/// @param visual name of the visual (with the extension)
/// @param spawnpoint name of the spawn point (waypoint or object)
func void Wld_InsertObject(var string visual, var string spawnpoint) {};

/// Checks if a free point is available within 20 meters of the NPC and is visible
///
/// @param self instance of the NPC
/// @param fpname string name of the free point
/// @return int 1 if available, 0 if not
func int Wld_IsFPAvailable(var C_NPC self, var string fpname) {};

/// TODO: Checks if a free point is available
///
/// @param n0 instance of the NPC
/// @param s1 string name of the free point
/// @return int 1 if available, 0 if not
func int Wld_IsFpAvailable(var instance n0, var string s1) {};

/// Checks if a MOB is available within 10 meters of the NPC and is unoccupied
///
/// @param self instance of the NPC
/// @param schemename string name of the schema
/// @return int 1 if available, 0 if not
func int Wld_IsMobAvailable(var C_NPC self, var string schemename) {};

/// Checks if the next free point is available and is visible
///
/// @param self instance of the NPC
/// @param fpname string name of the free point
/// @return int 1 if available, 0 if not
func int Wld_IsNextFPAvailable(var C_NPC self, var string fpname) {};

/// TODO: Checks if the next free point is available
///
/// @param n0 instance of the NPC
/// @param s1 string name of the free point
/// @return int 1 if available, 0 if not
func int Wld_IsNextFpAvailable(var instance n0, var string s1) {};

/// Checks if it is raining
///
/// @return TRUE if it is raining, FALSE otherwise
func int Wld_IsRaining() {};

/// Checks if the current world time is between the specified times
///
/// @param hour1 start hour
/// @param min1 start minute
/// @param hour2 end hour
/// @param min2 end minute
/// @return TRUE if the current time is between the specified times, FALSE otherwise
func int Wld_IsTime(var int hour1, var int min1, var int hour2, var int min2) {};

/// Plays a visual effect (VFX)
///
/// @param effect name of the visual effect
/// @param origin instance of the effect origin object
/// @param target instance of the effect target object
/// @param effectlevel level of the effect
/// @param damage damage value
/// @param damagetype type of damage
/// @param isprojectile if TRUE, the effect passes through static objects
func void Wld_PlayEffect(var string effect, var instance origin, var instance target, var int effectlevel, var int damage, var int damagetype, var int isprojectile) {};

/// Stops a visual effect (VFX)
///
/// @param effect name of the visual effect
func void Wld_StopEffect(var string effect) {};

/// Removes a specific item object from the world
///
/// @param itm C_ITEM instance of the item
/// @return TRUE if the item was removed, FALSE otherwise
func int Wld_RemoveItem(var C_ITEM itm) {};

/// Removes an NPC from the game world
///
/// @param instancename instance name of the NPC to remove
func void Wld_RemoveNpc(var int instancename) {};

/// Sends a trigger message to the specified VOB
///
/// @param vobname name of the VOB
func void Wld_SendTrigger(var string vobname) {};

/// Sends an untrigger message to the specified VOB
///
/// @param vobname name of the VOB
func void Wld_SendUntrigger(var string vobname) {};

/// Sets the guild attitude to a specified value
///
/// @param guild1 int ID of the first guild
/// @param attitude int attitude value
/// @param guild2 int ID of the second guild
func void Wld_SetGuildAttitude(var int guild1, var int attitude, var int guild2) {};

/// Sets a daily routine for the object, the Trigger/Untrigger message is sent if it is later than the specified time
///
/// @param hour1 start hour
/// @param min1 start minute
/// @param objname name of the object
/// @param state 1 for Trigger, 0 for Untrigger
func void Wld_SetMobRoutine(var int hour1, var int min1, var string objname, var int state) {};

/// Sets a daily routine for the object, the Trigger/Untrigger message is sent if it is later than the specified time
///
/// @param hour1 start hour
/// @param min1 start minute
/// @param objname name of the object
/// @param state 1 for Trigger, 0 for Untrigger
func void Wld_SetObjectRoutine(var int hour1, var int min1, var string objname, var int state) {};

/// Sets the world time to the specified hour and minute
///
/// @param hour int hour to set
/// @param min int minute to set
func void Wld_SetTime(var int hour, var int min) {};

/// Spawns an NPC within a specified range around `npc`
///
/// @param npc instance of the NPC to spawn around
/// @param instancename instance name of the spawned NPC
/// @param num number of NPCs to spawn
/// @param range spawn range in cm
func void Wld_SpawnNpcRange(var C_NPC npc, var int instancename, var int num, var float range) {};