
/// @description Void del objeto

#region //Global pause
//if(global.pauser) exit;
#endregion

#region //Scripts (funciones) encargadas de manejar al personaje


SCRP_CALC_MOVEMENT          ();      //Assign the correspond values depending on situation      
SCRP_COLLISIONS             ();      //Core collision of the game
SCRP_DECISION               ();      //Change the state of the player to change the sprite
SCRP_PLAYERIS               ();      //Depending on the decision the sprite will change
//scrp_blink                  ();      //Blink effect after taking a damage

//scrp_Debug                  ();      //Debug mode

#endregion


///aqui va el cambio (recordar)

with(aura_id){
x = OBJ_PLAYER.x;
y = OBJ_PLAYER.y;
}