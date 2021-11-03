/// @description Reset animations


   switch(sprite_index){
	   
	   case SPR_PLAYER_RANGED:
	   global.ranged = false;
	   break;
	   
	   case SPR_PLAYER_CROUCH_RANGED:
	   global.ranged_down = false;
	   break;
	   
	   case SPR_PLAYER_ATTACK_0:
	   global.melee = 0;
	   global.melee_moving = false;
	   break;
	   
	   case SPR_PLAYER_ATTACK_1:
	   global.melee = 0;
	   global.melee_moving = false;
	   break;
	   
	   case SPR_PLAYER_ATTACK_2:
	   global.melee = 0;
	   global.melee_moving = false;
	   break;
	   
	   

}
