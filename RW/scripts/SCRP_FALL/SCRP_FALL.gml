
 function SCRP_FALL(){
 
 with(OBJ_PLAYER){
	 
  switch(global.val){
	  
	  case 1:
	    image_speed  = 1;
		image_xscale = 1;
		image_index  = 0;
        sprite_index = SPR_PLAYER_JUMP_FALL;
  break;
      case 0:
	    image_speed  = 1;
		image_xscale = -1;
		image_index  = 0;
	    sprite_index = SPR_PLAYER_JUMP_FALL;
  break;
   
  }
 
 }

}