  function SCRP_MELEE_ATTACK2(){
	  
  with(OBJ_PLAYER){
	
  if(sprite_index != SPR_PLAYER_ATTACK_2){     //Trigger one time per frame this basic attack making the player availabe
  switch(global.val){
	  
	  case 1:
	    image_index  = 0;
	    image_speed  = 1;
		image_xscale = 1;
        sprite_index = SPR_PLAYER_ATTACK_2;
  break;
      case 0:
	    image_index  = 0;
	    image_speed  = 1;
		image_xscale = -1;		        
        sprite_index = SPR_PLAYER_ATTACK_2;
  break;
    
   }
  }  
 }

}