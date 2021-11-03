/// @description Declare Variables

#region //DATA BASE PLAYER

hsp                   = 0;           //Horizontal movement 
vsp                   = 0;           //Vertical movement
grv                   = 0.4;         //Gravity Value (Affects vsp indirectly)
walksp                = 1.5;           //Velocity (How fast hsp will move and affects hsp indirectly)

PlayerStatus          = SCRP_IDLES;  //State (When the game runs this state will execute)
isHurt                = false;       //If she get hurt
isInmune              = false;       //If she is inmune to damage
//PlayerSlide         = 3;           //How long she will slide
//SlideLock           = false;       //Check if she can slide

global.hp             = 100;          //How much hp she will have
global.hp_max         = global.hp; 
global.val            = 1;           //Where is she looking. 1-Right and 0-Left
global.PlayerScore    = 0000000;     //Basic score of Player 
global.DebugSearch    = true;        //Active the debug mode (noramlly to check hitboxes and stuff, check draw event)
global.gamepad_actual = noone;       //This value will contain the gamepad inserted (gamepad support)
global.melee          = false;
global.melee_moving   = false;
global.ranged         = false;       //Hold if she is attacking or not
global.ranged_down    = false;       //Hold if she is attacking downed
global.control_name   = "NOT_INPUT"; //Name of the control, only works for Xbox gamepads (gamepad support)

depth                 = -1000;       //At which position she will displayed on the screen

#endregion

#region                              //Init HUD
SCRP_INIT_CREATE();                  //Will create things like HUD, GamePads check and other stuff
#endregion

sprite_index = SPR_PLAYER_IDLE






