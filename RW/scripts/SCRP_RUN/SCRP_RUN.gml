
  function SCRP_RUN(){
  
  with(OBJ_PLAYER){
	 
  switch(global.val){
	  
	  case 1:
	    image_speed  = 1;
		image_xscale = 1;
        sprite_index = SPR_PLAYER_RUN;
  break;
      case 0:
	    image_speed  = 1;
		image_xscale = -1;
	    sprite_index = SPR_PLAYER_RUN;
  break;
   
  }
 
 }

}