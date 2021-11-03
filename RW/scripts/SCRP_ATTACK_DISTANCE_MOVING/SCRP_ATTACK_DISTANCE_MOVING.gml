
  function SCRP_ATTACK_DISTANCE_MOVING(){
  
  with(OBJ_PLAYER){
	 
  switch(global.val){
	  
	  case 1:
	    image_speed  = 1;
		image_xscale = 1;
        sprite_index = SPR_PLAYER_RANGED_LEGS;
  break;
      case 0:
	    image_speed  = 1;
		image_xscale = -1;
	    sprite_index = SPR_PLAYER_RANGED_LEGS;
  break;
  
  } 
  
 }
 
}