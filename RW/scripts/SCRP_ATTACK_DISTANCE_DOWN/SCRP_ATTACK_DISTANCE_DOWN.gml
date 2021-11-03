
 function SCRP_ATTACK_DISTANCE_DOWN(){
 
 with(OBJ_PLAYER){
	
  if(sprite_index != SPR_PLAYER_CROUCH_RANGED){     //Trigger one time per frame this basic attack making the player availabe
  switch(global.val){
	  
	  case 1:
	    image_index  = 0;
	    image_speed  = 1;
		image_xscale = 1;
        sprite_index = SPR_PLAYER_CROUCH_RANGED;
  break;
      case 0:
	    image_index  = 0;
	    image_speed  = 1;
		image_xscale = -1;		        
        sprite_index = SPR_PLAYER_CROUCH_RANGED;
  break;
    
   }
  }  
 }
}