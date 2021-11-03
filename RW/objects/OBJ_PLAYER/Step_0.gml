
/// @description Void del objeto

#region //Global pause
//if(global.pauser) exit;
#endregion

#region //Scripts (funciones) encargadas de manejar al personaje




SCRP_CALC_MOVEMENT          ();      //Assign the correspond values depending on situation      
SCRP_COLLISIONS             ();      //Core collision of the game
SCRP_DECISION               ();      //Change the state of the player to change the sprite
SCRP_PLAYERIS               ();      //Depending on the decision the sprite will change
//scrp_jump_platform          ();      //How the player can jump trough platforms (obj_platforms)
//scrp_blink                  ();      //Blink effect after taking a damage
//scrp_parallax               (room);  //Parallax of the backgrounds

//scrp_Debug                  ();      //Debug mode




#endregion


